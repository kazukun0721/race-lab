-- quiz_results のロールバック（テーブルごと削除。保存済みの成績も消える）
begin;
drop table if exists public.quiz_results;
commit;
