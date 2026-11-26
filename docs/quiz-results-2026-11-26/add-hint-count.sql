-- 馬クイズ：quiz_results への hint_count 列追加マイグレーション
-- 対象：旧版 apply.sql を実行済みで、quiz_results は既にあるが
-- hint_count 列がまだ無い環境。既存データは変更しない（新規列は 0 で埋まる）。
-- 冪等：何度実行しても同じ結果になる。
-- 実行方法：Supabase の SQL Editor に全文を貼って実行。

begin;

alter table public.quiz_results
  add column if not exists hint_count integer not null default 0
  check (hint_count >= 0);

-- ヒント使用回数は出題数を超えない、という整合性チェックを冪等に追加
do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'quiz_results_hint_within_total'
  ) then
    alter table public.quiz_results
      add constraint quiz_results_hint_within_total
      check (hint_count <= total_count);
  end if;
end $$;

commit;
