begin;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3c89aed-5dc3-5304-b82f-25abdeafa068', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 1, 'production', 0.02438670890345567, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.288、過去走数 +0.245、平均着順比 -0.045。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea577883-925e-546f-aec4-c4a5741e3c1e', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 2, 'production', 0.05327544746937351, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.733、過去3着以内率 -0.339、平均着順比 +0.165。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f2f32e4f-1abb-558f-8975-0b72bbc960db', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 3, 'production', 0.11812410360678552, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.827、過去3着以内率 +0.338、過去勝率 +0.185。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1cc983aa-f475-5839-a3a6-5d1c79f8be92', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 4, 'production', 0.02380580942922869, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.371、過去走数 +0.179、直近5走の着順比 +0.040。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b6e1e4d6-cacc-5db5-869f-6af3e264e16f', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 5, 'production', 0.06286286774107362, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.473、過去勝率 +0.113、平均着順比 +0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('008212a9-23d1-5c68-8b61-df0839302df8', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 6, 'production', 0.006950147950752976, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.107、過去走数 +0.431、平均着順比 -0.301。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('76b447c0-4ee5-5f9d-80b7-58bb668b5c80', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 7, 'production', 0.11030062247515958, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.769、過去3着以内率 +0.176、過去勝率 +0.175。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e3048d4e-7a5d-5490-98ac-8b14782e0c4f', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 8, 'production', 0.0020773108335620763, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.521、平均着順比 -0.582、直近5走の着順比 -0.298。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('02421c0e-a021-59c3-84c5-013844422237', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 9, 'production', 0.24626495107537716, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.030、過去3着以内率 +0.370、過去勝率 +0.296。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f785bd17-012c-5f85-bc94-181f83fec59e', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 10, 'production', 0.023797734825381448, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.230、過去3着以内率 +0.203、直近3走の着順比 -0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7a3527aa-0cdf-5425-8a4a-a26fa970951d', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 11, 'production', 0.11155787286889426, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.769、過去3着以内率 +0.202、過去勝率 +0.196。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b7749673-fa52-5a2c-93fd-b8a7f7437086', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 12, 'production', 0.018237894171175148, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.353、過去走数 +0.147、直近3走の着順比 -0.147。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe68ab11-74d4-515b-9a88-d4165692c65d', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 13, 'production', 0.0037242275283811818, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.907、平均着順比 -0.454、過去3着以内率 -0.304。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('16436249-89d0-5cb4-a343-d0e7f3f76798', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 14, 'production', 0.03100037549350258, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.316、過去3着以内率 +0.136、過去勝率 +0.128。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('22d25349-42a4-52e5-9730-66b54884559b', 'c4ebdadb-571b-44c4-a8f0-53060c1b7165', 15, 'production', 0.1636339256278965, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.065、過去3着以内率 +0.363、過去勝率 +0.240。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8655d4a4-b6dd-56e5-ac20-1a190a2ed23e', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 1, 'production', 0.09870160620415651, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.657、平均着順比 +0.306、前走距離 -0.128。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25834e18-ef64-5bae-8319-e0345ec01168', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 2, 'production', 0.003768735768463139, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.147、平均着順比 -0.381、過去3着以内率 -0.274。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2190b861-03b4-5034-8880-a3c6ae3d6511', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 3, 'production', 0.016343084145580195, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.693、直近5走の着順比 -0.192、前走距離 -0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('120e99c8-87e0-5cca-ba4a-01e4aab8f937', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 4, 'production', 0.010248286079785297, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.759、過去3着以内率 -0.264、平均着順比 -0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('22c2fbfc-4abe-560f-bede-19e228bc9323', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 5, 'production', 0.09680047773085679, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.621、過去3着以内率 +0.261、前走距離 -0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c11a1b1-1aca-583f-b18b-ee3e9a2ced88', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 6, 'production', 0.02375529895326105, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.479、前走距離 -0.113、前走からの日数 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('55f24cfc-1f42-5a4d-9689-7a92ed22cb2e', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 7, 'production', 0.010352078140211938, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 -0.318、前走からの日数 -0.308、過去3着以内率 -0.251。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f3f5a7d-faeb-5e0e-9627-c52f5688a037', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 8, 'production', 0.2237303145134371, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.978、過去3着以内率 +0.374、過去勝率 +0.180。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d973a63e-89d1-5331-90ce-b8cc65122ac5', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 9, 'production', 0.01579127634696177, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.809、過去勝率 +0.114、前走からの日数 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc56900c-cf12-56ee-916b-1f15808ef00d', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 10, 'production', 0.029971676718639942, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.267、直近3走の着順比 +0.207、前走距離 -0.161。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d9e41785-a9e3-5350-a92b-3e18e78108c9', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 11, 'production', 0.15924921680768972, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.910、過去3着以内率 +0.343、平均着順比 +0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c338ed2-9b22-5f3d-be1b-63238ff334a7', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 12, 'production', 0.08638108276166993, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.534、過去3着以内率 +0.112、直近5走の着順比 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ffe2057f-883d-533f-806a-f4ee8689219b', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 13, 'production', 0.04347533721338832, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 -0.103、前走からの日数 +0.101、過去3着以内率 -0.094。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ca9bbc96-09b7-5222-a912-f88765b0c71d', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 14, 'production', 0.02620271658572732, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.268、前走距離 -0.131、直近5走の着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a7b0a294-a406-5809-9ac6-858affcacc38', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 15, 'production', 0.05206781699985902, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.402、過去3着以内率 -0.184、平均着順比 +0.182。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14462eff-bd17-5d83-9652-89d402936d94', 'ba25d2bd-e27b-48dd-b673-8b96fe296bde', 16, 'production', 0.10316099503031202, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.499、過去3着以内率 +0.315、前走からの日数 +0.140。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('33c4d9bc-24a7-56d3-a76a-064edacba276', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 1, 'production', 0.010698306462571888, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.322、過去走数 +0.425、平均着順比 -0.413。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('013cbb7f-68f4-57a9-a805-db878d85c2c9', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 2, 'production', 0.011908058550411363, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.092、平均着順比 -0.305、直近5走の着順比 -0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f584f870-9c91-52b1-9455-0937e13a82a8', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 3, 'production', 0.026229864822180343, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.746、過去走数 +0.366、過去3着以内率 -0.208。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('28b3b2b8-47e3-5f10-83b7-6bb5e1707736', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 4, 'production', 0.018646968009594388, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.752、直近5走の着順比 -0.223、過去3着以内率 -0.216。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('df32cdec-8efb-536a-8ab9-7cb641be2de8', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 5, 'production', 0.018892826380139338, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.615、平均着順比 -0.249、過去3着以内率 -0.239。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('843425c4-234f-520d-ad63-a2e21a673679', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 6, 'production', 0.024694824049625672, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.400、過去走数 +0.238、過去3着以内率 -0.238。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('37c9dad5-4ae8-5eaf-a2c9-090735b5bed7', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 7, 'production', 0.017769580307142267, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.094、過去走数 +0.499、平均着順比 -0.301。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b0798e06-b101-507b-b325-fe9fd3f21136', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 8, 'production', 0.015269660143808785, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.297、過去走数 +0.501、平均着順比 -0.368。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('da4465c6-ea5c-53e6-baf5-eb1586207fbb', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 9, 'production', 0.022407334945337778, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.735、過去走数 +0.326、過去3着以内率 -0.210。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39895f7d-45ec-5cbe-8d9f-8e2ccc8a8592', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 10, 'production', 0.015572672305360694, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.267、過去走数 +0.515、平均着順比 -0.376。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('763dd309-120c-52e9-b056-b3f78ccc9f43', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 11, 'production', 0.07950192410451512, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.279、過去3着以内率 -0.254、過去走数 +0.192。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3546ab19-715d-5eb6-b312-6afb52c9de2e', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 12, 'production', 0.05822369894889566, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.293、過去走数 +0.201、前走距離 +0.074。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a6992439-ce0e-5bee-a3f3-b8c249f0f45b', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 13, 'production', 0.1039670437337055, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.720、過去3着以内率 -0.365、平均着順比 +0.132。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e5478ca2-82e4-5b43-8581-8c6bd3b78516', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 14, 'production', 0.5203828472059558, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +1.119、過去3着以内率 +0.399、過去勝率 +0.269。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('58c3d1a3-5e8c-500c-b338-695749c10dc3', '6c105b98-b29c-4ca2-9ca5-a474d623a232', 15, 'production', 0.055834390030755424, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.373、過去走数 +0.143、直近5走の着順比 +0.073。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('30980459-d880-5cf8-9900-d214bfaaeea7', 'd1234661-7b7d-471b-8645-61be44d2b63c', 1, 'production', 0.10102820172482611, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.356、過去3着以内率 +0.306、直近3走の着順比 -0.280。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('36494e6e-28dc-52b6-9255-f51f4b588e21', 'd1234661-7b7d-471b-8645-61be44d2b63c', 2, 'production', 0.027702947269188375, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.500、過去3着以内率 -0.287、平均着順比 -0.172。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8196acbe-3cbc-5821-ae21-41b1a59b8462', 'd1234661-7b7d-471b-8645-61be44d2b63c', 3, 'production', 0.022270766980863013, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.477、前走距離 +0.389、平均着順比 -0.383。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ec20f07-2184-552a-a3c9-d553afebbc46', 'd1234661-7b7d-471b-8645-61be44d2b63c', 4, 'production', 0.011147697023048068, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.397、過去走数 -0.316、直近5走の着順比 -0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4b18d5af-716f-5201-bfeb-8bcdee84fe92', 'd1234661-7b7d-471b-8645-61be44d2b63c', 5, 'production', 0.11864987374919878, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.647、直近3走の着順比 +0.491、過去3着以内率 -0.423。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a98e8752-e36f-500f-af50-11260ecca9f6', 'd1234661-7b7d-471b-8645-61be44d2b63c', 6, 'production', 0.019063343742678377, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.823、過去走数 -0.509、過去勝率 +0.147。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c8e8891f-856c-5646-93e2-7cc44bb25aa9', 'd1234661-7b7d-471b-8645-61be44d2b63c', 7, 'production', 0.2774569430747423, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +1.196、過去走数 -0.318、直近3走の着順比 +0.200。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c99467e-e905-5f91-af17-fef03f1165c0', 'd1234661-7b7d-471b-8645-61be44d2b63c', 8, 'production', 0.2154670743203988, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +1.185、過去走数 -0.337、過去3着以内率 +0.216。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a11c5d01-9814-5639-b3d6-09c57c3a63e8', 'd1234661-7b7d-471b-8645-61be44d2b63c', 9, 'production', 0.04769473641248715, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.578、過去走数 -0.420、過去3着以内率 -0.338。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ce3a6d7b-6082-5b2a-9aea-60d8c952ef86', 'd1234661-7b7d-471b-8645-61be44d2b63c', 10, 'production', 0.05760315209045173, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.538、前走距離 +0.334、前走からの日数 -0.293。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('781262b8-4940-5c2d-9a1f-7cfb658a368c', 'd1234661-7b7d-471b-8645-61be44d2b63c', 11, 'production', 0.022364406601468823, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.968、前走距離 +0.606、過去走数 -0.478。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db9a4330-8fc8-52a9-8454-dcc184c3acaa', 'd1234661-7b7d-471b-8645-61be44d2b63c', 12, 'production', 0.008960195652563946, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.940、過去3着以内率 -0.278、直近5走の着順比 -0.228。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f1bfcbc7-9809-547d-8502-c7d01211f80a', 'd1234661-7b7d-471b-8645-61be44d2b63c', 13, 'production', 0.07059066135808471, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.716、直近3走の着順比 -0.646、過去走数 -0.105。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eacdc7b5-1926-5475-a755-c13ca3ab7814', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 1, 'production', 0.016021648257951052, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.398、平均着順比 -0.314、前走距離 +0.281。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a785bffb-e5c9-53eb-8bdc-787c18a6a3cb', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 2, 'production', 0.09036285939923265, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.856、過去走数 -0.420、過去3着以内率 +0.197。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0945779b-49c3-5908-988d-9fce0841ed5a', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 3, 'production', 0.053090194643681164, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.413、過去走数 -0.296、直近3走の着順比 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dfbff549-21ec-58e0-90b3-6af533a07a35', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 4, 'production', 0.1355515594792012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.743、前走距離 +0.189、平均着順比 +0.163。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1794b35b-246b-5e3f-9b06-4b405bd7eea0', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 5, 'production', 0.13813104914763252, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.718、直近3走の着順比 +0.690、過去走数 -0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cce9efab-22fc-57db-bc12-2e5cb4b9eae2', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 6, 'production', 0.14166398040695352, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +1.030、直近3走の着順比 +0.435、過去走数 -0.269。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba2407cb-67fa-5290-a894-7bc0c9bfcbea', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 7, 'production', 0.07104349064019891, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.365、直近3走の着順比 +0.243、過去走数 -0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dbe50de8-18f3-501c-a0d5-525da50993fa', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 8, 'production', 0.040367850820424864, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.445、過去走数 -0.365、直近3走の着順比 +0.329。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f38dea16-ee4a-5015-afbe-3e76388e5328', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 9, 'production', 0.07149098502894877, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 前走距離 +0.490、過去走数 -0.420、過去3着以内率 +0.307。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf7fb23a-06a1-5284-b4f7-4475742f265a', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 10, 'production', 0.05942428098389236, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.946、過去走数 -0.362、前走からの日数 -0.187。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7320d94b-4c5e-5fc4-bb23-36d7a75c4d87', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 11, 'production', 0.06718698896055404, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.461、前走距離 +0.301、過去走数 -0.289。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9f753db4-04aa-5f3c-ac45-5878ef3b0de2', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 12, 'production', 0.027267833734567648, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.346、過去走数 -0.308、直近3走の着順比 -0.260。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4469c089-97d3-50c2-897c-e0043e977a31', '1d9d0531-d188-43f4-9280-0a73e041fbbc', 13, 'production', 0.08839727849676138, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.613、前走距離 +0.290、過去走数 -0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('214a463a-4dd7-52d7-9e0f-cb1bb3c73da7', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 1, 'production', 0.0352552456276954, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.193、過去走数 -0.090、直近5走の着順比 +0.070。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f93cda1-f380-5a11-a3c3-3727a89e3fa5', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 2, 'production', 0.0469303542641255, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.801、直近3走の着順比 +0.453、過去走数 +0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8656f132-77aa-5d59-9e53-24e78d36f26b', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 3, 'production', 0.06578938301229537, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.565、過去走数 -0.462、直近5走の着順比 +0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f51dcd3-f61a-51e6-aaef-bbbb4056befa', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 4, 'production', 0.03323582760962194, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 平均着順比 -0.205、前走からの日数 -0.139、過去3着以内率 -0.099。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('45571dff-af01-576e-944f-a3c7aadf32b9', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 5, 'production', 0.06285491715661351, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.455、過去3着以内率 +0.307、直近3走の着順比 +0.257。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db6728f9-af6f-5bdd-baf7-36e93bd05c9c', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 6, 'production', 0.17026416317777063, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.554、過去3着以内率 +0.327、平均着順比 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('12f726e5-2720-58d1-9354-8553bbca1085', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 7, 'production', 0.08298696583711053, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.295、直近3走の着順比 +0.255、前走からの日数 -0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('beb3547a-2f90-5e48-aa75-26c34048f9c0', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 8, 'production', 0.0684430311251935, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.328、前走からの日数 -0.153、直近3走の着順比 -0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ea02b8c-e607-55ee-bf6e-a84846bf2e52', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 9, 'production', 0.08904397580151195, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.655、過去3着以内率 -0.092、直近5走の着順比 +0.080。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('97027042-7a94-5787-be9a-0c56d4c9a168', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 10, 'production', 0.08603634011436471, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.269、平均着順比 +0.127、前走距離 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('314bc831-765a-57e9-88fa-c9f5b60beeff', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 11, 'production', 0.027121532597517792, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.235、直近3走の着順比 -0.168、前走距離 -0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('563a2438-6aa1-502f-b120-45c057bb6975', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 12, 'production', 0.06128981051725748, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.171、過去3着以内率 +0.144、過去走数 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5cc6212e-0a7e-5fd9-9785-f4316b5d7773', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 13, 'production', 0.11117707358540158, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.381、過去3着以内率 +0.253、前走からの日数 -0.236。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('564bfa89-4464-51d6-ad4b-9bd47ef86994', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 14, 'production', 0.03127172527169888, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.241、直近3走の着順比 -0.141、直近5走の着順比 +0.068。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae38ca72-25a2-57bc-9cdf-89ec51b65edb', 'b5b79986-9327-4ac6-bd26-bd5b7adbd0d9', 15, 'production', 0.02829965430182128, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 -0.386、直近3走の着順比 -0.327、過去3着以内率 +0.234。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cb690cb6-1d9f-5632-b4ad-4d504928f9b2', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 1, 'production', 0.11538790915378538, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.491、過去3着以内率 +0.354、過去勝率 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a9d8602-060c-59ea-b5c7-479f989822f2', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 2, 'production', 0.009670446444465781, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.733、平均着順比 -0.253、過去3着以内率 -0.232。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('995b40ea-4cbe-5fb2-bf01-8083ece4bd63', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 3, 'production', 0.056868656884250225, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.445、過去3着以内率 -0.339、過去走数 +0.110。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3bd1bae9-9ae9-539b-a793-9e48760e0781', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 4, 'production', 0.1631086104291532, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.691、過去3着以内率 +0.318、過去勝率 +0.136。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f27997c7-0621-5fc7-a6bf-00aa83f8bb49', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 5, 'production', 0.026029661551563995, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.295、過去走数 +0.216、直近3走の着順比 -0.211。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d6e44a65-6b96-5846-8c5b-80a22f10e581', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 6, 'production', 0.011596037091782859, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.886、過去走数 +0.397、平均着順比 -0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bfd95a27-f602-5411-9ab3-9ea9eb90126d', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 7, 'production', 0.07804057222585546, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.315、過去走数 +0.156、過去3着以内率 +0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1dde1bff-ef24-5abd-86f0-d8b8ebc4bc31', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 8, 'production', 0.013740179705617785, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.477、過去走数 +0.266、過去3着以内率 -0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3a645987-0ee3-5f7b-aa1c-9dc0b4f870de', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 9, 'production', 0.1375707047293558, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.761、過去3着以内率 +0.316、過去勝率 +0.158。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a91a48a-0743-5420-bda6-c3c0b598518e', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 10, 'production', 0.024874047343768718, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.296、過去走数 +0.189、直近3走の着順比 -0.147。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af8f1785-360d-5fdf-a7da-a7fd044679c5', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 11, 'production', 0.05409078794251716, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.368、過去3着以内率 -0.292、過去走数 +0.096。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ad2084c1-7f0f-54d4-a30b-58c7efc71db1', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 12, 'production', 0.02272153664845796, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.345、直近3走の着順比 -0.191、過去走数 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c88bc968-9efd-543c-b62e-48bbd81eae27', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 13, 'production', 0.025070643737952696, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.333、過去走数 +0.174、直近3走の着順比 -0.165。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4cb3c03b-23ab-5de8-b8cf-fe79658b20bc', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 14, 'production', 0.1436244550466704, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.733、過去勝率 +0.188、過去3着以内率 +0.169。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e425d1a8-6a34-51e5-a771-f16693dc905f', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 15, 'production', 0.030784870596852074, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.298、過去走数 +0.206、直近3走の着順比 -0.073。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5280c5a5-3525-57e3-b5bb-618603820c2f', 'b1f61f9a-74dc-4ff4-8892-9ace9b1f6e82', 16, 'production', 0.0868208804679505, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.731、過去3着以内率 -0.329、平均着順比 +0.155。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0bbbc65-6656-5f56-97e0-7738d13ec21a', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 1, 'production', 0.08942591821785736, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.433、過去3着以内率 +0.257、平均着順比 +0.181。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('96b2a55a-23c3-51cc-8c43-10e10d920d12', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 2, 'production', 0.03647410597456729, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.156、平均着順比 -0.082、前走距離 +0.068。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fd7de2c4-c7de-53d3-a404-e7255885369f', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 3, 'production', 0.19591880602114284, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.698、過去3着以内率 +0.385、平均着順比 +0.264。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1f6b9b27-7a1e-58e2-8c4e-516eb0be2496', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 4, 'production', 0.031043807837806144, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.486、前走からの日数 -0.318、過去3着以内率 +0.273。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4304eba5-2287-5a00-9030-9d548bbc9002', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 5, 'production', 0.07015193452479757, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.699、過去3着以内率 -0.334、直近5走の着順比 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d0ef4703-3c43-5224-b180-326bd25cabfb', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 6, 'production', 0.03297659517634742, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.203、過去走数 +0.082、直近5走の着順比 -0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f43dbcca-7527-5d1a-9b4c-f7ffd8c87a7b', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 7, 'production', 0.06874589326797434, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.394、過去3着以内率 -0.124、前走距離 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f4db72d7-e9c2-500e-b7fb-1274d2a77540', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 8, 'production', 0.012009267810561374, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.870、過去走数 -0.301、直近5走の着順比 -0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('03f5c3c4-8f3d-5be2-812a-034a3c06806a', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 9, 'production', 0.0493789260249644, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.187、平均着順比 -0.149、直近3走の着順比 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('271ca8ee-5490-51f9-af98-3192844315ff', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 10, 'production', 0.0388338822993592, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.248、平均着順比 +0.083、前走距離 +0.073。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d1494b9-9b7b-5cc2-a4d7-f78c20c44eb6', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 11, 'production', 0.0695847802218486, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.317、過去走数 +0.097、直近5走の着順比 +0.086。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f92b44ee-49fa-535d-b4e6-9b9b116c67fa', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 12, 'production', 0.0751337653872689, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.361、過去走数 +0.140、直近3走の着順比 +0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f375a455-210f-5e8c-a1b1-1435ca12797d', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 13, 'production', 0.04782979201725092, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.214、過去走数 +0.129、過去3着以内率 +0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87e2b966-09c9-502a-b008-551944d410d6', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 14, 'production', 0.0497114750175081, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 前走距離 +0.190、過去3着以内率 -0.121、前走からの日数 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4758ac71-bb8b-5301-bbd4-4cc9558cdbaf', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 15, 'production', 0.07370107710124855, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.557、過去3着以内率 -0.162、平均着順比 +0.162。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('007a2bf5-7e17-59d5-bfc8-6c752b8f2fc2', 'acaf432a-296a-4223-8c2b-9c13b065d7fa', 16, 'production', 0.05907997309949689, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.422、過去走数 -0.244、前走距離 +0.168。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4592edcd-e3cc-56ab-a268-d0ea55fffb1c', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 1, 'production', 0.029768031663838027, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.530、直近3走の着順比 +0.291、前走からの日数 -0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29e4cda2-2813-5d1f-a1fa-efcd06957b0e', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 2, 'production', 0.11791903561620626, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.590、過去3着以内率 +0.228、平均着順比 +0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d18a7c67-436c-50ad-bd39-b8265d004d10', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 3, 'production', 0.06129737840875364, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.330、直近3走の着順比 -0.157、過去走数 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bca1779d-6c90-5ce2-9baa-a06e84280ac4', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 4, 'production', 0.04507887087140729, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.509、過去3着以内率 +0.282、直近5走の着順比 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7e276f3c-c2fb-5081-989a-2268fd530ab0', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 5, 'production', 0.016810054232667175, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.670、直近5走の着順比 -0.122、過去3着以内率 -0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('58434471-9c77-5603-bd4c-dc1a1d98c545', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 6, 'production', 0.09732839755845511, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.736、前走からの日数 +0.105、直近5走の着順比 +0.079。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('615dc53c-71d6-5b0a-abe3-a939a933793e', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 7, 'production', 0.008784151638284495, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.442、直近3走の着順比 -0.384、前走距離 +0.375。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6877befb-99ea-5da0-804d-02851a73e3ef', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 8, 'production', 0.07599662062615223, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.408、直近3走の着順比 -0.186、直近5走の着順比 +0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4e69a057-fce6-5d4f-a407-f680a405f428', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 9, 'production', 0.018970899035263673, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.485、直近5走の着順比 -0.185、過去勝率 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e2dc0ecd-144f-5402-b391-d598e34ded86', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 10, 'production', 0.008867814178081738, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.555、直近3走の着順比 -0.419、過去3着以内率 -0.304。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('102eae4d-a64b-5601-815f-bee735c196a8', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 11, 'production', 0.024371749389972552, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.712、過去勝率 +0.136、過去3着以内率 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9f805366-0617-55b6-9b4c-2224ad1daa2a', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 12, 'production', 0.10845593551452178, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.462、平均着順比 +0.165、過去3着以内率 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f902e5c7-9e35-5dd2-afed-8d585999f8ed', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 13, 'production', 0.05713053584675511, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.288、過去3着以内率 -0.122、直近5走の着順比 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9c094c61-77aa-5510-8c60-06befc33f259', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 14, 'production', 0.01730754246029107, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.538、過去3着以内率 +0.125、過去走数 -0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e24b3f76-05a6-5648-8778-e93af9fb9a99', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 15, 'production', 0.24794924187324452, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.953、過去3着以内率 +0.449、平均着順比 +0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4f910859-25a5-5743-b65d-5c31e221488b', 'af9fdf98-1f7d-44c2-ad53-ef012bf398c0', 16, 'production', 0.06396374108610534, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.260、直近3走の着順比 +0.109、過去走数 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f6d1b15-ea29-5079-a28e-700567f1f9bc', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 1, 'production', 0.1538471721960972, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.774、過去3着以内率 +0.245、平均着順比 +0.183。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('99eb9c5c-66d2-5075-9ef9-c4df69ab9baa', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 2, 'production', 0.019609804797322255, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.794、過去3着以内率 +0.242、前走距離 -0.163。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f508e08f-48ca-571c-a102-87e51e41adf0', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 3, 'production', 0.0706183785737072, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.531、前走からの日数 -0.223、過去3着以内率 +0.175。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('789974e4-2ac4-5cf0-a026-71c46459e334', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 4, 'production', 0.0875893615068825, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.496、過去3着以内率 +0.190、直近5走の着順比 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('105cd811-b181-5108-97e3-4814007d507d', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 5, 'production', 0.012773632240687569, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.762、平均着順比 -0.262、前走距離 -0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9b83f96e-2ea4-5593-a43e-472dcbf45639', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 6, 'production', 0.11888672502001488, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.712、過去3着以内率 +0.322、過去勝率 -0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82295017-13f9-5d22-8819-0a91becdcf23', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 7, 'production', 0.1463174638296586, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、2勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.715、過去3着以内率 +0.298、平均着順比 +0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('356cbeb5-9fb4-5873-a711-2f1894bda603', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 8, 'production', 0.01808664549389853, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.658、前走距離 -0.174、直近5走の着順比 -0.167。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ab50d3c4-2203-5229-9b88-48479e4c86c1', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 9, 'production', 0.022723215856311655, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.770、前走距離 -0.145、過去勝率 +0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6c83a6db-d70b-5aea-844e-bded1935e441', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 10, 'production', 0.013913572696542871, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.869、過去勝率 +0.195、直近5走の着順比 -0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e60ef55e-073f-5a56-95f7-c500c9873dfe', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 11, 'production', 0.055774662024154174, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.371、過去走数 -0.195、前走距離 -0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d32ef89d-9de2-5934-84db-62890af71cd1', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 12, 'production', 0.01107231344250435, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.635、平均着順比 -0.418、直近5走の着順比 -0.183。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f0f836f-2c16-5f24-8ad4-562ac375612b', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 13, 'production', 0.018774179745437027, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.464、直近3走の着順比 -0.340、前走距離 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05cd4112-3b4b-5f1c-ad37-8b5f8b48508f', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 14, 'production', 0.10460305924625288, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.650、過去3着以内率 +0.366、前走距離 -0.197。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d76fedd1-c65c-5930-8cda-c5355d1f3c7e', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 15, 'production', 0.08607273640904654, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.364、直近3走の着順比 +0.288、前走からの日数 -0.222。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6c145192-02ab-55fa-a31d-d99c2a92038e', '102d770d-ac7d-4a8d-93b1-c8bac3e5754d', 16, 'production', 0.05933707692148184, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.330、前走からの日数 -0.206、過去3着以内率 +0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('42614a7d-448b-51c1-bfd2-b07cae7e1da2', '6770a335-5f30-4259-b012-bfcadba9326b', 1, 'production', 0.0828180035707926, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.528、過去3着以内率 +0.246、平均着順比 +0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('33e188cf-a79b-5846-bf44-33ab19ff8647', '6770a335-5f30-4259-b012-bfcadba9326b', 2, 'production', 0.06940863521145732, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.435、過去3着以内率 +0.237、過去走数 -0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2fa6435c-9b45-59b5-8fdc-0f99fa0b075a', '6770a335-5f30-4259-b012-bfcadba9326b', 3, 'production', 0.048910859019101666, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.278、過去走数 -0.184、過去3着以内率 +0.180。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b288715c-ad91-5314-a94d-08b2b606bd49', '6770a335-5f30-4259-b012-bfcadba9326b', 4, 'production', 0.011525080707576206, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.679、直近3走の着順比 -0.438、前走距離 +0.221。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f4dbc58c-bc79-5793-b6cc-a4ca363a26b4', '6770a335-5f30-4259-b012-bfcadba9326b', 5, 'production', 0.0449987126115301, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.296、直近5走の着順比 +0.107、過去走数 -0.097。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('282e8817-0739-5b3b-a8d4-52dcafea0ce1', '6770a335-5f30-4259-b012-bfcadba9326b', 6, 'production', 0.025046195994676838, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.854、前走距離 +0.282、過去3着以内率 +0.273。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0bf72245-6d9a-588f-94a2-5c415160dec3', '6770a335-5f30-4259-b012-bfcadba9326b', 7, 'production', 0.010771970561580945, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.998、過去走数 -0.230、過去勝率 +0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('33b858d3-a43d-5d69-87f5-8258815a9369', '6770a335-5f30-4259-b012-bfcadba9326b', 8, 'production', 0.10139129752498172, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.744、過去3着以内率 +0.236、前走距離 +0.220。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a61f609d-0b8e-5f96-844c-32e83a9701eb', '6770a335-5f30-4259-b012-bfcadba9326b', 9, 'production', 0.010962053366265012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 過去走数 -0.545、直近3走の着順比 -0.543、直近5走の着順比 +0.088。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0218fc0-9232-50e1-a8d6-52ad4bfc32f3', '6770a335-5f30-4259-b012-bfcadba9326b', 10, 'production', 0.0630353503170803, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.617、前走からの日数 -0.164、平均着順比 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b46ed54e-0eca-589d-b930-4eb1b63682c8', '6770a335-5f30-4259-b012-bfcadba9326b', 11, 'production', 0.07211255977149346, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.250、直近3走の着順比 +0.244、平均着順比 +0.154。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('15a3cff2-db6f-59fd-b7af-2698eef17bd0', '6770a335-5f30-4259-b012-bfcadba9326b', 12, 'production', 0.01745589781895546, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去走数 -0.580、直近3走の着順比 -0.359、過去勝率 +0.250。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b60cefb7-e4de-5d30-829e-87c6a6bbbe9a', '6770a335-5f30-4259-b012-bfcadba9326b', 13, 'production', 0.2021063958489656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.818、過去3着以内率 +0.441、平均着順比 +0.288。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('922d379e-bd69-5adb-a0bc-84d3c59be624', '6770a335-5f30-4259-b012-bfcadba9326b', 14, 'production', 0.043139261743546695, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.345、過去3着以内率 +0.250、前走距離 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0decb85c-669e-55b4-9503-870a963c7950', '6770a335-5f30-4259-b012-bfcadba9326b', 15, 'production', 0.0761575286356573, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.621、過去走数 -0.207、前走距離 +0.186。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('923c0f38-89a9-562b-853a-ac92211567e1', '6770a335-5f30-4259-b012-bfcadba9326b', 16, 'production', 0.1201601972963389, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.741、過去3着以内率 +0.197、平均着順比 +0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('328785b6-9abe-518c-950a-935c2a024322', '17d7193a-174e-48ce-ae56-cb717e654792', 1, 'production', 0.12242687551469841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.831、過去3着以内率 -0.159、前走からの日数 +0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09764881-77f0-5ee2-9837-32fef8830945', '17d7193a-174e-48ce-ae56-cb717e654792', 2, 'production', 0.15071785155840223, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.350、過去3着以内率 +0.330、平均着順比 +0.201。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('13adc8c6-f3a2-50d2-929f-fa8668570a5c', '17d7193a-174e-48ce-ae56-cb717e654792', 3, 'production', 0.04733052418636147, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.251、前走距離 -0.166、直近5走の着順比 -0.105。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('19b685cb-93b9-5226-8ece-e76470b615d9', '17d7193a-174e-48ce-ae56-cb717e654792', 4, 'production', 0.08468512826652899, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.361、前走距離 -0.137、過去3着以内率 -0.112。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db5b812d-bb1a-5237-847d-555a244da94d', '17d7193a-174e-48ce-ae56-cb717e654792', 5, 'production', 0.05825112038562885, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.247、過去走数 +0.210、直近3走の着順比 +0.195。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1331f27a-e16d-5565-90b5-a9eaeedc8142', '17d7193a-174e-48ce-ae56-cb717e654792', 6, 'production', 0.052420179619730306, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.164、直近5走の着順比 -0.148、直近3走の着順比 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4901478e-d21d-588d-a124-f5d75b813f34', '17d7193a-174e-48ce-ae56-cb717e654792', 7, 'production', 0.10261536924579934, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.478、前走からの日数 +0.111、過去3着以内率 -0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f916961-8bae-5c96-8f78-749e2f5baedc', '17d7193a-174e-48ce-ae56-cb717e654792', 8, 'production', 0.01111834802039983, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.107、直近5走の着順比 -0.226、過去走数 -0.205。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('90c4f236-2ceb-5f72-9623-6f0e20638a61', '17d7193a-174e-48ce-ae56-cb717e654792', 9, 'production', 0.019270016542026553, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.891、直近5走の着順比 -0.237、前走距離 -0.166。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('941ce15f-4d59-5bc9-9702-59c9f7e6115a', '17d7193a-174e-48ce-ae56-cb717e654792', 10, 'production', 0.04808544185172167, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 -0.183、前走からの日数 -0.107、直近3走の着順比 +0.057。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe4d3cc1-a35a-56ca-83e8-4041d4b5f97c', '17d7193a-174e-48ce-ae56-cb717e654792', 11, 'production', 0.02749916234961344, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.529、前走距離 -0.091、直近5走の着順比 -0.087。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8b54012c-fc7f-5cc3-982a-4935e5efab8c', '17d7193a-174e-48ce-ae56-cb717e654792', 12, 'production', 0.01882492365050936, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.406、過去3着以内率 -0.382、平均着順比 -0.247。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('339a8140-580f-5f5f-bc52-fb9f284a480b', '17d7193a-174e-48ce-ae56-cb717e654792', 13, 'production', 0.1740730591541704, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.556、過去3着以内率 +0.335、前走距離 -0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('66c84558-119e-5e38-ac24-2023044d2963', '17d7193a-174e-48ce-ae56-cb717e654792', 14, 'production', 0.05258966428559023, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.344、直近5走の着順比 +0.082、平均着順比 +0.078。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('933b7f14-23fc-5e21-ab71-bb8c28e96e49', '17d7193a-174e-48ce-ae56-cb717e654792', 15, 'production', 0.014838118487222784, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.596、直近3走の着順比 -0.590、過去3着以内率 -0.126。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('875fccba-3bcb-52d9-8f33-13888b9e8c99', '17d7193a-174e-48ce-ae56-cb717e654792', 16, 'production', 0.01525421688159619, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.439、平均着順比 -0.355、過去3着以内率 -0.345。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('df8ce414-45bf-5eea-924a-a37b65bf3dfa', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 1, 'production', 0.03253338439016341, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.416、過去3着以内率 -0.318、平均着順比 -0.261。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59d613d1-029b-5559-9393-c67453bf3c18', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 2, 'production', 0.025716828099196322, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.522、平均着順比 -0.263、過去3着以内率 -0.262。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2daf0df8-28ed-5375-b3cf-36e52b805117', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 3, 'production', 0.03285389804268396, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.387、過去3着以内率 -0.307、平均着順比 -0.252。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d62ddb5-4e68-580b-989f-2c0a3bd52847', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 4, 'production', 0.05301348635444541, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.270、過去3着以内率 -0.251、過去走数 +0.227。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f3a8b9d2-fbbb-560b-abd7-0b62a74caa9a', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 5, 'production', 0.04808555511044126, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.359、直近3走の着順比 -0.174、過去走数 +0.128。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f6bfdb96-7fcd-5893-b506-d267b9dcbd68', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 6, 'production', 0.013851012425693645, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.048、過去走数 +0.302、平均着順比 -0.254。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4009433-c29d-51ed-83a1-e45a2620ba68', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 7, 'production', 0.046152489178940596, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.354、直近3走の着順比 -0.225、過去走数 +0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('72125ede-70fd-5eb1-a70b-f5d6f1a461be', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 8, 'production', 0.28285849187149054, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.652、過去3着以内率 +0.238、過去勝率 +0.198。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c70a303a-27c4-5afd-b7ac-c4d5604fff9b', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 9, 'production', 0.04443660600552968, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.278、直近3走の着順比 -0.232、過去走数 +0.166。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5e2db46a-f85c-57db-9e25-8598c1b425a3', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 10, 'production', 0.01816677756512816, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.002、過去走数 +0.319、平均着順比 -0.245。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('61d8e9ca-249b-5472-9e74-173fc7b358e5', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 11, 'production', 0.0315736927557048, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.376、過去3着以内率 -0.325、平均着順比 -0.239。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('16c688ff-9bdf-57b0-99ba-8bb01585d574', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 12, 'production', 0.05731139306449919, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.306、過去走数 +0.160、前走距離 -0.152。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1884c05b-db94-5b8a-918b-5d3b23d284a0', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 13, 'production', 0.1549085934674116, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.222、過去勝率 +0.169、直近3走の着順比 +0.160。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('26a23929-897e-5f9f-a6af-4edb0f8ea8da', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 14, 'production', 0.047319189446748074, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.273、直近3走の着順比 -0.250、過去走数 +0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('50b5ee54-37ed-5b4f-a308-3559f5661cdd', 'c77c814f-a71c-4cbe-8fc9-6df6c9d33cb3', 15, 'production', 0.11121860222192335, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.275、過去3着以内率 -0.265、過去走数 +0.153。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7f898f27-c9f2-5d59-b55e-5e7628d002bc', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 1, 'production', 0.04307834920091021, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.353、過去走数 +0.127、直近5走の着順比 +0.067。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8fdc593c-9829-5dd2-91ff-ccb8b1e24a1c', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 2, 'production', 0.03255642926518443, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.265、直近3走の着順比 -0.245、過去走数 +0.218。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f8c709bb-ece8-52c0-927d-553642ddaa52', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 3, 'production', 0.09806288633468849, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.412、過去勝率 +0.142、過去走数 +0.138。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eaa1dcf6-6bb8-56b6-8f48-36433558a620', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 4, 'production', 0.015572071267815912, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.352、直近3走の着順比 -0.341、過去3着以内率 -0.324。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7847b2ba-a1f3-50b1-a931-4ed65d24afd7', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 5, 'production', 0.09201704128129891, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.728、過去3着以内率 -0.368、平均着順比 +0.138。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c11d549b-d683-5631-aede-fe01dc6c5775', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 6, 'production', 0.04006081838185453, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.360、過去走数 +0.170、前走距離 +0.060。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4173c96e-7771-518f-bcc1-9857834992f6', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 7, 'production', 0.08197649924853834, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.401、直近3走の着順比 -0.163、過去走数 +0.149。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea32a300-bb5d-5d12-8e7a-3e59443131dd', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 8, 'production', 0.03732886285513866, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.293、過去走数 +0.245、直近3走の着順比 -0.168。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6cc618f7-0dca-5732-b998-bcc21a34df20', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 9, 'production', 0.3115083915096868, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.982、過去3着以内率 +0.357、過去勝率 +0.232。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f8efa42c-8ef5-5e38-8f1c-fdc0c0e4c395', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 10, 'production', 0.028584834722081932, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.311、過去3着以内率 -0.304、過去走数 +0.229。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('44a2f027-fd3e-5481-b788-28efde7290db', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 11, 'production', 0.08394041220330706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.471、過去3着以内率 -0.312、直近5走の着順比 +0.104。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ae1d901-3e6f-5c8a-bcd8-8b978f170591', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 12, 'production', 0.05775496849097841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.183、過去走数 +0.154、直近3走の着順比 -0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e2f37a9e-3210-5147-82f0-e46b85ae7b0a', '3af0d3f4-c25e-43f7-83a2-9188a4d6f076', 13, 'production', 0.07755843523851637, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.424、過去3着以内率 -0.315、直近5走の着順比 +0.092。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38af0bb4-42dc-5d8e-a442-77054d521461', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 1, 'production', 0.047629829605253096, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.291、直近3走の着順比 +0.208、過去走数 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9ba02be3-d719-59a9-8732-d15e3ef41896', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 2, 'production', 0.014904347972564118, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.501、過去3着以内率 -0.246、平均着順比 -0.233。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9deb9baa-e2d6-5e04-bc5b-75624fbbd074', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 3, 'production', 0.04256475859867053, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.183、直近3走の着順比 -0.183、過去走数 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fdf9c95e-6864-5e47-8202-b883dc407e8e', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 4, 'production', 0.08853638543817903, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.275、過去3着以内率 +0.269、過去勝率 +0.124。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d6f56875-08ef-5171-a21f-745a49d9d45a', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 5, 'production', 0.030598387648362525, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.293、過去走数 +0.205、直近3走の着順比 -0.199。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ff6dd11c-23f5-5316-adc0-a4bdccd8fda5', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 6, 'production', 0.028012882362390797, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.298、過去走数 +0.191、直近3走の着順比 -0.157。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e85916f-0d20-5ca9-bee3-e546cfd58bc4', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 7, 'production', 0.07105072677283862, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.354、過去走数 +0.130、過去勝率 +0.124。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0542e3ed-f7d5-5cb3-af4b-f66cfeea5bd0', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 8, 'production', 0.09258377090928152, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.393、過去走数 +0.141、直近5走の着順比 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('20ca38f3-0610-5882-b1c4-b50b9bb45545', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 9, 'production', 0.08191040044093045, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.704、過去3着以内率 -0.381、平均着順比 +0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('632a5580-2404-569b-8979-571143137806', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 10, 'production', 0.20308530595254953, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.836、過去3着以内率 +0.328、平均着順比 +0.191。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e9dcff2-d315-546e-8202-d2273b95581a', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 11, 'production', 0.002986705464939349, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.442、平均着順比 -0.597、直近5走の着順比 -0.287。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25d75fae-1b7d-5cad-a7e9-1ffa0b60777b', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 12, 'production', 0.028492748173943396, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.298、過去走数 +0.183、直近3走の着順比 -0.153。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('21f82386-068f-587e-8c9b-e85b704c7926', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 13, 'production', 0.04750636327722781, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.275、直近3走の着順比 +0.212、過去走数 +0.134。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('70aced81-f135-5d84-b5e6-863606230fe4', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 14, 'production', 0.005430725922764541, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.242、平均着順比 -0.399、直近5走の着順比 -0.257。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32ec5b7f-3289-515b-9c38-958f97db9c64', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 15, 'production', 0.028876828926252894, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.295、過去走数 +0.184、直近3走の着順比 -0.155。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4b8724d2-4113-56a9-ba30-f7c45dfeea13', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 16, 'production', 0.02492109084405386, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.500、過去3着以内率 +0.373、過去走数 +0.186。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dd565fbb-01f2-5ce4-863f-33d689846ebd', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 17, 'production', 0.14024101976873526, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.542、過去3着以内率 +0.334、過去勝率 +0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('321b1539-8d29-5645-b4d4-9fb33e2d6bcc', '88386de3-21cd-4ce7-beb4-3a055819b7e2', 18, 'production', 0.02066772192106256, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.277、直近3走の着順比 -0.249、過去走数 +0.166。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b7ef9c29-b0d4-5c92-9cb9-1ff768ff546f', 'bfc17463-19fc-4c9e-893d-372379e49794', 1, 'production', 0.01908837771293212, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.499、過去走数 +0.262、過去3着以内率 -0.227。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('923c3838-65a7-51c8-b48d-69651102760d', 'bfc17463-19fc-4c9e-893d-372379e49794', 2, 'production', 0.08742598615105227, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.168、過去走数 +0.163、過去勝率 +0.079。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('183cf5bc-aef9-57a7-8ec5-0f6b448ac64e', 'bfc17463-19fc-4c9e-893d-372379e49794', 3, 'production', 0.05424424393567761, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.291、過去走数 +0.168、前走距離 +0.075。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4092793d-931a-5485-9377-a4381e994a23', 'bfc17463-19fc-4c9e-893d-372379e49794', 4, 'production', 0.031017112907137934, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.315、直近3走の着順比 -0.276、過去走数 +0.214。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fa6f1c6c-9445-5625-8c0d-c5595d4422ac', 'bfc17463-19fc-4c9e-893d-372379e49794', 5, 'production', 0.0071632448002596745, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.172、平均着順比 -0.348、過去3着以内率 -0.252。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('150fc89f-a7f5-5e6f-beed-ff4756015de2', 'bfc17463-19fc-4c9e-893d-372379e49794', 6, 'production', 0.11697958407241213, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.684、過去3着以内率 -0.319、平均着順比 +0.155。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('938e9255-9551-51a6-af48-f0497d292910', 'bfc17463-19fc-4c9e-893d-372379e49794', 7, 'production', 0.01817354502275616, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.532、平均着順比 -0.255、過去3着以内率 -0.253。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5ec9138b-d08c-598e-84c3-23a0c1461c4c', 'bfc17463-19fc-4c9e-893d-372379e49794', 8, 'production', 0.05970585462324312, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.321、直近3走の着順比 +0.296、過去走数 +0.080。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba997b77-7a7d-594d-b139-1e3bb3cae922', 'bfc17463-19fc-4c9e-893d-372379e49794', 9, 'production', 0.2958708463173734, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.846、過去3着以内率 +0.326、平均着順比 +0.190。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('523cdd18-7f7b-54b2-b1d5-a0f2427ca01f', 'bfc17463-19fc-4c9e-893d-372379e49794', 10, 'production', 0.22018695619106393, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.540、過去3着以内率 +0.401、過去勝率 +0.169。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e66af873-7278-5534-96f3-ed3e5c9f53e2', 'bfc17463-19fc-4c9e-893d-372379e49794', 11, 'production', 0.08135407624515452, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.340、過去3着以内率 -0.241、過去走数 +0.197。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('41b9824d-370c-5bf3-ba2e-cae8159c2533', 'bfc17463-19fc-4c9e-893d-372379e49794', 12, 'production', 0.008790172020937199, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.247、過去走数 +0.332、平均着順比 -0.281。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('019bd402-b0b8-55a0-8c8e-68f249dd4939', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 1, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25b8e737-b7c3-5a54-a965-7169cb889e5f', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 2, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a5bfb472-d58d-5204-b54b-3e6f8ce4c648', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 3, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fbbd21ad-3ed1-59b0-bd57-fdc02702ba8e', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 4, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f9039cb4-d192-5548-9795-388419c0863b', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 5, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('92b8f4b1-6c9e-5dd9-b565-bc5e65069455', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 6, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('69d20d7f-64d2-5ee5-b1a2-d212771f70be', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 7, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d9db2d5-9baa-5082-b378-89e68ee30919', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 8, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5abb329d-ddef-5c58-88d3-40c03a7db685', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 9, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('80aabea4-0aff-530b-82ea-ec7a718e95b7', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 10, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ce377eb-6cf7-5b57-b710-57c8e13a8548', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 11, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('846b74b3-618b-5189-aa4a-9487925ea12a', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 12, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('03dbe1ca-5e2f-5e97-825b-a1a8cb246e0d', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 13, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db0ee1bb-757d-5e8e-bf5c-41e71128d1fa', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 14, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9c39058b-7e7c-5a71-a7d9-3027902742ff', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 15, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b9e2c6d5-a5c4-53b5-96a2-5d9f6958e1eb', 'ce4c3fbc-e575-47f0-b52c-3e09ce88a2e5', 16, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5dc7d5fa-48b3-5d11-8fbf-0e93162c0b49', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 1, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8e674fa2-a903-5de4-92cd-723818e4a222', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 2, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('50869ec3-0169-5ab0-bc5a-b7a99badfc43', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 3, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c82d7a89-8740-5b9a-b1ff-4224e39e5c0f', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 4, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a20f5362-a3d9-52c6-a256-0b499f070fed', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 5, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('27a49dec-d81c-58b4-927d-fe0320786cab', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 6, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8406d21c-f0ae-5152-98ad-df5fbcfb285e', 'ef36ef61-bf45-4d6a-9411-1c3f6b766117', 7, 'production', 0.14285714285714285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ec343c9c-51e6-57cd-a56e-0a5b4a5f7bb8', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 1, 'production', 0.15314927241956197, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.765、過去3着以内率 +0.331、平均着順比 +0.189。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8d9d1781-ce8e-5a9e-aeb9-1057c5b25d9c', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 2, 'production', 0.051011852916630546, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.269、直近3走の着順比 +0.094、直近5走の着順比 +0.087。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fec24f48-a9e4-5ff5-a6f8-01bbf41f6dc6', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 3, 'production', 0.06478484231860691, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.375、直近3走の着順比 +0.361、前走からの日数 -0.257。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('73f9f6e8-4905-5d96-b0e3-55f30840e7ca', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 4, 'production', 0.058049340481194665, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.306、直近3走の着順比 +0.260、前走からの日数 -0.230。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('79ceb9ab-501d-5dc9-909f-4266cf11d4af', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 5, 'production', 0.0772554365433302, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.287、過去3着以内率 +0.263、過去走数 +0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('92768b1c-77a9-5087-8247-14cf0afd0cdd', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 6, 'production', 0.07037343439686661, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.737、過去3着以内率 -0.180、直近5走の着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f2f2004b-8b6f-5271-9b15-036b34bd8be8', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 7, 'production', 0.1114001395487818, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.576、過去3着以内率 +0.314、平均着順比 +0.184。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4da7902a-f3b9-5cf5-80ac-569057146481', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 8, 'production', 0.022453207026728823, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.277、平均着順比 -0.251、過去3着以内率 +0.228。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82eeaf1d-e3da-5b1e-8a7d-e02085d2bf7a', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 9, 'production', 0.013430315151560622, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.452、過去3着以内率 -0.208、前走距離 +0.193。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ced3d815-c9d7-592b-be05-21a06c902eaa', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 10, 'production', 0.04030258112938695, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.237、過去走数 -0.103、前走距離 +0.058。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e778ff23-e423-5b68-b088-bb4cd3345b0f', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 11, 'production', 0.09094708652490023, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.666、過去3着以内率 +0.194、平均着順比 +0.175。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('51904c45-bbf8-5daf-a506-22804d9bc4c5', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 12, 'production', 0.052755953153692144, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.251、直近5走の着順比 +0.101、過去走数 +0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2c14096b-2aaf-51c4-8da3-77535ce22596', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 13, 'production', 0.01454416631290987, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.875、過去3着以内率 +0.238、過去走数 -0.233。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('111a8f7e-6ee5-5d52-a254-671ee8f71c12', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 14, 'production', 0.00827913980158132, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 過去走数 -0.663、直近3走の着順比 -0.549、過去勝率 -0.073。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b2843934-6433-58e5-931e-fbf7425d1ecd', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 15, 'production', 0.12336585784815184, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.751、過去3着以内率 +0.224、平均着順比 +0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98c674c0-05f2-5436-88bf-4e56cad8f340', '4b630f0b-3182-47ac-ae38-1d3aeb1da7be', 16, 'production', 0.04789737442611545, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.442、過去3着以内率 +0.341、直近5走の着順比 +0.154。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bf8ab035-eca3-5294-9a74-bd5f246e36f1', '81800a77-2534-4ba2-9277-0f83c8f6f644', 1, 'production', 0.011131457603911196, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.633、過去走数 -0.305、直近5走の着順比 -0.203。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fca2a004-569c-5983-acd7-a08429b6bacf', '81800a77-2534-4ba2-9277-0f83c8f6f644', 2, 'production', 0.041435449671034026, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.351、過去3着以内率 -0.125、前走距離 -0.073。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9320c99d-bf15-5aef-91e9-c3c0e69d67e6', '81800a77-2534-4ba2-9277-0f83c8f6f644', 3, 'production', 0.011323602495287253, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは11件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.626、過去3着以内率 -0.333、前走距離 -0.087。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e25e98b1-7582-539e-833e-5cb68b2beeb1', '81800a77-2534-4ba2-9277-0f83c8f6f644', 4, 'production', 0.07781208174906334, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.683、過去3着以内率 +0.318、前走距離 -0.183。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1d3101e7-6ac6-572f-a976-ca1516950755', '81800a77-2534-4ba2-9277-0f83c8f6f644', 5, 'production', 0.13230056759091047, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.775、過去3着以内率 +0.312、平均着順比 +0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3bef6be1-9461-54d4-9aa7-c52b1a9c93af', '81800a77-2534-4ba2-9277-0f83c8f6f644', 6, 'production', 0.09251306554730292, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.777、平均着順比 +0.165、過去3着以内率 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('07472ca4-30d2-563c-a7d9-f80de49b8d3f', '81800a77-2534-4ba2-9277-0f83c8f6f644', 7, 'production', 0.11329204321968707, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.586、過去3着以内率 +0.303、平均着順比 +0.225。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('646ea208-6c8d-5da8-b24b-b5fb3661eb4c', '81800a77-2534-4ba2-9277-0f83c8f6f644', 8, 'production', 0.012073806976648468, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.057、過去3着以内率 +0.201、直近5走の着順比 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6bd94c8d-1029-5e57-be3b-43a64ac8a16d', '81800a77-2534-4ba2-9277-0f83c8f6f644', 9, 'production', 0.018596999303503857, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.596、過去3着以内率 +0.166、過去走数 -0.137。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2b0d75a6-f569-56de-b9e1-638541fe94bd', '81800a77-2534-4ba2-9277-0f83c8f6f644', 10, 'production', 0.08330536253868022, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.478、過去3着以内率 +0.307、平均着順比 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c8e4618e-1035-561f-9e86-31a9baa7892f', '81800a77-2534-4ba2-9277-0f83c8f6f644', 11, 'production', 0.04397494407522, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.362、直近3走の着順比 -0.210、平均着順比 +0.112。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1c386d33-cafc-56f8-89a7-313f515d3326', '81800a77-2534-4ba2-9277-0f83c8f6f644', 12, 'production', 0.06816668605851674, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.418、直近3走の着順比 +0.366、前走からの日数 -0.199。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('515e4001-e5c7-516e-950d-c4757afec8fb', '81800a77-2534-4ba2-9277-0f83c8f6f644', 13, 'production', 0.10945403283969807, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.718、過去3着以内率 +0.254、平均着順比 +0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9678ba36-94cf-5811-91e4-9eaf78dbddc1', '81800a77-2534-4ba2-9277-0f83c8f6f644', 14, 'production', 0.09974648514554306, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.737、過去3着以内率 +0.282、平均着順比 +0.210。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b817aa23-31d6-5f2d-aec3-b51c6339d86a', '81800a77-2534-4ba2-9277-0f83c8f6f644', 15, 'production', 0.08487341518499343, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.510、過去3着以内率 +0.309、前走からの日数 +0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0aeab58-5a07-52ff-a090-382015eca2bc', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 1, 'production', 0.12934272980601624, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.300、過去3着以内率 +0.291、前走距離 -0.166。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('194b8eab-fab0-5ca8-9a08-fa8ef14b29ab', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 2, 'production', 0.033958377348496264, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.402、直近3走の着順比 -0.215、平均着順比 -0.207。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('903a6767-a0bb-5ce1-80df-5dcf54547d92', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 3, 'production', 0.2550133118410254, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.710、過去3着以内率 +0.324、平均着順比 +0.224。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1a92c7e1-e7b1-529f-bd3e-aa328f3b7927', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 4, 'production', 0.10413504744329845, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.210、過去3着以内率 +0.113、過去勝率 -0.093。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('df9bb9e0-bca6-58b1-bce4-64c5e5aa8790', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 5, 'production', 0.012302981356198527, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.193、平均着順比 -0.349、過去3着以内率 -0.220。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('26957aa1-5b7b-528c-b020-0736082badbe', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 6, 'production', 0.23939200622500112, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.785、過去3着以内率 +0.330、平均着順比 +0.244。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('caf9f8d4-3674-51c1-a428-9bbc60fdedcb', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 7, 'production', 0.22228976054962601, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.557、過去3着以内率 +0.345、平均着順比 +0.197。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bf559442-bb1b-5f72-a396-d692f7e5d663', 'f96b8dc5-935c-4708-8bd4-9ab97f26308f', 8, 'production', 0.0035657854303379685, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.705、平均着順比 -0.584、直近5走の着順比 -0.336。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a8318f9-13bf-52a6-b741-8fd756f59fbd', '700618d5-ae8b-4352-bceb-8cac11c92b90', 1, 'production', 0.031029776675314105, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは14件、2勝（14.3%）。
推定｜SHAP（生スコア） 過去走数 -0.472、直近3走の着順比 +0.314、過去3着以内率 -0.250。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cac827b8-407c-5d19-8348-0fcc0c1bd05d', '700618d5-ae8b-4352-bceb-8cac11c92b90', 2, 'production', 0.19512793864228029, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.694、過去3着以内率 +0.280、平均着順比 +0.211。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29f547a9-8d77-546e-827e-76aa87d246c6', '700618d5-ae8b-4352-bceb-8cac11c92b90', 3, 'production', 0.022240242574530555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.581、直近3走の着順比 -0.451、前走距離 +0.279。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3cac8bc-8efa-5281-89b2-c16b506b14f7', '700618d5-ae8b-4352-bceb-8cac11c92b90', 4, 'production', 0.015090804612243913, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.709、過去走数 -0.449、直近5走の着順比 -0.167。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('628404e9-499b-5acd-8ec7-8d7ec7da78b7', '700618d5-ae8b-4352-bceb-8cac11c92b90', 5, 'production', 0.14805384177906497, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、過去3着以内率 +0.290、平均着順比 +0.212。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14440b97-6277-59eb-9ebc-3d6d37dcd2fd', '700618d5-ae8b-4352-bceb-8cac11c92b90', 6, 'production', 0.08240908898381767, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.317、過去3着以内率 +0.317、過去走数 -0.115。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a53f3542-4f92-5351-818d-5388be810836', '700618d5-ae8b-4352-bceb-8cac11c92b90', 7, 'production', 0.17325737209546097, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.656、過去3着以内率 +0.335、平均着順比 +0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8f4216a0-26c1-50b7-8b91-596be35dcfcc', '700618d5-ae8b-4352-bceb-8cac11c92b90', 8, 'production', 0.01619830067455092, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.714、直近3走の着順比 -0.259、直近5走の着順比 -0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('994c92d6-a540-54c0-84fd-ffc8e4448f76', '700618d5-ae8b-4352-bceb-8cac11c92b90', 9, 'production', 0.06526042812425777, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.188、前走距離 +0.150、直近5走の着順比 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('902d0a57-4396-5595-8ffc-a673e9d8a3ae', '700618d5-ae8b-4352-bceb-8cac11c92b90', 10, 'production', 0.020675527022165706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.581、直近3走の着順比 -0.257、直近5走の着順比 -0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cc5524b8-8f60-56b8-8261-21ac690bb0e5', '700618d5-ae8b-4352-bceb-8cac11c92b90', 11, 'production', 0.022544371496365526, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.711、過去勝率 +0.181、直近5走の着順比 -0.147。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('66fcea36-756b-59f3-a1f6-537e81468655', '700618d5-ae8b-4352-bceb-8cac11c92b90', 12, 'production', 0.030749574938622133, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.691、過去勝率 +0.156、直近5走の着順比 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25c20e24-7c12-5b1d-9fc2-4d32cdd609f5', '700618d5-ae8b-4352-bceb-8cac11c92b90', 13, 'production', 0.055747648190400595, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 過去走数 -0.409、直近3走の着順比 +0.349、前走距離 +0.147。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8a190a71-db3c-5362-b6ee-dc620307a63a', '700618d5-ae8b-4352-bceb-8cac11c92b90', 14, 'production', 0.06205761426874402, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.346、過去3着以内率 +0.286、直近3走の着順比 +0.284。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d67cebec-b72b-5b95-a783-c8d1d55aaa5e', '700618d5-ae8b-4352-bceb-8cac11c92b90', 15, 'production', 0.05955746992218103, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.516、前走からの日数 -0.386、過去3着以内率 +0.265。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('79cb500e-0a65-5a9d-88ce-cc5ccd2e1de5', 'dc6188f8-5844-402b-b506-b0c62866435f', 1, 'production', 0.06776716419100086, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、3勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.383、過去3着以内率 +0.301、前走からの日数 -0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8035f1e1-7660-5c55-bfe2-9e1053d40ef5', 'dc6188f8-5844-402b-b506-b0c62866435f', 2, 'production', 0.036955309669885715, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、2勝（22.2%）。
推定｜SHAP（生スコア） 過去走数 -0.720、直近3走の着順比 +0.306、過去3着以内率 +0.196。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('144e4e08-7365-574f-8747-9e0670535f85', 'dc6188f8-5844-402b-b506-b0c62866435f', 3, 'production', 0.11664702274376845, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.658、過去3着以内率 +0.347、平均着順比 +0.240。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4811815c-3ac8-5487-90b4-b68507afa3d0', 'dc6188f8-5844-402b-b506-b0c62866435f', 4, 'production', 0.033917161800302076, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、2勝（28.6%）。
推定｜SHAP（生スコア） 過去走数 -0.333、直近3走の着順比 -0.265、過去3着以内率 +0.241。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c169b6c0-c9a2-58b2-9160-b1e56b32eb9c', 'dc6188f8-5844-402b-b506-b0c62866435f', 5, 'production', 0.0709103129250021, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.335、平均着順比 +0.086、直近5走の着順比 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('54556860-56eb-5a75-91bb-ce620f12a983', 'dc6188f8-5844-402b-b506-b0c62866435f', 6, 'production', 0.0635635988178932, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.268、過去3着以内率 +0.233、前走からの日数 -0.200。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9316ecaf-b1e0-5c76-89dd-39fb485d9d6b', 'dc6188f8-5844-402b-b506-b0c62866435f', 7, 'production', 0.027007952175106424, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.670、前走からの日数 -0.333、前走距離 +0.328。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bb3a8692-80e7-5719-970c-6dba7189d6fb', 'dc6188f8-5844-402b-b506-b0c62866435f', 8, 'production', 0.016435491168638926, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.859、過去勝率 +0.179、過去走数 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f210edcc-76af-51a7-8d94-8b1b48d57c9e', 'dc6188f8-5844-402b-b506-b0c62866435f', 9, 'production', 0.05017088258446243, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.486、直近3走の着順比 +0.480、直近5走の着順比 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8f8f5eaa-205a-5357-91fa-2dbe633916cd', 'dc6188f8-5844-402b-b506-b0c62866435f', 10, 'production', 0.10911486933027464, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.690、過去3着以内率 +0.492、前走からの日数 -0.363。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8b482965-e3ff-5670-8c90-35846a4b5536', 'dc6188f8-5844-402b-b506-b0c62866435f', 11, 'production', 0.040194296904911865, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.603、過去3着以内率 +0.276、平均着順比 +0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('daf88bc7-dd8f-522c-87e9-b8e9becfa3cd', 'dc6188f8-5844-402b-b506-b0c62866435f', 12, 'production', 0.13299295396631242, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.537、過去3着以内率 +0.349、平均着順比 +0.219。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b805bbd6-273b-52e1-9b10-2f31387942d5', 'dc6188f8-5844-402b-b506-b0c62866435f', 13, 'production', 0.019598544041330015, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.430、過去走数 -0.424、過去勝率 +0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ee008ca0-7802-52c8-8ded-55d30ed15934', 'dc6188f8-5844-402b-b506-b0c62866435f', 14, 'production', 0.08936437072752268, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.672、過去3着以内率 +0.206、前走からの日数 -0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('48ad6e52-2ce1-52f1-b8d5-48be0c34bcb4', 'dc6188f8-5844-402b-b506-b0c62866435f', 15, 'production', 0.034823238989672434, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.280、直近3走の着順比 -0.254、前走距離 +0.193。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3a1cd318-0cd5-5111-ac9c-6e52522b2e96', 'dc6188f8-5844-402b-b506-b0c62866435f', 16, 'production', 0.0905368299639158, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、2勝（22.2%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.685、過去3着以内率 +0.123、直近5走の着順比 +0.105。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('13ca062b-5330-5794-92c7-c882f417bcde', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 1, 'production', 0.02925547224509717, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.647、前走距離 +0.201、過去3着以内率 -0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f7ee0e7b-081c-558b-a044-8a72b89e6c86', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 2, 'production', 0.03977408883896656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.265、過去走数 +0.083、過去勝率 -0.083。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09347851-4681-541f-8e73-e63ec3844760', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 3, 'production', 0.07308483703801753, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.357、前走距離 +0.207、過去3着以内率 +0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('95166d51-ca83-560b-b6fc-2827d9148b72', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 4, 'production', 0.04467781588543099, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.394、過去3着以内率 +0.172、前走からの日数 +0.065。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7b507ec3-728a-59f8-bc6c-158af2a83283', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 5, 'production', 0.0391296959480012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.824、過去3着以内率 +0.327、前走距離 +0.233。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fa36a872-fb87-5e97-bd80-d3c4f0a838b4', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 6, 'production', 0.09448941028873031, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.399、過去3着以内率 +0.191、前走距離 +0.075。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2e12b863-a2b4-5ada-befa-f79151b84485', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 7, 'production', 0.1429793608522262, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.323、過去3着以内率 +0.304、平均着順比 +0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38603d22-3530-5b0b-bf4c-b6cf30a901e4', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 8, 'production', 0.06811653063032164, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.207、過去走数 -0.147、直近5走の着順比 +0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('52c93c3c-89ef-51a7-9f4e-e897c2101461', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 9, 'production', 0.06733335944818751, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14b48b06-a594-50fa-8ed7-7e406691fdd6', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 10, 'production', 0.11681232857800136, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.350、過去走数 +0.147、直近5走の着順比 +0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dd88509c-9836-5a3d-bdfb-476acc1ab378', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 11, 'production', 0.10999560934926071, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.372、過去3着以内率 +0.147、前走からの日数 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf354a85-6efc-5f9a-bc83-0e56c37a0141', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 12, 'production', 0.0980456641162745, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.436、直近3走の着順比 -0.123、平均着順比 +0.076。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ac0b0d4c-0e49-577d-aabe-d9c1a84333be', '9cd7ddcb-8531-49ea-9ea6-9fcfe45885f9', 13, 'production', 0.0763058267814843, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.248、過去3着以内率 +0.083、過去走数 -0.056。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:41.013244+00:00') on conflict (id) do nothing;
commit;
