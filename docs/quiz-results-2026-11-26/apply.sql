-- 馬クイズ：ユーザーごとの成績保存テーブル quiz_results の新設
-- 既存テーブル・既存データには一切触れない（追加のみ）。
-- 実行方法：Supabase の SQL Editor に全文を貼って実行（単一トランザクション想定）。
-- ロールバックは rollback.sql（同フォルダ）。確認用クエリは verify.sql。
-- 注意：旧版の apply.sql を既に実行済みの場合は、このファイルではなく
-- add-hint-count.sql（hint_count 列の追加マイグレーション）を実行すること。

begin;

-- 1. テーブル ---------------------------------------------------------------
create table if not exists public.quiz_results (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users,
  correct_count integer not null check (correct_count >= 0),
  total_count integer not null check (total_count > 0),
  hint_count integer not null default 0 check (hint_count >= 0),
  created_at timestamptz not null default now(),
  check (correct_count <= total_count),
  check (hint_count <= total_count)
);

create index if not exists quiz_results_user_created_idx
  on public.quiz_results (user_id, created_at desc);

-- 2. RLS ---------------------------------------------------------------------
alter table public.quiz_results enable row level security;
revoke all on public.quiz_results from public, anon, authenticated;
grant select, insert on public.quiz_results to authenticated;
grant all on public.quiz_results to service_role;

-- 読み取り：アクティブメンバー全員が全員の成績を読める（メンバー別表示のため）
drop policy if exists quiz_results_member_read on public.quiz_results;
create policy quiz_results_member_read on public.quiz_results for select to authenticated
  using (public.is_active_member());

-- 書き込み：自分の結果だけを記録できる
drop policy if exists quiz_results_own_insert on public.quiz_results;
create policy quiz_results_own_insert on public.quiz_results for insert to authenticated
  with check ((select auth.uid()) = user_id and public.is_active_member());

commit;
