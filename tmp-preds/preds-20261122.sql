begin;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('08d1762d-4656-53b5-b480-db463343d3c8', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 1, 'production', 0.029724686049416214, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.392、過去3着以内率 -0.300、平均着順比 -0.232。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('11ee362e-5ddf-5408-97f9-0f9cf507f25b', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 2, 'production', 0.012637283832755053, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.091、平均着順比 -0.332、過去3着以内率 -0.219。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9a5c598d-f6ef-5346-a52f-1be2106bc66a', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 3, 'production', 0.016093241951101126, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.040、過去走数 +0.343、平均着順比 -0.280。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b1e8dbc5-e66d-5bc8-9fe3-397270b355a0', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 4, 'production', 0.23681347628573124, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.408、直近3走の着順比 +0.385、過去勝率 +0.197。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('07d7b9da-62f2-5188-80a5-1a342a051972', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 5, 'production', 0.016307213211508673, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.094、平均着順比 -0.307、過去3着以内率 +0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38aa8858-e0ec-5287-b926-0158b14beb40', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 6, 'production', 0.05985719943648457, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.311、過去走数 +0.150、前走距離 -0.137。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('726096e7-ce1a-5f03-b55d-9691d37a0af5', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 7, 'production', 0.22458927668692166, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.678、過去勝率 +0.154、平均着順比 +0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f1da5fc-b20c-5042-9d71-795b0e1d2412', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 8, 'production', 0.16687043626712983, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.222、直近3走の着順比 +0.203、過去走数 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f6c400b5-7eb0-507f-86a8-5f1a43600a0d', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 9, 'production', 0.03998333493045344, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.279、直近3走の着順比 -0.263、過去走数 +0.165。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e777737c-e58a-5220-a4af-64de823d5655', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 10, 'production', 0.04605331769140307, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.315、直近3走の着順比 -0.187、過去走数 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('20d18d5f-c8d7-58aa-8bd1-53483540c972', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 11, 'production', 0.010478285562794724, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.791、平均着順比 -0.433、過去3着以内率 -0.289。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f609425-c347-5a72-8d8e-99d00fbce0a9', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 12, 'production', 0.012266275672470555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.260、過去走数 +0.405、平均着順比 -0.378。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('287df062-eeca-5ad8-b2ec-7ac1eb105e19', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 13, 'production', 0.009513721697502163, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.317、平均着順比 -0.494、過去走数 +0.363。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('209f3eb2-8318-5df1-ab9f-73641a638bb3', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 14, 'production', 0.08638255031739521, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.272、過去3着以内率 -0.258、過去走数 +0.174。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('16210f20-f88d-5c54-9584-7fd39893bbde', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 15, 'production', 0.015563257294828051, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.136、過去走数 +0.350、平均着順比 -0.294。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('79d36a3b-80ed-56c5-a48c-b57de4bf9038', '463fdb6e-214a-4b04-8b0d-fe5d432841d9', 16, 'production', 0.016866443112104404, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.975、過去走数 +0.327、平均着順比 -0.244。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9c90b063-4a37-5d01-9a2a-8452d1910f9c', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 1, 'production', 0.043108123075518104, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.321、直近3走の着順比 -0.210、過去走数 +0.186。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d267da31-8af1-57b4-91ca-bb03fd0f4d80', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 2, 'production', 0.006841350503935105, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.541、過去走数 +0.408、平均着順比 -0.387。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29c36b86-36cc-59d8-93cc-db3c9ef0b2dd', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 3, 'production', 0.07761054673194948, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.312、直近3走の着順比 +0.248、過去走数 +0.107。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d10fc9e4-977a-5eac-abfd-7351d8358c94', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 4, 'production', 0.012190596517984285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.880、平均着順比 -0.303、過去3着以内率 -0.268。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a68af4d4-2777-5924-9fd0-ec87b9b8558a', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 5, 'production', 0.04992839403876966, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.357、過去走数 +0.108、前走距離 -0.071。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('72add40a-4f97-551f-81f1-36ef8f65e1e1', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 6, 'production', 0.18509561773283867, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.388、過去3着以内率 +0.304、過去勝率 +0.154。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9c82adf0-74e1-5001-a82c-1d471d5d01fc', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 7, 'production', 0.028842668235900034, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.401、過去3着以内率 -0.291、平均着順比 -0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b56d7f6b-a597-5c11-b6fc-594a34eb49fa', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 8, 'production', 0.00609631798375259, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.424、平均着順比 -0.405、直近5走の着順比 -0.277。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8e3850d3-c0d9-54b5-9c93-c9dde6bc5524', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 9, 'production', 0.00884409521691514, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.885、平均着順比 -0.430、過去3着以内率 -0.287。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('66f41fdd-c31d-58b7-9a72-fe47341848d2', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 10, 'production', 0.060581433050436076, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.337、直近3走の着順比 +0.131、過去走数 +0.106。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5491d5e8-9f0b-53fd-8aa9-3b18e87ed900', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 11, 'production', 0.025504930144285346, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.509、過去3着以内率 -0.287、過去走数 +0.219。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('76e9216f-5ec9-58d7-b84e-f9beb5b25161', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 12, 'production', 0.3839990266744786, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.929、過去3着以内率 +0.342、過去勝率 +0.208。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3498225a-3610-515a-bb9c-c8008e5222db', '2624151b-5e99-46a5-b7c6-4869c4844e7a', 13, 'production', 0.111356900093237, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.321、過去走数 +0.168、前走からの日数 -0.091。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0de2e276-fd13-5044-ae55-2681fa41a8aa', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 1, 'production', 0.05951410521674071, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、過去3着以内率 -0.293、平均着順比 +0.127。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('282f010e-35af-53e1-b932-9eab6f3c3a70', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 2, 'production', 0.06351365892552364, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.655、過去3着以内率 -0.316、平均着順比 +0.167。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('295b9634-d0a1-5592-98fc-48a3e4afcd5d', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 3, 'production', 0.020842954576272967, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.324、直近3走の着順比 -0.188、過去走数 +0.163。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('315c3f84-a045-5cc3-b0e5-7b89ab295f55', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 4, 'production', 0.2634050161508138, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +1.079、過去3着以内率 +0.394、過去勝率 +0.277。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1f8850f1-fe5f-5a8c-822d-3669692e149b', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 5, 'production', 0.050501443175544634, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.723、過去3着以内率 -0.378、前走距離 -0.144。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('673e2adb-d18c-54b2-8cef-1e76814e8656', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 6, 'production', 0.02128973080771682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 +0.292、過去3着以内率 -0.239、直近3走の着順比 -0.220。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ad1bf85-ccff-594f-a648-4cea3c479e9f', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 7, 'production', 0.01935120827821761, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.305、直近3走の着順比 -0.225、過去走数 +0.185。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e73a4252-a2dd-5abf-84fd-ad685c43ad6d', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 8, 'production', 0.021292450054536262, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 +0.278、直近3走の着順比 -0.263、過去3着以内率 -0.253。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dcf871f0-cd15-5fc2-bbec-3152725dd8ba', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 9, 'production', 0.051459148177126705, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.596、過去3着以内率 -0.339、直近5走の着順比 +0.103。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7644d39e-57a4-53a7-95d0-d3ae3c201f33', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 10, 'production', 0.05745813225567543, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、過去3着以内率 -0.288、過去走数 +0.133。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63beb64f-af0d-5504-81a5-1f8c51462a9f', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 11, 'production', 0.04320852792785895, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.369、過去3着以内率 -0.346、過去走数 +0.115。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2837a0bc-ec5a-5334-ae98-ebeab276e13b', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 12, 'production', 0.020286432242980882, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.302、過去走数 +0.175、直近3走の着順比 -0.139。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2bc5bac0-ed54-59d9-94ce-3373c697a71e', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 13, 'production', 0.11473565255437973, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.684、過去勝率 +0.204、過去3着以内率 +0.192。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c984a117-75fb-57c2-a5a9-28f179efe12b', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 14, 'production', 0.004885208991866111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.350、過去走数 +0.410、平均着順比 -0.405。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('91ba75fa-3377-59e8-ae71-d2b85cad5ea4', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 15, 'production', 0.04139234604064083, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.401、過去3着以内率 -0.334、直近5走の着順比 +0.093。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9ee2f129-8d24-5c7b-93ee-fcc34cbe059a', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 16, 'production', 0.04094038993295377, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.384、過去3着以内率 -0.294、前走距離 -0.180。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8aca3630-a2a4-5847-90b4-7eaabde89555', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 17, 'production', 0.03998486813746274, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.317、過去3着以内率 -0.262、過去走数 +0.169。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cc125262-11c4-5de9-b75f-b173715fb6e0', 'a9fca0d1-38ac-45b4-beec-ae23f4978899', 18, 'production', 0.06593872655368849, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.687、過去3着以内率 -0.334、平均着順比 +0.164。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2be4e9f9-28d5-5f4f-b0e0-8d492d66f8f0', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 1, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c739b16-a882-52f9-b05c-5ab24f2b0956', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 2, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6008c38c-84d7-5c74-a0fa-6225f7ffca0a', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 3, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2696ed42-d118-5013-9bb0-f2da17ddac0a', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 4, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('67335360-7be5-56d3-9714-cb38c01deae4', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 5, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c8d31590-164e-59e4-9d77-c8d3219ac52d', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 6, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('946f0586-1349-54e0-a160-80481fe546f1', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 7, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ecc10d2a-0b4b-5481-9276-4f982e1a1af3', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 8, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5a23dbf5-6a39-5841-b111-82f7d5b35936', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 9, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('64ab8c21-0bd4-5bec-a63a-345a7417194e', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 10, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f2fab08-4b7f-5a7e-b7ed-488c0e5ea94e', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 11, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('562623a3-5ec4-5800-b6c1-6d1141666702', '48e57e54-b438-47ca-b929-74c67bb1bb4e', 12, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a7f993b5-b0b9-5928-a6ec-a66aa9a33ab1', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 1, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63e4d134-bf63-5daa-86a7-4884db0e0ef4', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 2, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a6561237-6676-5acb-b264-06d02ab8448b', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 3, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('06ca0e39-aff9-5b43-9528-54e2f61f3226', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 4, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('adf30135-a457-503f-9ac6-b940141ca584', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 5, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe063576-528f-5746-bd6f-334f7e09fd21', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 6, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('188816d2-629f-51ff-a462-050cf2d9fdd8', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 7, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f9bf6a48-19ec-5897-9f28-5512daed8d38', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 8, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('459e1197-2d79-5c40-ab14-29a9f692171d', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 9, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2310001f-992d-5d7e-b9e0-f6541b04c4a5', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 10, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4c0595d-9e20-587c-a704-d7ff34604a9a', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 11, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('60e5c305-7068-5f01-ad3b-ef3a9861a8cb', '3278eaed-b304-4e13-9293-0dd4a62c4d4e', 12, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98626449-0947-535e-955d-f33a05846ec1', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 1, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b3e0ef6b-05e0-5038-a95b-637bf5f02410', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 2, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2eba7e9e-9b42-5014-b517-54b1ff807142', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 3, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2feeb767-bcd0-5292-9a83-e1358c4711c4', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 4, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ed2f6992-1978-5f91-9128-ae0c9251cba8', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 5, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c26e3649-1bcd-536f-8b7c-014600fe7ace', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 6, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef7f1735-b89c-5c15-ae09-204f5d0feb01', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 7, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe952d45-f26e-52a9-bb1d-a3f69d3ad7de', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 8, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1fc9ebf3-4cf5-51b9-9957-255f099fac18', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 9, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('50cf55a7-4034-5a0e-9c3d-4a57f8c6f189', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 10, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5b7c00b6-13aa-5ba2-9459-8032f82cbef1', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 11, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('993134ef-1145-56c1-860c-7ecfafd0d7ac', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 12, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef1ab3b4-bb84-552b-95b7-08c4d30431ac', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 13, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('72b71c0a-fc18-55eb-a540-bfa98d13595b', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 14, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d7da3aae-a0eb-55f3-91ea-96fae587eb73', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 15, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea06a39a-cf95-5f6f-80ae-e8d37884bf7a', '9ca9b5a6-6afc-4e8c-8cfa-8c5e1db3d8e5', 16, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e9631615-f6b6-5f4f-ab24-29741a7f38bf', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 1, 'production', 0.08705598648549244, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.286、直近3走の着順比 +0.188、平均着順比 +0.133。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('674aca83-97ec-51fc-a0bf-fc547c99de7e', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 2, 'production', 0.03659856051775044, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.382、平均着順比 +0.097、前走からの日数 +0.054。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('095dcb94-cb49-5bac-b8b0-20005c928a69', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 3, 'production', 0.023755453384499883, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.352、直近3走の着順比 -0.297、過去走数 -0.261。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('77e0f917-38c0-5594-a14f-516a9ad6efe5', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 4, 'production', 0.035420361858111996, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.291、直近3走の着順比 -0.257、前走距離 +0.238。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('57b752e8-3b29-5829-93af-b16a475c5dd6', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 5, 'production', 0.055416724711776826, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.203、直近3走の着順比 -0.179、過去走数 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b875d502-2ce0-5ce9-ad13-c79a0b9a4654', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 6, 'production', 0.01602230600110449, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.352、直近3走の着順比 -0.341、過去3着以内率 -0.321。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e8d8c1b3-0c07-5dfc-b796-cf11d44d72e3', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 7, 'production', 0.09841157653464706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.529、平均着順比 +0.171、過去3着以内率 -0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('23e7a43b-eb50-5850-9310-7db1595c4b15', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 8, 'production', 0.15376920592134075, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.665、過去勝率 +0.110、平均着順比 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87cf66d8-c257-5ee8-ada0-2cd0fe944b8d', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 9, 'production', 0.14400110359609652, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.770、平均着順比 +0.131、直近5走の着順比 +0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d74fc8d-0b87-598d-8676-a6fe54775212', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 10, 'production', 0.12727586056456736, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.316、過去3着以内率 +0.256、平均着順比 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2c91d109-6f30-5af2-9ca4-5d35df0670ce', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 11, 'production', 0.013141024609689292, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.432、過去3着以内率 -0.389、過去走数 -0.305。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4f5207c5-2cc1-597f-8001-7166e6d15c20', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 12, 'production', 0.020915729845042783, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.857、過去3着以内率 +0.083、直近5走の着順比 -0.066。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f812caf4-c320-5c32-b27c-25da0713b533', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 13, 'production', 0.005381454387946049, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.960、過去走数 -0.666、直近5走の着順比 -0.297。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32e2af05-d8c6-5e0e-b09c-87bdda9c91cc', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 14, 'production', 0.06401317789202675, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.462、前走からの日数 -0.437、過去走数 +0.303。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5a3eece8-f614-5b2d-9eb1-db0fe8646e99', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 15, 'production', 0.08739551056562199, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.301、過去走数 +0.123、直近3走の着順比 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4383f55f-8174-5617-bf06-00c5dc37d6ad', 'b2dd5e8a-5d26-4a41-9245-a3eafd6f6c3e', 16, 'production', 0.0314259631242854, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.210、過去3着以内率 -0.186、過去走数 +0.083。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c96022b-cf7e-5449-b15f-74ada09ef891', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 1, 'production', 0.05780618366271299, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.353、前走からの日数 -0.344、過去3着以内率 +0.220。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7af6e063-3312-539e-a5e5-744bde902826', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 2, 'production', 0.11274510770266864, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.693、過去3着以内率 +0.133、直近5走の着順比 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29221639-508c-55f3-8a2e-7009e3656786', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 3, 'production', 0.1914186454457841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.761、過去3着以内率 +0.365、平均着順比 +0.216。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d76f466-7da0-58bd-97bc-a6422d11ad06', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 4, 'production', 0.09269973230705571, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.549、過去走数 +0.123、直近5走の着順比 +0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('debe8bfc-330e-5faa-a139-13f1c1b35e2b', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 5, 'production', 0.10670387950617234, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.536、過去3着以内率 +0.162、平均着順比 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0b42385a-7eaa-58e8-8974-c12fbb7b2172', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 6, 'production', 0.015348097624473056, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.242、過去勝率 +0.174、過去3着以内率 +0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b0f381d0-ea4f-548f-b9a8-8cbca8e310b6', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 7, 'production', 0.06032172935717069, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、2勝（25.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.940、直近3走の着順比 +0.456、過去勝率 +0.402。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5a724353-e58e-5e3b-8a74-0d3164173e83', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 8, 'production', 0.006716080105522208, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.860、過去3着以内率 -0.305、直近5走の着順比 -0.219。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d18e2a3d-b55a-599e-a8ab-0b8e4e776303', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 9, 'production', 0.009456230278982685, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.558、直近3走の着順比 -0.543、直近5走の着順比 -0.230。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('20f49de6-d4c4-59cb-9274-7543aac91cb8', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 10, 'production', 0.01922056648554784, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.785、過去勝率 +0.121、直近5走の着順比 -0.112。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f77595a5-13ef-5c3b-93a0-207f161dcdff', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 11, 'production', 0.06340129117288305, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.348、前走からの日数 -0.339、平均着順比 +0.163。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ee1ed543-538a-5f35-81cb-a192d1ce4cd2', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 12, 'production', 0.16407516427105706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.911、過去3着以内率 +0.320、過去走数 -0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('efea902c-08d7-53bb-8027-c99c03aca37d', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 13, 'production', 0.021647598430361355, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは14件、2勝（14.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.886、直近5走の着順比 +0.117、過去走数 -0.114。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a2d1c033-4f33-5ef0-a756-c759a970229a', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 14, 'production', 0.05058972726041942, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.106、過去走数 -0.106、前走からの日数 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a2dfec55-c808-54a5-a312-adb6081f0de0', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 15, 'production', 0.01718962255830711, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.617、前走からの日数 -0.238、直近5走の着順比 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('19704bc4-a133-5475-ab13-80096009c9ad', 'ff0e5bed-c2b4-4e46-9f46-86bac116c031', 16, 'production', 0.010660343830881743, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.350、直近5走の着順比 -0.134、過去3着以内率 +0.112。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('48508a44-73fa-571a-bfad-7e57b9c43789', '277c450a-480a-42b6-b2eb-2d9e6c455656', 1, 'production', 0.06437204618666918, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.247、過去勝率 -0.143、直近3走の着順比 +0.083。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e9a01ef-6148-5b43-8653-edb6f3e67771', '277c450a-480a-42b6-b2eb-2d9e6c455656', 2, 'production', 0.11723470778895059, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.438、過去3着以内率 +0.228、平均着順比 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8320a70f-7ffa-520a-a662-1668e763562d', '277c450a-480a-42b6-b2eb-2d9e6c455656', 3, 'production', 0.05776289627801617, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.261、過去勝率 -0.195、直近3走の着順比 +0.068。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('23f96944-dbf4-5202-b24b-f5a5a3bdf25d', '277c450a-480a-42b6-b2eb-2d9e6c455656', 4, 'production', 0.15666338109650432, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.621、過去3着以内率 +0.340、平均着順比 +0.172。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a6c93100-a81b-5e43-8b62-e7f57377a193', '277c450a-480a-42b6-b2eb-2d9e6c455656', 5, 'production', 0.07863922385178825, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.284、過去3着以内率 +0.137、過去勝率 -0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('30df563a-f29a-5e1b-9b93-f887fe5df909', '277c450a-480a-42b6-b2eb-2d9e6c455656', 6, 'production', 0.057019296828400234, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.249、過去勝率 -0.196、直近3走の着順比 +0.066。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5fae65f2-8f5b-5886-8a2f-227bff26ee2d', '277c450a-480a-42b6-b2eb-2d9e6c455656', 7, 'production', 0.11667196355137142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.604、過去勝率 -0.186、平均着順比 +0.185。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eb8cdc6f-4033-595e-b50c-fa6b2a31685d', '277c450a-480a-42b6-b2eb-2d9e6c455656', 8, 'production', 0.16684370655327851, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.750、過去3着以内率 +0.320、過去走数 -0.237。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6a00ed80-88f4-5e66-bd5c-5625e657723f', '277c450a-480a-42b6-b2eb-2d9e6c455656', 9, 'production', 0.1847927778650212, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.725、過去3着以内率 +0.344、平均着順比 +0.247。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8e8adc98-ec0a-5d47-b7e4-a5df21f936a1', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 1, 'production', 0.016459383513466763, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.775、過去走数 -0.244、過去3着以内率 +0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('78120a82-48fa-569b-b89c-6f53188f9aab', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 2, 'production', 0.022993972439935017, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.570、直近3走の着順比 +0.119、直近5走の着順比 -0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0e3511cf-9349-56c8-80fa-70e4a74b2583', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 3, 'production', 0.12461598834589396, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.749、過去3着以内率 +0.368、平均着順比 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('048bf9ca-c561-5c82-8250-49f49834b7bf', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 4, 'production', 0.0787513635547535, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.594、過去走数 +0.110、過去勝率 -0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('aff4ebbb-d786-5d20-9cca-3765bb33b9cd', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 5, 'production', 0.1385507861724932, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.396、過去3着以内率 +0.391、平均着順比 +0.202。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('65804f23-3b88-5681-a6ad-e73e16990126', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 6, 'production', 0.16956517831170656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.836、過去3着以内率 +0.320、直近5走の着順比 +0.202。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d1a44da2-4ce2-59fb-adc3-36fe347e6767', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 7, 'production', 0.038498561135629945, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.293、前走からの日数 -0.206、直近3走の着順比 -0.202。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4a10dc2b-db8d-5066-939b-944c612423a7', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 8, 'production', 0.029293314566952746, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 前走距離 -0.170、過去3着以内率 +0.092、過去走数 -0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bbb6c847-223b-5b82-96b1-f904219862b2', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 9, 'production', 0.014046758156857892, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、2勝（22.2%）。
推定｜SHAP（生スコア） 過去走数 -0.467、直近3走の着順比 -0.385、直近5走の着順比 -0.166。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a20d5fb3-f8f9-586d-82a0-7efc55048b6c', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 10, 'production', 0.045845698680642484, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.389、過去3着以内率 +0.245、平均着順比 +0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d3fc6c0-7289-50d0-b338-7c5d2494f3b3', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 11, 'production', 0.018249559796484932, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 過去走数 -0.383、前走からの日数 -0.372、直近3走の着順比 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98706279-65cc-58bb-bf95-cc8270588be8', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 12, 'production', 0.013817694746664139, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.303、過去走数 -0.268、平均着順比 -0.230。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af42132d-efa4-50f7-8e78-7ce1efe38dc4', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 13, 'production', 0.018107950734888134, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、2勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.008、過去3着以内率 +0.226、過去勝率 +0.184。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bafed5a0-7501-597e-aa21-c46112560bff', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 14, 'production', 0.15129471144898948, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.727、過去3着以内率 +0.308、平均着順比 +0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8cae4811-7013-567a-8dbb-ea0e7403e513', '95aed9b1-0f40-4a23-af3b-e805285fe4d1', 15, 'production', 0.11990907839464136, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは12件、1勝（8.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.826、過去3着以内率 +0.277、平均着順比 +0.116。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('19cdcd4b-2bda-5c06-af84-6aa8bc3129c3', '3e31715c-149e-4f79-85a9-2e9584f66f32', 1, 'production', 0.13157788305723553, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、3勝（75.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.817、過去3着以内率 +0.321、平均着順比 +0.202。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('30cc1a95-fc5c-5f6b-be0e-0126887c67c8', '3e31715c-149e-4f79-85a9-2e9584f66f32', 2, 'production', 0.10010331068775975, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.677、前走からの日数 -0.485、過去3着以内率 +0.451。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ebe389f-f1a2-57b6-a651-6269df11e5ce', '3e31715c-149e-4f79-85a9-2e9584f66f32', 3, 'production', 0.02375175736411975, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 過去走数 -0.586、直近3走の着順比 +0.235、過去3着以内率 +0.231。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('710aaab7-59a3-5901-9168-5086ac774274', '3e31715c-149e-4f79-85a9-2e9584f66f32', 4, 'production', 0.02862605512567656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 -0.155、直近3走の着順比 +0.136、過去走数 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('171bfea8-31ab-52a9-bcfc-fdedd600de3d', '3e31715c-149e-4f79-85a9-2e9584f66f32', 5, 'production', 0.12925588542628375, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、3勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.724、過去3着以内率 +0.303、直近5走の着順比 +0.231。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5a8209db-8ca9-5789-8b36-412c01d6392f', '3e31715c-149e-4f79-85a9-2e9584f66f32', 6, 'production', 0.1250172232340157, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、2勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.681、過去3着以内率 +0.456、前走からの日数 -0.417。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('219ca970-28d5-5542-b8fb-3511f4e45d31', '3e31715c-149e-4f79-85a9-2e9584f66f32', 7, 'production', 0.07353772149211354, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.402、過去3着以内率 +0.336、平均着順比 +0.198。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6e997290-faea-5289-8e7a-14457bfa32e5', '3e31715c-149e-4f79-85a9-2e9584f66f32', 8, 'production', 0.06004820052951731, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.730、過去3着以内率 +0.128、過去勝率 -0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('de379144-2d39-5f5b-bd5a-2b791910e773', '3e31715c-149e-4f79-85a9-2e9584f66f32', 9, 'production', 0.03292645462830892, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.346、前走距離 -0.153、過去勝率 -0.058。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a9063949-df66-57c0-8b63-395bbf9f0851', '3e31715c-149e-4f79-85a9-2e9584f66f32', 10, 'production', 0.041164540971611464, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 +0.135、直近3走の着順比 +0.069、過去3着以内率 +0.058。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38410750-a626-5ee9-b0d7-49cf879d4415', '3e31715c-149e-4f79-85a9-2e9584f66f32', 11, 'production', 0.04650081876586305, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.274、過去3着以内率 +0.227、過去走数 -0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c6f5b354-0021-524f-bb46-66c8a9274e51', '3e31715c-149e-4f79-85a9-2e9584f66f32', 12, 'production', 0.07291762726657171, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.620、過去3着以内率 +0.364、前走からの日数 -0.311。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9de14a5e-7029-5a0a-98bd-7497d1e9820e', '3e31715c-149e-4f79-85a9-2e9584f66f32', 13, 'production', 0.04956617207617471, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.486、過去3着以内率 +0.140、前走距離 -0.137。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f9c34576-b4bc-5e12-a501-42c1094b0e1b', '3e31715c-149e-4f79-85a9-2e9584f66f32', 14, 'production', 0.04943061882855255, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.687、前走距離 -0.153、平均着順比 +0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('489bcf2f-bb0c-58d0-9c1b-41968e4a5294', '3e31715c-149e-4f79-85a9-2e9584f66f32', 15, 'production', 0.016499973102607292, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.189、前走距離 -0.177、直近5走の着順比 -0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1b97ed3c-ac2f-5275-865b-3fc8859292e2', '3e31715c-149e-4f79-85a9-2e9584f66f32', 16, 'production', 0.019075757443588342, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 過去走数 -0.629、直近3走の着順比 -0.233、過去3着以内率 +0.213。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('febe1510-97f2-5fed-831b-ba950a93110d', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 1, 'production', 0.06706403732808615, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 過去走数 +0.140、過去3着以内率 +0.131、直近3走の着順比 +0.091。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0e356be-c514-5993-b825-656d5f5238f9', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 2, 'production', 0.06683786937029287, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.407、前走からの日数 +0.107、前走距離 -0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6e583666-a9f5-517e-9cf7-b5cea33fec40', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 3, 'production', 0.0063944863414937235, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.840、過去走数 -0.661、直近5走の着順比 -0.172。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ff9c281d-1398-57c0-b5d3-479e3d9ea2de', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 4, 'production', 0.11300246460787551, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.416、過去3着以内率 +0.298、平均着順比 +0.211。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc9104e7-ad44-501b-9a15-41eab13b0b19', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 5, 'production', 0.07340983716605892, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.297、平均着順比 +0.152、過去走数 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f83a6fd3-d8d5-59cb-aa58-f50207428c40', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 6, 'production', 0.016102252816873424, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.317、過去3着以内率 -0.274、過去走数 -0.186。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1d25d111-b79e-5c00-a5bd-09158d61ebf4', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 7, 'production', 0.10256531984825028, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.515、過去3着以内率 +0.206、平均着順比 +0.186。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d4f66e8-5c58-5928-b056-5cba515834a3', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 8, 'production', 0.034170857445883995, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.332、過去3着以内率 +0.256、直近5走の着順比 -0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c7a2b23-3a1e-5e92-ab1d-22cb1b810c6d', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 9, 'production', 0.08968608523251095, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.396、過去走数 +0.182、平均着順比 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f3a90455-580b-57e6-bb49-fecb1fac54fb', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 10, 'production', 0.03976303189804335, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.291、直近5走の着順比 +0.079、過去走数 +0.065。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b6c2d7cb-4dc0-51f2-8851-23db1c2156e1', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 11, 'production', 0.0979328155117847, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.687、過去3着以内率 +0.201、過去走数 -0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5de3dd90-31fd-5fff-9816-e3f3b3a5eb7a', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 12, 'production', 0.13425096047403998, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.694、過去3着以内率 +0.312、平均着順比 +0.225。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1824b233-91b7-5894-ab8c-3bb1b1d70afc', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 13, 'production', 0.09341318092854771, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.698、平均着順比 +0.194、直近5走の着順比 +0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4a62ea8a-7ef9-501f-ada0-265010b9626f', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 14, 'production', 0.002972201997097004, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.278、平均着順比 -0.492、過去3着以内率 -0.290。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f02750c2-ec51-536c-b0d1-bb7e2591781c', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 15, 'production', 0.04894969829286435, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.335、直近3走の着順比 -0.294、直近5走の着順比 +0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1f787d6d-df3b-5870-8c55-76189cfa20a4', 'b4402f03-e9f2-41e1-8a3c-366c2b875d87', 16, 'production', 0.01348490074029706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.842、過去3着以内率 +0.172、前走距離 -0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0d39349b-331c-5bca-a7e6-200086f23fd0', '896cf025-fd0c-4dba-9832-32df89b61962', 1, 'production', 0.1493286509128039, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.215、過去3着以内率 +0.210、過去走数 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ab45e890-7921-5d5d-8bfa-2aadabf16379', '896cf025-fd0c-4dba-9832-32df89b61962', 2, 'production', 0.07623456449983441, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.269、直近3走の着順比 +0.268、過去走数 +0.134。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('885b9a30-6890-507b-bc8e-a9d2f4521e4a', '896cf025-fd0c-4dba-9832-32df89b61962', 3, 'production', 0.027122142491714143, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.327、直近3走の着順比 -0.279、平均着順比 -0.221。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4800990-5f25-583d-a32e-90ee21cea153', '896cf025-fd0c-4dba-9832-32df89b61962', 4, 'production', 0.008803083198799985, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.233、過去走数 +0.328、平均着順比 -0.269。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('da9dc307-7a90-5c3c-93fd-b7cef497a7a6', '896cf025-fd0c-4dba-9832-32df89b61962', 5, 'production', 0.060200521385836744, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.334、過去走数 +0.145、前走距離 +0.068。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f5bcff3-3a70-54e2-afd3-402b867e64e6', '896cf025-fd0c-4dba-9832-32df89b61962', 6, 'production', 0.12105889677692834, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.362、過去走数 +0.137、過去勝率 +0.112。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a6c3103-b69b-56bf-bf21-cd28de526e9a', '896cf025-fd0c-4dba-9832-32df89b61962', 7, 'production', 0.08878470015681937, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.394、過去3着以内率 -0.290、過去走数 +0.116。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3804d77-addb-5564-86fe-61b901479d62', '896cf025-fd0c-4dba-9832-32df89b61962', 8, 'production', 0.3775849469135241, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.025、過去3着以内率 +0.349、過去勝率 +0.231。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d1e3f4c-0363-59c3-b148-75a6215334e1', '896cf025-fd0c-4dba-9832-32df89b61962', 9, 'production', 0.006223369713006875, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.554、平均着順比 -0.407、過去走数 +0.403。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('da91da06-01b0-507d-86dd-5121f9403828', '896cf025-fd0c-4dba-9832-32df89b61962', 10, 'production', 0.022490167182681757, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.491、過去3着以内率 -0.292、平均着順比 -0.246。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('93d03758-1816-5f74-b3ce-4394aed93fc7', '896cf025-fd0c-4dba-9832-32df89b61962', 11, 'production', 0.0505448681683967, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.377、過去走数 +0.183、過去勝率 +0.037。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ae9a75d-4f71-58a3-99d5-819afc41f111', '896cf025-fd0c-4dba-9832-32df89b61962', 12, 'production', 0.011624088599653368, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.394、過去走数 +0.426、平均着順比 -0.372。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c6a991c8-594a-5552-92f3-33a7a469d1ab', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 1, 'production', 0.023635450443101693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.730、過去走数 +0.267、平均着順比 -0.217。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4d0148f-b279-5ef2-b791-0de89495d07f', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 2, 'production', 0.04493638562145021, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.459、平均着順比 -0.103、前走距離 -0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c562c4a2-90e7-5f54-b5b2-50670f2a287b', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 3, 'production', 0.04610929201584665, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.317、直近3走の着順比 -0.276、過去走数 +0.188。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('31d3ffb7-452f-5797-b776-7b83ef2c9d35', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 4, 'production', 0.1012992431914374, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.343、過去3着以内率 -0.336、過去走数 +0.090。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c7a15618-e1e9-5a4a-8f40-530c99d1a55c', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 5, 'production', 0.013347424330309993, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.058、平均着順比 -0.330、過去3着以内率 -0.243。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87155da0-354e-567a-ab75-bdd7e638fc9e', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 6, 'production', 0.14873216856807603, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.538、過去3着以内率 -0.291、平均着順比 +0.129。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('555aef26-9125-59d6-9fd9-61c8f8dece9e', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 7, 'production', 0.08358071950305035, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.342、直近3走の着順比 +0.234、前走距離 -0.073。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d9ebbdb0-1f54-58bf-863b-9ea828e53051', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 8, 'production', 0.029666129955047568, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.510、過去3着以内率 -0.281、過去走数 +0.259。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1d5f07ef-5aa7-5d40-9b3e-450b77d06adc', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 9, 'production', 0.09803198074457223, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.350、直近3走の着順比 +0.307、過去走数 +0.114。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3fbe7f96-dc77-52bf-ac02-9bcc7803801f', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 10, 'production', 0.24587161070088287, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.498、過去3着以内率 +0.201、過去勝率 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c448bae8-178a-55c2-9d61-d1aa63e847aa', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 11, 'production', 0.030421257972793027, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.513、過去3着以内率 -0.267、過去走数 +0.245。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('67695205-a53f-55a3-9fc3-05a147a8989b', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 12, 'production', 0.007788200756800143, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.417、平均着順比 -0.446、過去走数 +0.296。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('098812e1-bfbd-5667-b00a-9157cdc25ca5', '85f20bd7-e214-4c9b-8ee1-c485faed8e28', 13, 'production', 0.12658013619663175, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.595、過去3着以内率 -0.343、直近5走の着順比 +0.101。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c98b71a0-88be-59c4-9a68-187007d9696a', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 1, 'production', 0.06320216671487829, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.341、過去走数 +0.134、直近5走の着順比 +0.036。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('19e897be-cb10-5086-94dd-c492917003b3', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 2, 'production', 0.04786699381881329, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.307、過去3着以内率 -0.277、過去走数 +0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0704c72b-0c52-5c56-88d2-459283bd1011', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 3, 'production', 0.022017958693510975, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.114、過去走数 +0.361、平均着順比 -0.222。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('967a23ee-c3b2-5c48-9436-4f8f44378f94', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 4, 'production', 0.032050439942838085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.802、過去走数 +0.362、平均着順比 -0.226。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63b42b68-a9e1-556b-804a-66ffcaf2daa2', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 5, 'production', 0.44246479222134194, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.759、過去3着以内率 +0.400、平均着順比 +0.173。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('31ee469a-2345-5e22-9725-66e7188ba065', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 6, 'production', 0.16277047106039466, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.213、過去走数 +0.154、過去勝率 +0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2fcc12cb-2dc0-513e-902e-6f844ab5144f', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 7, 'production', 0.11874049878421951, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.365、過去3着以内率 -0.296、前走距離 +0.100。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('45a07cee-13e7-511b-8568-1266b20bc7d3', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 8, 'production', 0.0906030752600329, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.335、直近3走の着順比 +0.215、過去走数 +0.116。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d53044d7-c40a-5ad5-9b24-437e45e73910', 'c284b9ac-d859-490a-bcc7-d83578ff8e50', 9, 'production', 0.020283603503970335, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.268、過去走数 +0.515、平均着順比 -0.376。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bc26aa31-fb26-50fd-b293-ca1e5c07f571', '81d35050-d539-4086-a837-5b095323f07b', 1, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a3d9b141-25d9-5465-a050-c0c411061cb6', '81d35050-d539-4086-a837-5b095323f07b', 2, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('15c923a2-6361-5214-bf69-65c5099d04fa', '81d35050-d539-4086-a837-5b095323f07b', 3, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ebdbfba8-e98e-543c-8a64-5a4379de5761', '81d35050-d539-4086-a837-5b095323f07b', 4, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b83e6f32-db17-5d18-a0a2-a8ce86d5dba6', '81d35050-d539-4086-a837-5b095323f07b', 5, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('96728975-0a29-5d26-a410-ddcf2da8f39c', '81d35050-d539-4086-a837-5b095323f07b', 6, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('41baf703-a0c3-537d-b9e9-0abd7e8c85a1', '81d35050-d539-4086-a837-5b095323f07b', 7, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7023ca93-36bb-5ff4-a677-de8446eec456', '81d35050-d539-4086-a837-5b095323f07b', 8, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('716330b1-8e29-5e4d-a1e8-4f45f5d1a96d', '81d35050-d539-4086-a837-5b095323f07b', 9, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d6485ca2-d16d-51d0-be0f-311448b1440e', '81d35050-d539-4086-a837-5b095323f07b', 10, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fb90d459-36eb-5c38-ad55-2cf69cdc6cfa', '7af74ab5-5a42-4553-9e3c-c081676dd170', 1, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cb956997-f1e0-54f3-b238-2b05a1759461', '7af74ab5-5a42-4553-9e3c-c081676dd170', 2, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('54984aec-07c2-501f-82e4-9536712f5a30', '7af74ab5-5a42-4553-9e3c-c081676dd170', 3, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a34003c-47c1-5cd7-9050-d52a086e6710', '7af74ab5-5a42-4553-9e3c-c081676dd170', 4, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('791be5c3-ef16-50eb-b6f9-c8c8089e9599', '7af74ab5-5a42-4553-9e3c-c081676dd170', 5, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('618a1f63-0099-57b4-bde8-9f91c63c60f5', '7af74ab5-5a42-4553-9e3c-c081676dd170', 6, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('df273b2a-bb5b-513e-b07f-bf9b069deb9d', '7af74ab5-5a42-4553-9e3c-c081676dd170', 7, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6305af65-aa59-5117-93fd-82ede512914d', '7af74ab5-5a42-4553-9e3c-c081676dd170', 8, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fb78f854-2546-5c08-b1af-95d853738f06', '7af74ab5-5a42-4553-9e3c-c081676dd170', 9, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc697f2e-4c3a-5d8b-bbe3-88644a8ebc3f', '7af74ab5-5a42-4553-9e3c-c081676dd170', 10, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fba44f0a-84ea-5e9c-b2d9-f74a6af3dbd0', '7af74ab5-5a42-4553-9e3c-c081676dd170', 11, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('07045dd9-a944-5058-aee5-1173bb77d0bf', '7af74ab5-5a42-4553-9e3c-c081676dd170', 12, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39d7c96b-e123-5e57-89b5-de03ee6ad386', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 1, 'production', 0.015616890759429744, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.440、過去走数 -0.378、直近3走の着順比 -0.242。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ac8f92b5-32a3-5231-ad06-a1ac207314fb', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 2, 'production', 0.020795365569997473, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.760、平均着順比 -0.261、直近5走の着順比 -0.133。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('980630b4-265c-54ed-94f0-80e15059f83e', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 3, 'production', 0.08886439513321948, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.435、過去走数 -0.142、過去3着以内率 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ce342e88-353c-5f15-8594-4d0b7c1185dc', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 4, 'production', 0.23587090240255038, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.753、平均着順比 +0.334、過去3着以内率 +0.293。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88a3213a-fd12-5cc8-8589-dcba889c10d4', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 5, 'production', 0.06864589746508623, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去走数 +0.111、前走距離 -0.071、直近3走の着順比 +0.071。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba935007-7722-5219-8d18-5ade52df566e', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 6, 'production', 0.01931077812646216, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.698、過去3着以内率 -0.361、前走距離 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae5f0f14-a176-53e0-806a-aac149cdf119', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 7, 'production', 0.04867293836776998, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.258、前走からの日数 -0.187、過去勝率 +0.180。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e2d9a874-330e-57c1-8405-da174ecf59cb', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 8, 'production', 0.02429396208220986, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.198、過去3着以内率 -0.192、平均着順比 -0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ca45ba09-0a67-56ed-8313-9b548b23b646', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 9, 'production', 0.013768937189883923, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.727、過去3着以内率 -0.245、前走からの日数 -0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b17544c0-8306-52dc-971c-5bbf10fc4947', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 10, 'production', 0.04394991437571843, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.259、過去3着以内率 -0.211、前走距離 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('30b609e2-b281-50cc-8bb1-5fb5217d66e8', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 11, 'production', 0.06485436516667493, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.381、直近3走の着順比 +0.236、平均着順比 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('459e1785-5d63-5337-b677-cb9491a61cd0', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 12, 'production', 0.007953598723400951, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.893、平均着順比 -0.356、過去3着以内率 -0.249。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('99602a79-358f-527d-bddf-a05869b31ba1', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 13, 'production', 0.14721802751987617, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.594、過去3着以内率 +0.251、前走距離 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7fe9ba82-e44d-56e1-92bb-672a953a1fdd', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 14, 'production', 0.049069920633180074, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.260、過去3着以内率 -0.196、前走距離 -0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49e8facf-61a7-5940-bebd-482778311046', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 15, 'production', 0.05141326153037155, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.235、前走距離 -0.141、過去3着以内率 -0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88342e0f-966d-5fd8-8337-2d453b96d51f', '73f0dae5-dbfa-4793-9c7b-7a55cf46a76f', 16, 'production', 0.09970084495416857, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.640、前走距離 -0.164、直近5走の着順比 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f2c08082-1240-5957-959e-4f7c50ce4b8e', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 1, 'production', 0.07341302092667579, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.558、平均着順比 +0.145、前走距離 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bedbb599-c9e1-5209-a3c8-5488d68676bb', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 2, 'production', 0.018157326191676593, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.323、過去走数 -0.201、平均着順比 -0.159。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cfbc2438-ab79-5acb-ae2c-34810503f374', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 3, 'production', 0.09206357817911365, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.807、過去勝率 +0.149、直近5走の着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d9d8eed-d687-56cc-a43c-5ab726e7dcbc', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 4, 'production', 0.07302940051108538, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.667、直近5走の着順比 +0.083、過去走数 +0.077。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('10bc4de8-cf1e-51a9-9573-e211f7b17f04', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 5, 'production', 0.044533255912767085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.254、直近3走の着順比 +0.088、過去走数 +0.087。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e4f29408-4e85-5323-b791-2a37f19ec342', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 6, 'production', 0.15983192024250004, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.883、前走距離 +0.203、過去勝率 +0.184。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8a830d82-fed7-5f45-905c-5e9e6474be89', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 7, 'production', 0.019003036451915877, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.351、平均着順比 -0.124、過去走数 +0.076。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('627526f9-0453-501e-a8ed-cba4905d8d66', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 8, 'production', 0.003257109083162949, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.198、平均着順比 -0.370、過去3着以内率 -0.293。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d30eb16-d4d5-52ad-a3a3-0c6a43b1e5cd', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 9, 'production', 0.07910812324831329, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.470、過去3着以内率 +0.300、平均着順比 +0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bef95633-1ee8-5c5d-b703-32624ff4cfaa', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 10, 'production', 0.0913232166996763, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.664、平均着順比 +0.158、前走距離 +0.151。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d7c99229-4e80-55d6-9f30-ff911a96bca8', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 11, 'production', 0.0018606888206661805, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.383、過去走数 -0.537、平均着順比 -0.392。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a26d45a7-6a9d-589e-b945-b5674ea5cfd9', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 12, 'production', 0.021457499026145778, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.631、前走距離 +0.302、平均着順比 -0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('793b3303-b62a-502e-898a-78808e5c0fb6', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 13, 'production', 0.0899913079810708, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、過去3着以内率 +0.132、平均着順比 +0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('37170552-d3bf-58ed-af6b-25c1159a980c', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 14, 'production', 0.026260378008139667, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.613、過去3着以内率 +0.341、前走距離 +0.268。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('07a80f9d-1c61-533b-889b-7cba4ad1b732', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 15, 'production', 0.03734198593495185, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 +0.089、直近3走の着順比 +0.085、過去3着以内率 +0.066。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5e2b961c-6307-50f1-b697-1eb8341abdf6', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 16, 'production', 0.10614443264957346, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.778、前走からの日数 -0.519、過去3着以内率 +0.409。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fa26e58e-2750-5b3f-906c-69171772fca0', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 17, 'production', 0.05786652948590333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.214、過去走数 +0.130、前走距離 +0.128。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d91dbf9-13f8-54ff-bd36-9100c03b8032', 'a375e9d4-64ca-498a-98fb-941dad802a0f', 18, 'production', 0.0053571906466621305, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.421、平均着順比 -0.411、前走からの日数 -0.326。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a159cd2e-d3fa-5632-81d4-7316f1e0b12f', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 1, 'production', 0.1989406568904206, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.735、過去3着以内率 +0.241、平均着順比 +0.183。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('47111d7a-698e-54ba-9d43-8d38596ec311', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 2, 'production', 0.14288180856024854, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.325、過去3着以内率 +0.258、過去走数 +0.169。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('81f85660-775c-5842-be39-fba895eb8671', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 3, 'production', 0.1044379066184154, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.672、前走からの日数 +0.109、過去走数 -0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef266634-083d-51a4-a619-6857c1595a04', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 4, 'production', 0.07446693940316378, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.314、平均着順比 -0.261、過去3着以内率 +0.252。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d0062d0-6faa-52f0-8080-8de18ab90695', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 5, 'production', 0.013035985539217013, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.336、前走からの日数 -0.236、過去勝率 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3fcb481d-2742-5d75-9304-bf1751a4825c', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 6, 'production', 0.17564536348600246, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.698、過去3着以内率 +0.317、過去走数 +0.115。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eb0860d7-5b68-5387-9b7c-a689524accf7', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 7, 'production', 0.11621337808343599, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.536、過去3着以内率 +0.100、前走からの日数 +0.075。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('35774733-1749-59a7-87f0-a6fc25f03d33', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 8, 'production', 0.027620444562148485, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.269、過去3着以内率 -0.168、前走からの日数 -0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f4a3441-45da-5a69-81f2-72443f930749', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 9, 'production', 0.0305134376088273, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは20件、1勝（5.0%）。
推定｜SHAP（生スコア） 過去走数 -0.740、前走からの日数 -0.315、直近3走の着順比 +0.297。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ed93f75d-4981-5faa-9ae6-1650f023a78e', 'ff3b3b7b-f3a6-4086-8664-3f5e002b062b', 10, 'production', 0.11624407924812032, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.415、過去3着以内率 +0.152、平均着順比 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('53938079-91f6-5cfc-ae0b-389563ae0036', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 1, 'production', 0.025712419378733472, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.335、過去3着以内率 -0.091、直近5走の着順比 -0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6e81faed-0cea-517a-b9f7-5b8aa761c9d0', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 2, 'production', 0.07961621310768383, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、1勝（10.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.248、直近3走の着順比 +0.236、過去走数 -0.156。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05350881-f780-5ce9-857c-ecaff062cc78', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 3, 'production', 0.0993100762443321, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.636、平均着順比 +0.121、直近5走の着順比 +0.080。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0cf4654f-a9bc-57b1-bee5-0691b2cd609c', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 4, 'production', 0.03579949952353611, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.319、直近3走の着順比 +0.174、平均着順比 -0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('edf09bb4-9219-5d56-9990-5317b2411dd6', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 5, 'production', 0.005034198362269846, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.174、過去走数 -0.753、直近5走の着順比 -0.293。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ecc19ee8-6d64-5df1-a23f-4165972aa8f7', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 6, 'production', 0.09555955488741052, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.249、過去走数 +0.170、直近3走の着順比 +0.118。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e93dae8a-1b70-562a-8976-dda64f1ecb6a', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 7, 'production', 0.045414284488444895, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.282、過去走数 -0.279、前走からの日数 -0.256。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4efdcdf-1921-54e8-be21-34d708f02649', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 8, 'production', 0.00837710770517962, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去走数 -0.600、直近3走の着順比 -0.395、過去3着以内率 -0.344。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c7fc81ca-7489-585a-9c99-4ab03e006c79', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 9, 'production', 0.042320892124045724, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 前走からの日数 -0.215、過去走数 -0.158、直近3走の着順比 +0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('21990d44-f57f-5251-b2c1-20af4b5c9c54', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 10, 'production', 0.11254095901057841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.352、過去3着以内率 +0.219、平均着順比 +0.158。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fa09ce6d-1349-56b6-ac87-ed3b7b3983fc', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 11, 'production', 0.11790429584534125, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.249、過去3着以内率 +0.244、平均着順比 +0.161。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a3ea5eb4-b80a-501f-9b97-7ee539eeed9a', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 12, 'production', 0.06841870335895855, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.232、過去走数 +0.138、直近3走の着順比 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('67fa3ba7-229b-560a-b19a-4982620d6d2a', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 13, 'production', 0.1344638122370557, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.589、過去3着以内率 +0.229、平均着順比 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d6ba98cf-b248-5c27-973f-461bc18b32a0', '89aecc04-1f77-467b-9fcb-04b5f6028afe', 14, 'production', 0.12952798372642996, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.514、過去3着以内率 +0.280、過去走数 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef4d5d4e-64da-59dc-985d-f4562d4d4546', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 1, 'production', 0.13250006582177307, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.506、過去3着以内率 +0.292、平均着順比 +0.186。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('284eecd4-f0f6-573d-abaf-323cbd9ace7a', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 2, 'production', 0.05017363704980588, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.651、直近3走の着順比 +0.622、直近5走の着順比 +0.075。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('861f3cdc-aabc-574a-a76b-a82348cdc27e', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 3, 'production', 0.01447547784128564, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは14件、3勝（21.4%）。
推定｜SHAP（生スコア） 過去走数 -0.452、直近3走の着順比 -0.400、前走距離 -0.160。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fc287c48-45a1-5b5a-9655-69325543a0bd', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 4, 'production', 0.13170711795557152, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.547、過去3着以内率 +0.355、前走からの日数 -0.279。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82201347-b2cc-5901-a312-693db710d084', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 5, 'production', 0.11037478737360179, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.358、直近3走の着順比 +0.336、平均着順比 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ac9e1899-f601-5378-8374-5905687cc290', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 6, 'production', 0.06444250308004716, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.299、直近3走の着順比 -0.242、直近5走の着順比 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ce50c98-2654-5edf-b262-2c4f60ec238a', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 7, 'production', 0.054802760583859966, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、2勝（100.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.204、過去走数 +0.130、直近3走の着順比 -0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e45f22d5-55e3-591f-bc17-8339cb937294', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 8, 'production', 0.07782142627582678, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.883、過去走数 -0.613、直近5走の着順比 +0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('27f52ebc-34a6-5a72-bc08-d18c7c85810e', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 9, 'production', 0.09686156467875326, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.835、過去走数 -0.328、直近5走の着順比 +0.148。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3563675b-3dcd-5b66-9787-72531eeb21b7', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 10, 'production', 0.05498579417248376, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.431、過去3着以内率 +0.221、過去勝率 +0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7e343ee7-743f-52c1-8e6a-025839f5f373', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 11, 'production', 0.03416111563092166, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.313、直近3走の着順比 -0.276、過去3着以内率 +0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d0dc71ee-3a35-5119-9e91-6ab6a4dff20a', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 12, 'production', 0.09115597956258957, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.368、過去3着以内率 +0.355、前走からの日数 -0.306。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5304173e-04b4-5572-afaa-9f0b856299bb', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 13, 'production', 0.034351232642701866, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.981、過去3着以内率 +0.323、過去勝率 +0.140。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ad93b400-00c9-5a60-9793-f8adc3406957', '41bf8ff2-efc5-4145-abce-370389dcc9f8', 14, 'production', 0.052186537330777966, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 前走距離 +0.687、過去走数 -0.380、直近3走の着順比 -0.315。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f368b8ab-649a-5a07-86e8-6424efe65a81', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 1, 'production', 0.023439365411099044, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a89030a-2f94-5c58-92d6-358bc348de55', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 2, 'production', 0.07308985396124928, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.681、過去3着以内率 +0.453、前走からの日数 -0.273。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e13189f4-3da8-5f04-b42c-9af7b46e5a26', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 3, 'production', 0.037720936727931434, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.310、過去3着以内率 +0.240、前走距離 +0.065。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('06d3d507-73e1-5851-bc24-1738ecd47e7a', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 4, 'production', 0.034361491165015814, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.411、過去3着以内率 +0.262、前走からの日数 -0.232。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ca591a97-de19-5d45-a30d-21c9ca854947', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 5, 'production', 0.05434904937769969, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、3勝（60.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.588、過去3着以内率 +0.204、平均着順比 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ac60213-82ec-5157-ada1-fd4edbb3e279', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 6, 'production', 0.05245299671098198, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.683、過去3着以内率 +0.251、平均着順比 +0.167。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('91106a9c-b0d2-5d60-adeb-b776746d8863', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 7, 'production', 0.0629010515019033, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.754、過去3着以内率 +0.375、平均着順比 +0.208。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f76c5b0-a751-59e4-8745-ade5736a4133', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 8, 'production', 0.1317517429616837, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.828、過去3着以内率 +0.442、平均着順比 +0.349。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d89633c-a822-5837-8b6c-a1b0a7afa296', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 9, 'production', 0.02728476170421357, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.221、過去走数 -0.179、前走距離 +0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef1fb370-fb85-57fe-ad36-e98e571bbcbc', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 10, 'production', 0.016058481171820585, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.393、過去3着以内率 +0.263、過去走数 -0.199。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f5c20c8a-572f-5c6e-b517-30f06b206e84', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 11, 'production', 0.03200649912084631, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.679、前走からの日数 -0.407、過去3着以内率 +0.276。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('aa7ffb82-6fb8-564b-bb88-9d4dd44f029c', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 12, 'production', 0.08075273251608019, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、3勝（75.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.782、過去3着以内率 +0.406、平均着順比 +0.207。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('02fa0a59-523d-5212-827a-03903e5fb7fe', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 13, 'production', 0.04623525240254888, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.286、過去3着以内率 +0.225、過去走数 +0.175。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('46827644-ae9a-5995-9ef3-b5163db33ac4', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 14, 'production', 0.04991327068774619, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.480、過去3着以内率 +0.264、平均着順比 +0.203。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d041b59f-73b6-57b1-88d5-e06739674043', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 15, 'production', 0.12029714907016388, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.849、過去3着以内率 +0.423、平均着順比 +0.336。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('10bffe74-fe77-53cb-8c38-c0710cd382a8', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 16, 'production', 0.024037202083674682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、2勝（28.6%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.300、過去走数 -0.214、過去3着以内率 +0.184。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4463dde7-98bb-55b1-b3cb-10c9c00feabd', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 17, 'production', 0.08842958591523639, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.880、過去3着以内率 +0.464、平均着順比 +0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f7eb9ec-5869-5cfa-9a23-bf0b09fd5cc8', '5c039fec-75e1-4a2b-b351-07dccdae9d48', 18, 'production', 0.04491857751010506, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、3勝（30.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.654、過去3着以内率 +0.250、平均着順比 +0.127。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fffb1557-27de-5099-b987-c4ba5b65ba88', '0f9067d7-b3dc-4511-9998-10d428403d16', 1, 'production', 0.044651079395670965, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.422、過去3着以内率 +0.143、前走距離 -0.140。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('377b1d16-4d74-5767-8240-2c6d830205f3', '0f9067d7-b3dc-4511-9998-10d428403d16', 2, 'production', 0.029262218608479853, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.505、直近3走の着順比 +0.219、前走距離 -0.153。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b66bcf4a-95cd-5024-8c04-13d4b460f87f', '0f9067d7-b3dc-4511-9998-10d428403d16', 3, 'production', 0.06518732110558481, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.292、過去走数 -0.193、前走距離 -0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f36d87aa-ca7d-587a-884f-39e32b8a0edc', '0f9067d7-b3dc-4511-9998-10d428403d16', 4, 'production', 0.03682830839179869, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.609、直近3走の着順比 +0.401、前走距離 -0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9fcf5ee2-f55e-5661-973c-f641a7570d0f', '0f9067d7-b3dc-4511-9998-10d428403d16', 5, 'production', 0.04812956823591298, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.458、過去3着以内率 +0.163、過去勝率 +0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('277f8656-3c15-5acb-9949-94555f58ec58', '0f9067d7-b3dc-4511-9998-10d428403d16', 6, 'production', 0.04512885380551005, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.482、直近3走の着順比 +0.355、前走距離 -0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8eb0e7f9-98be-588c-8e78-714338bd7544', '0f9067d7-b3dc-4511-9998-10d428403d16', 7, 'production', 0.03923989672623024, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.210、直近3走の着順比 -0.171、過去3着以内率 +0.162。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b5f0b891-5bfe-537e-8e71-e6d1e5dff415', '0f9067d7-b3dc-4511-9998-10d428403d16', 8, 'production', 0.09688501673113646, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.336、過去3着以内率 +0.238、過去走数 -0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('68f36d55-8298-5d76-ae39-f667e8d2547f', '0f9067d7-b3dc-4511-9998-10d428403d16', 9, 'production', 0.11262760377047017, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.633、平均着順比 +0.135、前走距離 -0.133。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5649aa7d-e0fb-59a8-bf68-4113d7ced358', '0f9067d7-b3dc-4511-9998-10d428403d16', 10, 'production', 0.05245616519978432, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 過去走数 -0.590、直近3走の着順比 +0.529、直近5走の着順比 +0.158。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('02e0c766-b438-538c-8106-d3b228385f09', '0f9067d7-b3dc-4511-9998-10d428403d16', 11, 'production', 0.2615146170384339, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.906、平均着順比 +0.346、過去3着以内率 +0.297。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5222dd27-dbb1-5c46-a370-ad03f5b37343', '0f9067d7-b3dc-4511-9998-10d428403d16', 12, 'production', 0.05886630230054662, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.325、直近3走の着順比 +0.178、前走距離 -0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6118a793-7d0e-5e14-8f34-9e76c830d41d', '0f9067d7-b3dc-4511-9998-10d428403d16', 13, 'production', 0.1092230486904409, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.656、前走距離 -0.147、過去3着以内率 +0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:42.443116+00:00') on conflict (id) do nothing;
commit;
