-- quiz_results 適用後の確認用クエリ（SQL Editor で実行）

-- テーブルが存在すること
select table_name
from information_schema.tables
where table_schema = 'public' and table_name = 'quiz_results';

-- ポリシーが2件あること（member_read / own_insert）
select policyname, cmd
from pg_policies
where schemaname = 'public' and tablename = 'quiz_results'
order by policyname;

-- 保存済み件数（適用直後は 0 件が正常。クイズを1セット終えると増える）
select count(*) as quiz_results_count from public.quiz_results;

-- hint_count 列があること（ヒント集計用。無い場合は add-hint-count.sql を実行）
select column_name, data_type
from information_schema.columns
where table_schema = 'public' and table_name = 'quiz_results'
  and column_name = 'hint_count';
