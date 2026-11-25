begin;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a969f3dc-8297-5700-b911-344b5984ed84', '15f617d0-128c-4485-909c-17dd755502a8', 1, 'production', 0.05332922456994231, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.522、過去3着以内率 -0.292、前走距離 -0.184。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('78bdf51d-0735-597c-956b-39941bb2e9b9', '15f617d0-128c-4485-909c-17dd755502a8', 2, 'production', 0.00865549018519636, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.886、過去走数 +0.330、平均着順比 -0.252。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('522ede10-bcae-574a-b7c1-b05deae0cb12', '15f617d0-128c-4485-909c-17dd755502a8', 3, 'production', 0.06882086270903637, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.671、過去3着以内率 -0.356、平均着順比 +0.167。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f1e2a514-68d1-589c-90eb-fd89dc5f3568', '15f617d0-128c-4485-909c-17dd755502a8', 4, 'production', 0.027858925863043272, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.302、過去走数 +0.171、前走距離 -0.143。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7d42c87e-6bd5-5f2e-969c-ebfe18b69d10', '15f617d0-128c-4485-909c-17dd755502a8', 5, 'production', 0.23755279586744005, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.042、過去3着以内率 +0.403、過去勝率 +0.287。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4036623b-b6f5-588f-bc07-7a497fa32cbb', '15f617d0-128c-4485-909c-17dd755502a8', 6, 'production', 0.01854406852889562, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.367、平均着順比 -0.133、直近5走の着順比 -0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87d915df-b0a6-5508-bc81-eb34093ad254', '15f617d0-128c-4485-909c-17dd755502a8', 7, 'production', 0.014230173998541268, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.507、過去走数 +0.293、過去3着以内率 -0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('46f588f9-8297-5740-a8c3-39e9e1df9593', '15f617d0-128c-4485-909c-17dd755502a8', 8, 'production', 0.027675115106523047, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.290、前走距離 -0.168、過去走数 +0.131。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f9fa4832-dd8e-5acf-9abf-8778175cf948', '15f617d0-128c-4485-909c-17dd755502a8', 9, 'production', 0.015087787599375655, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.280、過去3着以内率 -0.252、過去走数 +0.218。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('85c2fef4-676d-5c2d-9cd1-ff51e0cf3b69', '15f617d0-128c-4485-909c-17dd755502a8', 10, 'production', 0.059668695644898274, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 +0.128、前走からの日数 +0.127、過去勝率 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e204f74b-a8ce-512b-ba5f-fe1df803a567', '15f617d0-128c-4485-909c-17dd755502a8', 11, 'production', 0.026043732529409863, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.301、前走距離 -0.172、過去走数 +0.156。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c598177-d3c9-5048-b98c-660f3ed154de', '15f617d0-128c-4485-909c-17dd755502a8', 12, 'production', 0.2681159635968967, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.044、過去3着以内率 +0.394、過去勝率 +0.303。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ddcd9ad4-dd81-5d56-959d-ad6aaf74a391', '15f617d0-128c-4485-909c-17dd755502a8', 13, 'production', 0.150108931374118, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.846、過去勝率 +0.220、過去3着以内率 +0.198。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea510717-777d-5872-8cb9-dbb74e5c5017', '15f617d0-128c-4485-909c-17dd755502a8', 14, 'production', 0.0076661613870592765, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.307、過去走数 +0.509、平均着順比 -0.366。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3bada5e2-f1ec-52f8-8c90-78531cdbed77', '15f617d0-128c-4485-909c-17dd755502a8', 15, 'production', 0.0064074132001651725, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.988、平均着順比 -0.302、直近5走の着順比 -0.248。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39ba1cdb-4227-5461-97bd-22725e53b0c9', '15f617d0-128c-4485-909c-17dd755502a8', 16, 'production', 0.010234657839458714, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.731、過去走数 +0.382、平均着順比 -0.256。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b165f4fc-505e-5ec6-a04a-84d2e88e6adf', '49bffcdf-b782-4775-a5e4-138903723134', 1, 'production', 0.019202847277206933, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.877、平均着順比 -0.162、過去勝率 +0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('04094f6a-bd13-5ca9-9a06-70bd8cfb5153', '49bffcdf-b782-4775-a5e4-138903723134', 2, 'production', 0.049046158636385874, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.287、過去走数 +0.120、直近5走の着順比 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7bd91282-f2da-5eb4-8d46-764cbb9d6c53', '49bffcdf-b782-4775-a5e4-138903723134', 3, 'production', 0.02726932646508794, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.238、前走からの日数 -0.193、過去走数 -0.169。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('740d5fa0-331d-5a65-a189-72e757e7fcf6', '49bffcdf-b782-4775-a5e4-138903723134', 4, 'production', 0.03918654563893488, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.453、過去3着以内率 -0.328、平均着順比 -0.309。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59695b4d-3e3e-5784-b25f-ddd651bf0b71', '49bffcdf-b782-4775-a5e4-138903723134', 5, 'production', 0.22575305003019588, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.827、過去3着以内率 +0.325、平均着順比 +0.160。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('33af7782-e979-5cdf-93bd-07538a1518e2', '49bffcdf-b782-4775-a5e4-138903723134', 6, 'production', 0.12211012239734553, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.348、過去3着以内率 +0.219、平均着順比 +0.154。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f4d29b2c-e54b-5b22-b4c1-7ea1291d7e90', '49bffcdf-b782-4775-a5e4-138903723134', 7, 'production', 0.08821812296314935, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.171、過去走数 +0.128、直近3走の着順比 +0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3fccce5-7532-5dd5-aaf2-c247c2cb9e9e', '49bffcdf-b782-4775-a5e4-138903723134', 8, 'production', 0.07723949175438573, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.314、過去3着以内率 -0.260、直近5走の着順比 +0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5fb50107-58a7-5e3b-a8ec-0f17fc0aedc7', '49bffcdf-b782-4775-a5e4-138903723134', 9, 'production', 0.03280956022066495, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.612、前走距離 +0.168、直近3走の着順比 +0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0532051a-26c5-51e2-8040-7885ed331247', '49bffcdf-b782-4775-a5e4-138903723134', 10, 'production', 0.03822445020147483, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.145、直近5走の着順比 -0.072、前走からの日数 -0.043。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f0c79e21-a5aa-5f36-ba97-b95243a09167', '49bffcdf-b782-4775-a5e4-138903723134', 11, 'production', 0.11949640436813252, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.592、平均着順比 +0.154、直近5走の着順比 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('579602c2-d454-5ba0-a63c-6fb6b0321fb1', '49bffcdf-b782-4775-a5e4-138903723134', 12, 'production', 0.020704496445634168, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.619、前走からの日数 -0.314、過去勝率 -0.056。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a6486d2-5e8d-50e6-ad33-acc95a47dd71', '49bffcdf-b782-4775-a5e4-138903723134', 13, 'production', 0.006624518735750406, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.821、過去走数 -0.375、前走からの日数 -0.352。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('036ef134-6717-5a1e-9ce2-5f5547211796', '49bffcdf-b782-4775-a5e4-138903723134', 14, 'production', 0.0967642209292218, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.722、過去3着以内率 -0.229、平均着順比 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('85f0ed48-1fe5-55ef-a82e-dbf204c8ae9f', '49bffcdf-b782-4775-a5e4-138903723134', 15, 'production', 0.037350683936429034, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.205、前走距離 -0.170、直近5走の着順比 +0.061。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('55eb167d-5d26-57ca-af64-c80afef19626', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 1, 'production', 0.06039072873712331, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.289、過去走数 +0.096、平均着順比 +0.091。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fc694749-c31e-50c8-bacf-7d6f430b3290', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 2, 'production', 0.03277760882458951, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.460、過去3着以内率 +0.305、平均着順比 +0.080。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('976c6b10-aec7-599e-841a-6e09d03ddc37', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 3, 'production', 0.0035323891432421086, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.434、平均着順比 -0.420、直近5走の着順比 -0.253。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('24e766df-4d04-5dbd-bb89-e9722d4a3013', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 4, 'production', 0.006980632576566229, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.724、直近3走の着順比 -0.573、直近5走の着順比 -0.229。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('44944fb1-e983-514b-a7a5-90af2e4be606', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 5, 'production', 0.12108494213488126, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.648、過去3着以内率 +0.124、平均着順比 +0.105。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('53d6536c-f277-530e-af34-8126020b26ae', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 6, 'production', 0.02050755916851132, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.455、過去3着以内率 -0.189、直近5走の着順比 -0.071。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f2881e3c-ff2c-5b0a-abf2-3f69ea88154a', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 7, 'production', 0.043770416706970135, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.412、過去走数 -0.138、前走距離 -0.070。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('97cb578f-aea8-5cbc-8b45-c078efba4af8', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 8, 'production', 0.07611420795785627, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.333、平均着順比 +0.155、過去走数 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4bf42c11-ef35-517e-bb8d-12e2635365f8', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 9, 'production', 0.10765832807976504, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.708、直近5走の着順比 +0.086、過去走数 +0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('36698fec-6300-55fc-883a-8592b215fac8', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 10, 'production', 0.03826330690138316, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.375、過去3着以内率 +0.333、直近5走の着順比 -0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('44e7ec37-70dc-51e0-b230-e868f88f7354', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 11, 'production', 0.20755312893782857, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.927、過去3着以内率 +0.345、平均着順比 +0.157。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88774e7a-2d8f-57b5-b1ab-48b80d4f5d8c', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 12, 'production', 0.1367514708724085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.715、過去3着以内率 +0.312、平均着順比 +0.174。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e705d8e2-c530-59de-993b-ad6073c53d38', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 13, 'production', 0.057144454364061334, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.306、直近3走の着順比 -0.159、直近5走の着順比 +0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7df0ae4f-8829-590e-8e69-846a4a495a5d', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 14, 'production', 0.03406212852674773, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.468、過去3着以内率 +0.154、直近5走の着順比 +0.116。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0211d0f4-a4e2-51ca-8344-eb91a94f142b', '17d31ef9-f9e4-4d86-8d38-6542a0667772', 15, 'production', 0.05340869706806563, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.219、前走距離 +0.089、過去勝率 -0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('48bf16af-046e-53a7-b34f-1091f524b7fc', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 1, 'production', 0.045186424257125726, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.178、過去走数 -0.151、平均着順比 +0.076。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a059b5c7-0637-54e6-b78f-aa4ab0d328c1', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 2, 'production', 0.0654772016059159, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.789、平均着順比 -0.251、過去3着以内率 -0.241。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('543e1b8d-cd43-5a71-afac-bad9041760c3', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 3, 'production', 0.03365589098026109, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.467、前走からの日数 -0.417、直近3走の着順比 +0.404。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae798e5c-0f5c-514c-90b3-1274e5455dcc', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 4, 'production', 0.2939008441762031, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.913、直近3走の着順比 +0.828、過去走数 -0.269。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('83fe7001-c94d-5f31-ade7-9cb948388e4d', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 5, 'production', 0.06576260457027323, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.627、前走距離 +0.586、直近3走の着順比 +0.460。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a172d4f3-89d6-5378-96ba-68a7ca0abcb4', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 6, 'production', 0.08738576463781078, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.631、前走距離 +0.595、前走からの日数 -0.368。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fdcab161-7220-56bb-9332-73387f18198e', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 7, 'production', 0.02204919739227794, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.387、前走距離 +0.813、過去走数 -0.225。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ad851ff-084a-5550-88f9-e985463cb177', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 8, 'production', 0.010442803553815811, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.268、前走距離 +0.704、平均着順比 -0.368。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('24c8d7ac-603f-559f-826e-341dd07375d6', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 9, 'production', 0.12881180499371236, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.501、過去3着以内率 +0.238、直近3走の着順比 +0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('daa35417-b310-5b81-bc2a-4b3dae307fd7', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 10, 'production', 0.021792676069689914, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.532、平均着順比 -0.382、直近5走の着順比 -0.160。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('172febf7-6670-561c-81f2-5df18fcb84a5', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 11, 'production', 0.09648256337523362, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.983、直近3走の着順比 -0.331、過去走数 -0.256。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e7b7f647-667a-5d1c-b54a-d7f71522fc45', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 12, 'production', 0.0216267062714111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.958、前走距離 +0.903、過去走数 -0.309。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3e895820-8365-5092-9996-2a9b71ee3896', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 13, 'production', 0.03226043968428649, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.348、直近3走の着順比 -0.196、前走からの日数 -0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0f16873-87c2-50ff-94cb-d0bf2b1b151c', '73cb059c-4eb0-40e4-a49f-7197b43fc804', 14, 'production', 0.07516507843198275, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.793、過去走数 -0.449、過去3着以内率 +0.194。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('745de061-2aca-5f84-8397-651c27accc02', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 1, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b2509a9d-c6e0-5c6f-a837-6e910361a1e5', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 2, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('430f642e-8e2c-5fc3-9db1-d3dcee99f8f6', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 3, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d90c6d6-6665-5b68-9a4f-50d517728cfe', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 4, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('035f6dca-8be8-51a5-b8bd-0c9c08e64f7f', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 5, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39043304-aa19-5ef4-bfbf-035dd77ffd05', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 6, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2fb01623-ed98-51a8-b266-9a4c43751e28', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 7, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db8d09bd-9d71-523f-ba59-ef2c5245f106', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 8, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c5bcaa1-0086-5073-97e0-40ee160e4fe0', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 9, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('248b2031-b1bb-5dd2-b481-70eefe7d096b', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 10, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('73b7da67-2a7e-5acc-99c7-3f063051f324', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 11, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('12a80097-7ad5-549a-9845-eec0a3775fcf', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 12, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f7b04d24-12f9-5b0c-a198-f3ec3cd0e3cb', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 13, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63025b1c-a144-5819-85ea-722b6a993f8b', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 14, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09f70d2f-d98e-5888-a21e-933065a0dbee', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 15, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d02f01d-4177-51eb-ad90-2d3938f61693', '8565e6cc-7d71-4ea4-9239-76fc12c7642e', 16, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b8ce9146-1797-53b6-8e50-cf6a8d6e4bd6', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 1, 'production', 0.04717125936087847, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.208、過去走数 +0.131、過去勝率 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c79339f1-7562-541b-8f13-dccfcd25bfc1', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 2, 'production', 0.01599889897205803, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.478、過去走数 +0.268、過去3着以内率 -0.241。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ef1a233-1ec6-51ce-8319-47f85fa604ea', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 3, 'production', 0.24219432252574302, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.940、過去3着以内率 +0.371、過去勝率 +0.231。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88d6bed3-eba5-5403-8d59-76bb76431882', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 4, 'production', 0.0690864184916934, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.674、過去3着以内率 -0.351、平均着順比 +0.135。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e075dbb8-2a98-5bf5-9803-9286e9a33c11', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 5, 'production', 0.008017529106928746, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.183、過去走数 +0.451、平均着順比 -0.358。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0636bfc-e204-5003-b267-b97aa92b9c81', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 6, 'production', 0.04580742594899656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.283、前走からの日数 -0.247、前走距離 -0.169。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('64dadcae-4389-544d-b612-e6b2690c6230', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 7, 'production', 0.01114035979939426, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.072、過去走数 +0.388、平均着順比 -0.254。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('baf434fc-7204-5ee7-9a4b-1060d2f3d98d', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 8, 'production', 0.022317767221066265, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.295、直近3走の着順比 -0.192、前走距離 -0.178。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88d4a20f-ac6f-5a14-aaa3-b11064b8de38', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 9, 'production', 0.006794526110035805, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.093、平均着順比 -0.316、直近5走の着順比 -0.239。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4aebc8e3-d5fd-55ed-90cf-4036b3e39838', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 10, 'production', 0.04390042250666745, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.264、直近3走の着順比 +0.214、過去走数 +0.153。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c6aee56-f665-581c-88f2-24a1ae2a48fc', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 11, 'production', 0.12794588228052953, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.772、過去3着以内率 +0.328、過去勝率 +0.206。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('822b19c7-63f4-5e41-b245-1ee846a1d05b', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 12, 'production', 0.09027591097464, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.428、過去3着以内率 +0.158、前走距離 -0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('86039784-e1eb-5d4a-90af-9fb4e7e066df', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 13, 'production', 0.1396515691823881, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.629、過去3着以内率 +0.196、過去勝率 +0.171。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ebcc3e4c-c9c6-54e7-b803-2c86fa1ded5b', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 14, 'production', 0.02901261555845841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.296、前走距離 -0.199、過去走数 +0.141。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87a24446-bec4-5386-95ad-37229b54bf65', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 15, 'production', 0.06750724612755199, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.586、過去3着以内率 -0.299、前走距離 -0.181。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d832323-e7fe-57d6-a930-412b6cfb73f4', 'e707ae11-a642-40a8-9c59-42a1ced6cac3', 16, 'production', 0.03317784583296981, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.302、過去走数 +0.170、前走距離 -0.145。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('80acc7a8-629c-5d9f-97e7-663999d4fd72', '97d25aa7-180b-42e2-860f-59558a0ca096', 1, 'production', 0.015858976795077626, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.427、平均着順比 -0.326、過去走数 -0.214。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4bdba788-f70a-556b-9c0f-831d4d90aa54', '97d25aa7-180b-42e2-860f-59558a0ca096', 2, 'production', 0.04063122429047464, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 -0.243、前走からの日数 -0.220、直近3走の着順比 +0.196。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f8f95f46-db89-563c-8da0-379abd124230', '97d25aa7-180b-42e2-860f-59558a0ca096', 3, 'production', 0.006558406493811421, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.719、直近3走の着順比 -0.526、過去3着以内率 -0.280。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0f7b0771-79f0-5363-a953-44c4f664eaae', '97d25aa7-180b-42e2-860f-59558a0ca096', 4, 'production', 0.03049313703361186, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.320、過去走数 -0.203、前走からの日数 +0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('089c96a5-ff42-5dd8-8169-04289b23d369', '97d25aa7-180b-42e2-860f-59558a0ca096', 5, 'production', 0.0032892839420432525, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.113、過去走数 -0.685、直近5走の着順比 -0.324。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d2859c06-a725-55c7-9619-a389190668c5', '97d25aa7-180b-42e2-860f-59558a0ca096', 6, 'production', 0.0785329940445433, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.671、直近3走の着順比 +0.538、過去3着以内率 +0.275。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a5389148-ef46-5232-9d00-54a5b1174d2a', '97d25aa7-180b-42e2-860f-59558a0ca096', 7, 'production', 0.07396302773118194, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.416、過去3着以内率 -0.289、過去走数 +0.182。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cbcfb52a-d7ad-58e8-8055-ac171736f9a5', '97d25aa7-180b-42e2-860f-59558a0ca096', 8, 'production', 0.05919807962402235, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.373、過去3着以内率 +0.336、平均着順比 +0.154。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4eadd0bd-7dd8-5563-a1f8-77f828972831', '97d25aa7-180b-42e2-860f-59558a0ca096', 9, 'production', 0.07155448008052413, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.235、過去3着以内率 -0.201、直近5走の着順比 +0.121。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eb84cc8f-c487-52e8-b507-a4b9ae368ade', '97d25aa7-180b-42e2-860f-59558a0ca096', 10, 'production', 0.21087257860562417, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.840、過去3着以内率 +0.251、平均着順比 +0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a619cddb-8239-5619-b7a6-99031f5e0e2d', '97d25aa7-180b-42e2-860f-59558a0ca096', 11, 'production', 0.036067514573811466, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 -0.193、前走からの日数 -0.185、過去3着以内率 -0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('704654e6-b5b3-554e-9ba3-b03da4e4c19b', '97d25aa7-180b-42e2-860f-59558a0ca096', 12, 'production', 0.09169011125305682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.588、前走距離 -0.139、平均着順比 +0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2dd42056-8b4e-5d70-bbea-7f23718a062e', '97d25aa7-180b-42e2-860f-59558a0ca096', 13, 'production', 0.24718546575253808, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.761、過去3着以内率 +0.357、平均着順比 +0.205。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0f369b80-556b-555c-b106-15190317268d', '97d25aa7-180b-42e2-860f-59558a0ca096', 14, 'production', 0.02011892452835732, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.538、過去走数 -0.183、直近5走の着順比 +0.151。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5614de4c-4358-51c7-89cb-41eebaa063ec', '97d25aa7-180b-42e2-860f-59558a0ca096', 15, 'production', 0.011726298456140103, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.439、過去3着以内率 -0.393、直近3走の着順比 -0.269。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('13818f5f-3d86-5a3e-a7b2-474368fd5a3b', '97d25aa7-180b-42e2-860f-59558a0ca096', 16, 'production', 0.0022594967951817587, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.334、過去走数 -0.622、直近5走の着順比 -0.344。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d799eccf-330b-53fc-a162-3fe09383e2cf', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 1, 'production', 0.09731665703312542, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.910、過去走数 -0.554、直近5走の着順比 +0.193。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af5938fa-7bfb-541c-8181-ce478042d307', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 2, 'production', 0.0517531073067152, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.347、過去3着以内率 -0.232、前走からの日数 +0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('304e48c9-a2b5-567e-b9a2-49b373752efd', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 3, 'production', 0.01955294198689349, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.383、前走からの日数 -0.206、前走距離 -0.162。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba677cff-ac7e-53ec-97ea-66de3688d29f', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 4, 'production', 0.01809787776382634, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.717、平均着順比 -0.308、直近5走の着順比 -0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('06a937d5-413d-5fbe-856a-a7615cf59c16', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 5, 'production', 0.08426359016563578, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.827、過去走数 -0.245、直近5走の着順比 +0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ef7f8e8e-0062-536d-8e2b-1e75c1076304', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 6, 'production', 0.033706465835517084, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.384、過去3着以内率 -0.112、前走距離 -0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f856b40-0773-54e2-99e7-a8f04b4cfd7d', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 7, 'production', 0.03136063241233632, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.582、前走からの日数 +0.127、前走距離 -0.121。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6fd6aa86-2243-5d94-8251-fd0e105a5e69', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 8, 'production', 0.023357620646562008, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.697、前走距離 -0.180、過去勝率 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('35d06156-74a5-55df-b420-c1d9daf56c2b', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 9, 'production', 0.14051356108741886, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.392、過去3着以内率 +0.336、過去走数 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d755a753-73fe-5dd7-b08e-e4ec2774da41', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 10, 'production', 0.032639437605523014, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.340、過去走数 -0.157、過去3着以内率 +0.098。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf75c96e-79b7-532f-a0bc-af16b909f67f', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 11, 'production', 0.09676610718305446, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.218、過去走数 +0.127、直近3走の着順比 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0962cb33-5d49-5b4e-b6c1-ca914a6a1275', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 12, 'production', 0.02799652613045239, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.593、平均着順比 -0.113、直近5走の着順比 -0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3d7e4765-1bf6-567a-9f05-f7a4aac53bbf', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 13, 'production', 0.033789039892514375, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.182、平均着順比 -0.177、前走距離 -0.173。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ac9be44-90fa-5cfe-9842-42e50e706e90', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 14, 'production', 0.20360431886980054, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.773、過去3着以内率 +0.289、平均着順比 +0.267。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('791957c8-a1b7-5e8b-ae81-9e189d893dac', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 15, 'production', 0.03280987346302264, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.480、直近3走の着順比 +0.103、過去3着以内率 -0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e1d15a7f-ca6b-5ca1-aa90-59d6ddca46a1', 'ab37c21d-523b-4969-8bd0-2bfd7639b178', 16, 'production', 0.07247224261760214, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.172、前走距離 -0.132、平均着順比 +0.118。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c21be29-677d-5a81-80b0-58951445f00b', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 1, 'production', 0.04947200787375957, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.249、過去走数 +0.130、直近3走の着順比 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('229dc7cb-9560-5230-8910-8663af2171d1', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 2, 'production', 0.11203557585518324, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.466、過去3着以内率 +0.334、平均着順比 +0.174。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('35e6e1f4-6813-5431-8314-c507a9041311', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 3, 'production', 0.02682155055386732, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.179、前走からの日数 +0.103、直近5走の着順比 -0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8a0db5b2-8d5f-5ef9-9838-4413e9a27b7b', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 4, 'production', 0.03231210779613682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.353、過去3着以内率 +0.174、前走距離 +0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88347677-f2fe-5e28-8a77-6bc9938c0e7a', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 5, 'production', 0.08352954903563074, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.744、平均着順比 +0.127、過去走数 +0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a43134fe-118e-5450-965f-3277e4be3573', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 6, 'production', 0.018008606062523497, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.391、過去走数 -0.379、前走距離 +0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('273bec6d-c95e-5078-98d7-e8f6ecc8af6c', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 7, 'production', 0.12182805729009286, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.792、過去3着以内率 +0.252、前走距離 +0.209。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('01d62c6f-e6fd-5fd5-9290-fe855ac41320', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 8, 'production', 0.12525583938889726, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.744、過去3着以内率 +0.221、平均着順比 +0.196。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea4cf935-69f1-507a-8f83-956ecb2997c9', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 9, 'production', 0.0029926847133622697, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.204、平均着順比 -0.484、過去3着以内率 -0.286。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f732f772-d2de-5004-8e8d-0bab832482ab', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 10, 'production', 0.05765543278169486, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.268、過去走数 +0.124、直近3走の着順比 +0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09dd730b-ce13-5cb7-be4d-70d0636fb733', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 11, 'production', 0.02175038233663211, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.571、前走距離 +0.226、前走からの日数 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e132c09f-4a45-52e2-8901-45d636dab578', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 12, 'production', 0.03390793860416312, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.206、前走距離 +0.160、過去3着以内率 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('20956815-b523-5ee9-ae30-bd656c268c7c', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 13, 'production', 0.07722003076092875, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.565、前走距離 +0.141、前走からの日数 +0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('df61398e-ea98-55fd-81e0-344af69398fd', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 14, 'production', 0.08003991534829476, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.687、前走距離 +0.151、平均着順比 +0.140。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49e05e6c-417a-574f-9c30-8721ac887505', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 15, 'production', 0.14799888017432883, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.810、過去3着以内率 +0.299、平均着順比 +0.159。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38185172-0cee-5b46-b46c-49096e6a2afd', '8cc9fe50-4ecf-4e78-86e0-b1cc8c2928b2', 16, 'production', 0.009171441424504006, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.930、過去走数 -0.139、直近5走の着順比 -0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49125c3f-b235-5377-8fb6-b5715533f998', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 1, 'production', 0.040852408120780795, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 +0.144、直近3走の着順比 +0.072、前走距離 +0.055。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('184f4c45-5009-5c28-91a9-374b8c8c5e60', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 2, 'production', 0.006250476823950201, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.642、過去走数 -0.590、直近5走の着順比 -0.262。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d3cf9ca5-90dd-5c30-a8bd-3c0b4ea05acd', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 3, 'production', 0.17174490261456254, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.798、過去3着以内率 +0.355、平均着順比 +0.291。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9cca4173-91f2-51b3-9542-56b3d9289e40', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 4, 'production', 0.11317593826164117, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.799、過去3着以内率 +0.346、平均着順比 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3461749f-1588-5970-b75d-f6f4fe993364', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 5, 'production', 0.03678335294128617, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.284、過去3着以内率 +0.197、直近3走の着順比 +0.099。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f000c8eb-8cc9-5813-918b-473a58e7ef8b', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 6, 'production', 0.046721766488586856, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.289、過去3着以内率 +0.158、過去走数 -0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f642d8e6-6164-5698-85af-7e1fe2d40da4', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 7, 'production', 0.007029784685901935, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.391、前走からの日数 -0.378、直近5走の着順比 -0.208。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c9b6c818-21cb-5c47-b0d5-5d6fb35d5d0a', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 8, 'production', 0.06991881982068876, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.527、過去走数 +0.103、平均着順比 +0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32113e03-47f0-5ad4-9c52-0ebf03546e24', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 9, 'production', 0.10254915259109125, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.696、過去3着以内率 +0.218、平均着順比 +0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ddcd91e-fe39-5cb6-a65e-3704e58a9931', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 10, 'production', 0.05778394937453862, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.352、過去3着以内率 +0.173、過去走数 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('33d9b1b2-8bc7-5be4-840e-d214e3bb8faa', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 11, 'production', 0.05928897340966505, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.430、過去走数 +0.118、過去3着以内率 +0.071。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cbf43a67-d1d8-5565-8a79-f61ba82511bd', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 12, 'production', 0.03279188305113496, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.081、過去3着以内率 +0.079、過去走数 -0.071。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eddadd6d-bfff-58a7-802f-d0cc3efcaf42', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 13, 'production', 0.023012747927176752, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.291、直近5走の着順比 +0.142、過去3着以内率 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ba4206f-4470-5d71-a9b6-aab2f1b4f070', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 14, 'production', 0.06735272781026425, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.413、過去3着以内率 +0.221、過去勝率 -0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('be5fbc2e-2886-5b60-88ec-bf508083090c', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 15, 'production', 0.10450936032774452, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.746、過去3着以内率 +0.227、平均着順比 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bafdcd2c-ec20-55e7-993b-6fe70c8edb54', 'dfef610c-d2f0-41b7-b0b1-6be7b9590615', 16, 'production', 0.06023375575098619, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.458、過去走数 -0.144、過去3着以内率 +0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f08c2a1b-4717-5101-9cd2-67c1328ca4bb', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 1, 'production', 0.01413980917924866, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.467、過去走数 -0.383、過去勝率 +0.133。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('27405214-7725-5246-a623-098a138d4707', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 2, 'production', 0.051019021394374246, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.413、過去走数 -0.278、過去3着以内率 +0.253。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('303f0ad3-5c08-5c0f-b3ae-58d9adf5683e', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 3, 'production', 0.16625090231238007, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.752、過去3着以内率 +0.276、平均着順比 +0.209。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7ffc9b81-b4a8-52e5-a531-3fa74490d684', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 4, 'production', 0.09447624150947057, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.665、過去3着以内率 +0.252、前走からの日数 -0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('821c4369-3333-5f97-8b1a-b03b0b65aaa2', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 5, 'production', 0.05621254913419907, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.458、前走からの日数 -0.249、過去3着以内率 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8bdd065b-39c5-5498-bcb7-da1a9df95bcf', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 6, 'production', 0.025551466719012112, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.393、過去走数 -0.387、直近3走の着順比 +0.358。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('36d1a1c1-4a8e-5ca6-a0b1-d49f9e9ad994', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 7, 'production', 0.022632773012659976, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.623、過去3着以内率 +0.157、過去勝率 +0.153。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('aefa6be5-4169-5b56-87b7-12ad79796630', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 8, 'production', 0.1429315944066807, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.732、過去3着以内率 +0.297、平均着順比 +0.208。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e8912745-a51b-5b8d-82f7-177baa3f6ac3', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 9, 'production', 0.040164308866749286, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.446、過去3着以内率 +0.239、直近5走の着順比 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e3e1587f-b89e-5477-a121-5071b9761d2b', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 10, 'production', 0.029746835729702, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.606、直近3走の着順比 +0.306、過去3着以内率 +0.185。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a0c37756-cbeb-5112-9c5c-0665bdc1f4d0', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 11, 'production', 0.0451519282342981, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 過去走数 -0.170、過去3着以内率 +0.110、直近5走の着順比 +0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cd84e5a3-2a7f-5744-9a24-cecc2494c6be', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 12, 'production', 0.08470514264784684, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.443、過去3着以内率 +0.266、前走からの日数 -0.184。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d38ccbf-1d05-5e8a-baa1-f39d7dcac096', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 13, 'production', 0.04309674237313567, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 +0.095、過去走数 -0.088、前走距離 +0.047。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1929ea17-ee65-5350-9b71-8f89057182d6', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 14, 'production', 0.06539944372838669, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.275、前走からの日数 -0.256、直近5走の着順比 +0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6cb45295-82da-5e0a-9b6a-7f69de96efd1', '27acd1ad-7192-478d-9bfb-7c8cf5676e34', 15, 'production', 0.11852124075185594, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.530、過去3着以内率 +0.294、平均着順比 +0.174。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('72e60ea4-df7c-5374-b567-1b05f359a3c1', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 1, 'production', 0.005707729413126757, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.157、平均着順比 -0.382、過去走数 -0.373。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cb619276-d67b-504e-8fe1-0e4d250d5578', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 2, 'production', 0.00873680372825052, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.386、直近5走の着順比 -0.247、過去走数 -0.159。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fef4fc0b-2299-5a5c-ac15-808860969102', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 3, 'production', 0.07486502891138858, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.253、前走からの日数 +0.097、平均着順比 -0.059。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3fca158d-a188-51e8-b6bf-6babaa0e55a1', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 4, 'production', 0.11862118311033833, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.366、前走距離 +0.176、直近3走の着順比 -0.168。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5da9d595-fdef-537e-8444-11d30e75840f', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 5, 'production', 0.01201951041240765, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.749、過去3着以内率 -0.291、過去走数 -0.230。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bfd8bfd2-4467-5257-9b8e-bd54fc61980b', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 6, 'production', 0.0966452693036641, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.601、平均着順比 -0.111、過去3着以内率 -0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3d5ae4f6-bb17-5592-a452-f8584383316c', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 7, 'production', 0.06331872472528366, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.175、平均着順比 +0.125、直近5走の着順比 +0.075。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5936e9d4-49bb-5417-993a-d4d4235e056f', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 8, 'production', 0.0644061034589761, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.324、過去3着以内率 -0.223、前走からの日数 +0.079。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bd4e8f6d-4260-5ea0-a2fa-d6f271d0e7c4', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 9, 'production', 0.010043298528840162, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -1.536、直近3走の着順比 -0.192、過去勝率 -0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7b18d02c-5407-53ec-8006-3d1887887ebc', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 10, 'production', 0.1196880804846257, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.512、平均着順比 +0.155、前走距離 +0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1bedf71d-dbe0-514d-a931-92907ac36969', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 11, 'production', 0.097432637728958, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.329、前走距離 +0.105、過去走数 +0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59609dd2-ddc3-5e8f-a0a5-8ae1b26e3e73', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 12, 'production', 0.0406058269032464, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.308、直近5走の着順比 -0.095、前走からの日数 +0.083。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ed648ed-7c37-53b9-ab87-34def124ff94', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 13, 'production', 0.12796330860363575, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.252、過去3着以内率 +0.182、平均着順比 +0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2faf7a71-c8bd-530c-adb8-902d57f7d92b', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 14, 'production', 0.13770488695801308, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.399、過去走数 +0.107、前走からの日数 +0.087。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe080b4e-a364-59be-b264-2db38acd1647', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 15, 'production', 0.012630027398461453, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.440、過去3着以内率 -0.329、平均着順比 -0.324。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c60e2ed8-ab5e-541e-804b-0c7beb991ec2', 'd342cb93-d9c5-409a-adb0-3e76cfaea6de', 16, 'production', 0.009611580330783723, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.809、平均着順比 -0.354、過去3着以内率 -0.263。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f8f47b0-d8d5-51ec-abd3-3a3114ca91d3', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 1, 'production', 0.02893449575919869, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.298、直近3走の着順比 -0.197、過去走数 +0.195。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('471a1bad-ce72-57e4-aeed-ce9375ed450a', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 2, 'production', 0.0370027147055436, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.342、過去走数 +0.122、直近5走の着順比 +0.068。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('04cc34f3-ede9-5254-b904-7c25d434770c', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 3, 'production', 0.0075708138870352855, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.304、過去走数 +0.436、平均着順比 -0.379。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a6563b89-150e-5ae5-bf18-3f63e4f7aaf9', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 4, 'production', 0.2492513664932221, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.868、過去3着以内率 +0.351、過去勝率 +0.171。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2b279a98-bb38-5897-af9c-d8b03cb1ca45', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 5, 'production', 0.01993234163646644, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.405、過去3着以内率 -0.236、平均着順比 -0.233。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8189664c-e52d-532e-91b9-bee0eaf86f3d', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 6, 'production', 0.03780385880572205, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.309、過去走数 +0.171、直近5走の着順比 +0.064。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba98f6c4-b6d9-5a7f-babe-f572d0dfbde5', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 7, 'production', 0.33136497385338587, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.048、過去3着以内率 +0.356、過去勝率 +0.239。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b0750128-afc0-5aca-8524-0b22b5225a72', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 8, 'production', 0.004125634864874139, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.375、平均着順比 -0.423、直近5走の着順比 -0.258。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59a21a33-e4a9-5c13-aefa-dfc0396fa87b', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 9, 'production', 0.0512812854706578, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.336、直近3走の着順比 +0.261、過去走数 +0.127。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ad58a9c6-7df4-55ac-bbc1-1511bb1a44fd', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 10, 'production', 0.05117361296770372, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.402、過去3着以内率 -0.336、直近5走の着順比 +0.091。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a60d333c-4750-55b2-982c-a8615f1ae0f1', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 11, 'production', 0.02706618008953641, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.340、直近3走の着順比 -0.181、過去走数 +0.159。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8faf6edd-e8fc-536a-bd1c-7a1fb50a54c9', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 12, 'production', 0.09180705757009389, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.316、過去走数 +0.145、直近3走の着順比 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dbf749a5-4ae4-500f-933c-bbb395514722', 'f0a0026d-60fa-4615-a5ad-3259f1c6b1d8', 13, 'production', 0.06268566389655982, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、過去3着以内率 -0.397、平均着順比 +0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0ffb28b7-93da-5d27-9d08-2bed27cb1dcb', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 1, 'production', 0.14462982175057332, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.648、過去3着以内率 +0.282、過去勝率 +0.222。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b521bfe7-305d-5de2-93a9-9f412c49ae61', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 2, 'production', 0.03683069578586096, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.357、過去走数 +0.142、直近5走の着順比 +0.072。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6192284e-077e-50a1-914b-d7bb35572a64', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 3, 'production', 0.027799772675993407, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.349、過去走数 +0.183、直近3走の着順比 -0.176。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('199edd15-41da-5adf-8ff9-54b46482ce9b', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 4, 'production', 0.011686128998421261, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.396、平均着順比 -0.377、過去3着以内率 -0.329。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a8bb6ff3-852d-54be-8ffc-ab406e34eea1', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 5, 'production', 0.04028702225792327, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.282、過去走数 +0.168、直近5走の着順比 +0.067。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a5be3569-9a46-5291-894d-f72c98e20df2', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 6, 'production', 0.03034579634444627, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.194、直近3走の着順比 -0.180、過去走数 +0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('94174fca-f25c-5ad3-8192-a7a840b6f09c', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 7, 'production', 0.12617074465049533, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.413、直近3走の着順比 +0.268、過去走数 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('be5d7fae-e3ec-5eb1-adfa-3241cbf69cc4', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 8, 'production', 0.013598452603236515, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.418、平均着順比 -0.371、直近3走の着順比 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('22fae3fd-5e99-5578-92ba-7eed30eca909', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 9, 'production', 0.0827834340788817, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.271、直近3走の着順比 +0.214、過去走数 +0.120。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('21d4cd97-c7b8-5836-99eb-eb039d1436eb', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 10, 'production', 0.01719027068253503, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.488、過去走数 +0.321、過去3着以内率 -0.221。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3b368fd0-6590-50cd-8254-d30f697baa31', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 11, 'production', 0.03610701197901267, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.292、過去走数 +0.200、前走からの日数 +0.045。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('74aa5ce3-dfb1-5517-8852-7d6b62c4b59f', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 12, 'production', 0.27682208292423277, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.983、過去3着以内率 +0.364、過去勝率 +0.232。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('89e6c361-8177-5d96-8e6c-cbadf76a8edc', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 13, 'production', 0.046801689688024596, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.332、直近3走の着順比 +0.216、過去走数 +0.117。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0399c1dc-62d7-5de3-bc7b-0a20787f9da6', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 14, 'production', 0.0101982907312701, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.885、過去走数 +0.330、平均着順比 -0.248。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e444b750-3328-5d2e-b170-ceab57e40d92', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 15, 'production', 0.024012251813758947, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.300、直近3走の着順比 -0.272、過去走数 +0.199。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bc8419e1-60aa-53b1-a1db-779285002c39', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 16, 'production', 0.04486085056016888, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.232、直近3走の着順比 -0.220、過去走数 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6a51fb1f-cf2c-5739-ad08-5f14e16a91d6', '0f6a142b-2d09-4e3a-a2fc-4ee5b35d33ec', 17, 'production', 0.029875682475165012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.289、過去走数 +0.244、直近3走の着順比 -0.183。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ada4ffe-882d-5864-811c-b711331326d2', '93b11562-49cf-47a1-aa52-63b42bad8a60', 1, 'production', 0.08666445401903182, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.390、過去勝率 +0.116、過去走数 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0f06f919-d90b-5c11-9e0b-3b8a8654ea33', '93b11562-49cf-47a1-aa52-63b42bad8a60', 2, 'production', 0.235242365607489, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.932、過去3着以内率 +0.353、過去勝率 +0.213。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('28dd3f05-796a-5ba3-bc90-60ab939ec2ed', '93b11562-49cf-47a1-aa52-63b42bad8a60', 3, 'production', 0.0991001611697626, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.351、過去3着以内率 +0.175、過去走数 +0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('553f04b2-2869-5486-9e0c-e26a01248994', '93b11562-49cf-47a1-aa52-63b42bad8a60', 4, 'production', 0.002620450207573578, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.528、平均着順比 -0.471、前走からの日数 -0.364。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d38b0dd1-409d-52e3-a6b1-ef4febf05ff1', '93b11562-49cf-47a1-aa52-63b42bad8a60', 5, 'production', 0.07682184684180919, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.455、過去3着以内率 -0.270、過去走数 +0.151。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0ba4efc1-721d-5a64-9f81-2b48dbc9a0ec', '93b11562-49cf-47a1-aa52-63b42bad8a60', 6, 'production', 0.03576006668984024, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.293、過去走数 +0.180、前走距離 +0.063。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b31208ba-a340-50ec-8f8e-9aac256da81f', '93b11562-49cf-47a1-aa52-63b42bad8a60', 7, 'production', 0.04903900851353282, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.336、直近3走の着順比 +0.266、過去走数 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a81fafa5-92c2-59f2-8a8d-dfc34d18dc1c', '93b11562-49cf-47a1-aa52-63b42bad8a60', 8, 'production', 0.09695491854533045, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.336、過去3着以内率 +0.257、過去勝率 +0.114。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1d02a84c-0a13-5405-a938-80f47a63c7fb', '93b11562-49cf-47a1-aa52-63b42bad8a60', 9, 'production', 0.0757632789043357, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.470、過去3着以内率 -0.286、過去走数 +0.139。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a7a149b-0a0c-595f-90d4-cf91d637a6c4', '93b11562-49cf-47a1-aa52-63b42bad8a60', 10, 'production', 0.23362182641512688, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.923、過去3着以内率 +0.340、過去勝率 +0.206。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('996ce17a-d575-56ac-be67-cdd4ffc523de', '93b11562-49cf-47a1-aa52-63b42bad8a60', 11, 'production', 0.008411623086167568, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.550、平均着順比 -0.399、過去3着以内率 -0.357。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('90dadad7-e4b5-5c43-95cc-b054cd27faae', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 1, 'production', 0.011431180983382158, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.309、過去走数 +0.366、前走からの日数 -0.278。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a93dfbf-9060-5244-a028-2c385f2714ad', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 2, 'production', 0.013841602524911706, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.261、過去走数 +0.438、平均着順比 -0.296。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3b332acd-bb7f-594b-87b8-8031ecc08627', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 3, 'production', 0.011015499894386934, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.190、平均着順比 -0.344、過去3着以内率 -0.226。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('954b6ff9-7c87-52a1-a853-86daaab213cc', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 4, 'production', 0.18857548035079783, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.738、過去3着以内率 -0.322、平均着順比 +0.151。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e93e57c2-67bd-59b7-8df9-155e6e8b2628', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 5, 'production', 0.3114506127024869, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.700、過去3着以内率 +0.321、過去勝率 +0.171。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('13be9f06-ad13-5681-98d1-702a97690210', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 6, 'production', 0.034519470501457324, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.404、過去3着以内率 -0.283、過去走数 +0.274。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05c01aec-2eea-56dd-a24d-da5992dbfc8e', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 7, 'production', 0.007352160551659232, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.370、平均着順比 -0.388、直近5走の着順比 -0.257。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c2012b2-8e6d-5428-91dd-a501f4bebc48', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 8, 'production', 0.2702781201629262, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.782、過去3着以内率 +0.185、過去勝率 +0.183。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('86214127-500d-514b-bd32-6f27cdfca44c', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 9, 'production', 0.04351712571028733, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.286、過去3着以内率 -0.266、過去走数 +0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3be12a50-daa2-5c0b-b467-ac8bbf83b8e3', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 10, 'production', 0.01815479140847753, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.869、平均着順比 -0.288、直近5走の着順比 -0.214。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3e1f4f70-b67d-5ad7-8215-9e89a8fc2af8', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 11, 'production', 0.01013542345641709, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.204、過去走数 +0.319、平均着順比 -0.266。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('70975c8a-359e-555e-9a5e-da5f0828cc50', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 12, 'production', 0.028276276570788784, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.800、過去走数 +0.357、平均着順比 -0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('79b699df-4c5f-5e1a-b7b3-ebdd2e973669', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 13, 'production', 0.0066506022387565, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.227、平均着順比 -0.455、過去3着以内率 -0.300。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0fa70fcb-6581-56d8-9924-c5451550f1f6', '4ecacf9c-faa8-4991-ad53-48f108cbeef3', 14, 'production', 0.04480165294326445, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.259、過去3着以内率 -0.256、過去走数 +0.224。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a564b292-1e9f-57d4-b665-02d93b703c94', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 1, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ff1602f1-7aef-5cf2-ba58-a48f78b489a1', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 2, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2e7c14c8-2234-57a5-974e-e655fe6c8c14', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 3, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('531eecf4-637b-5b1c-baf1-a18979b9157f', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 4, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d77fdf07-55c5-5036-be20-a21802fbd064', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 5, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c22bc39f-7bca-50b3-ac02-6603d2f9885f', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 6, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7c044292-0da0-5bf5-8e66-46ff8bcbb1b0', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 7, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c5b2500e-9fea-5a02-8a9b-98c4a5300c51', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 8, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf34b949-795e-59c6-8cd3-7f61d21111b3', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 9, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('89ca2b54-248c-5c5e-968f-51c591bd9b20', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 10, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('063ca867-e926-5c6f-a638-5c911b6faa10', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 11, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6e1953f3-3618-56b7-83c2-fe752afe0fea', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 12, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d02186b7-ddc9-522d-8141-c177fcd0f112', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 13, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ba9a403-79df-532b-b1b9-e63296067ce8', 'adc7b286-7e4e-4d7c-aadc-19636f33bd39', 14, 'production', 0.07142857142857142, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49e9cfe2-e7d7-566c-80ed-3a9337f41636', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 1, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1bf758a8-66b4-54b9-8f69-236b6748a2e5', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 2, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('542f7b5d-0dca-5ac4-b9a9-e47a519a9617', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 3, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d2bf4b1a-1e21-5a63-8382-0da6fe780c55', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 4, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2930b6f7-6651-5d06-a9b3-c9f43f56496b', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 5, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e9a10759-e89f-5c60-9319-e14b4a3a22b0', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 6, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d469b51-ccef-5723-84ba-419f5af0bbdb', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 7, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('99b43b70-5557-591a-bc12-54eb4e9370b2', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 8, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f3aa229b-bb68-58ce-878f-b71981b1b4ef', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 9, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7ac1cbf2-763f-5277-834a-eede3f5c91cf', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 10, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f48829d6-8aa6-5daf-85bf-f19c92ed97f6', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 11, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2790d6c2-37a1-57d3-9e69-750e6e79b36d', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 12, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c906122-90e2-5e70-93be-e5edd65db8ea', 'e3f862e5-1f2b-45ac-a414-4da18a5b05f1', 13, 'production', 0.07692307692307693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f1908289-c460-5282-b542-af8762e3cdbc', '2825f8f8-1347-49c0-8055-e1892d1a1428', 1, 'production', 0.04241018179495837, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.488、直近5走の着順比 +0.112、過去走数 +0.078。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e33394f-3607-5bc6-93aa-e0caf72c3882', '2825f8f8-1347-49c0-8055-e1892d1a1428', 2, 'production', 0.09921194121217614, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.431、過去走数 +0.136、前走からの日数 -0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f90eeb00-009b-5aef-890c-600ee97f1269', '2825f8f8-1347-49c0-8055-e1892d1a1428', 3, 'production', 0.002698396649989766, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.299、過去走数 -0.668、直近5走の着順比 -0.350。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4aed08ab-1bd4-5788-81a7-78f448c54988', '2825f8f8-1347-49c0-8055-e1892d1a1428', 4, 'production', 0.010951468948573444, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.518、過去3着以内率 -0.393、過去走数 -0.364。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e4735430-721e-5f59-afb7-97648d023184', '2825f8f8-1347-49c0-8055-e1892d1a1428', 5, 'production', 0.008848587771666963, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.909、過去3着以内率 -0.287、直近5走の着順比 -0.234。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('966b703c-a6b4-5341-9479-2a4ed8f3cbaa', '2825f8f8-1347-49c0-8055-e1892d1a1428', 6, 'production', 0.1276048675623258, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.670、平均着順比 +0.124、過去走数 +0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('84b4a93d-f60a-5607-b212-e597b29cb860', '2825f8f8-1347-49c0-8055-e1892d1a1428', 7, 'production', 0.0023080299707156325, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.625、平均着順比 -0.518、前走からの日数 -0.303。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c8c64aa2-ecd1-5a8a-9eba-aa8829e77ac2', '2825f8f8-1347-49c0-8055-e1892d1a1428', 8, 'production', 0.0037003224830047853, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.514、平均着順比 -0.509、過去3着以内率 -0.292。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d61a1a8-3b5a-5580-8380-575520d431b8', '2825f8f8-1347-49c0-8055-e1892d1a1428', 9, 'production', 0.09964299583696223, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.205、直近3走の着順比 +0.126、過去走数 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2b6d2936-4f65-5a99-8370-c46f3d116a1e', '2825f8f8-1347-49c0-8055-e1892d1a1428', 10, 'production', 0.047421677530937525, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.494、直近5走の着順比 +0.104、過去走数 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eea7b974-39cb-5a7d-9ebf-844c81c0a9ee', '2825f8f8-1347-49c0-8055-e1892d1a1428', 11, 'production', 0.01608482718306807, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.438、平均着順比 -0.386、直近5走の着順比 -0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2ce64d79-2814-54a4-8d22-889ca07b8dce', '2825f8f8-1347-49c0-8055-e1892d1a1428', 12, 'production', 0.11856580646475148, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.264、直近3走の着順比 +0.231、直近5走の着順比 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('48ca4de3-52ac-52f2-ae42-43842e8310c2', '2825f8f8-1347-49c0-8055-e1892d1a1428', 13, 'production', 0.028015932068000376, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、1勝（12.5%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.194、直近3走の着順比 -0.193、前走距離 -0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('62c51bb7-de6e-5658-bbbd-90c819894637', '2825f8f8-1347-49c0-8055-e1892d1a1428', 14, 'production', 0.1847947431129193, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.729、過去3着以内率 +0.274、平均着順比 +0.219。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d1065daa-2bcb-5a64-b2f2-2dae7eca44aa', '2825f8f8-1347-49c0-8055-e1892d1a1428', 15, 'production', 0.14983732517049977, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.412、平均着順比 +0.167、過去走数 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7c6711ef-20a8-52ac-9c69-ef90a5198d1f', '2825f8f8-1347-49c0-8055-e1892d1a1428', 16, 'production', 0.05790289623945046, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、1勝（10.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.121、直近5走の着順比 +0.105、前走からの日数 +0.098。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e692468b-33cf-5a0e-94eb-54970ab4a09e', 'a8b22460-a708-42f5-9098-683cbcb9971d', 1, 'production', 0.054947254076539685, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.496、平均着順比 +0.159、過去3着以内率 -0.118。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('224b0efc-634a-5650-b448-3d38212e8f59', 'a8b22460-a708-42f5-9098-683cbcb9971d', 2, 'production', 0.11346688453186397, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.696、過去3着以内率 +0.294、平均着順比 +0.290。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('058744ee-cf03-556f-a506-29df7e928ed3', 'a8b22460-a708-42f5-9098-683cbcb9971d', 3, 'production', 0.13680551406100902, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、2勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.851、過去3着以内率 +0.379、平均着順比 +0.201。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bdd9e121-5d19-552c-adce-fc73446d6d95', 'a8b22460-a708-42f5-9098-683cbcb9971d', 4, 'production', 0.014057870042966747, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.833、過去走数 -0.168、過去3着以内率 +0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('69fe32f5-1ca8-51e1-b76d-5dc009ccfcdd', 'a8b22460-a708-42f5-9098-683cbcb9971d', 5, 'production', 0.02500417557468659, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.780、過去3着以内率 +0.280、過去走数 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32bac386-8c02-5415-800f-9a837116a42a', 'a8b22460-a708-42f5-9098-683cbcb9971d', 6, 'production', 0.009450115129524364, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.796、過去走数 -0.211、直近5走の着順比 -0.207。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b3c4bcf8-9d71-5b62-9db7-de4296511e82', 'a8b22460-a708-42f5-9098-683cbcb9971d', 7, 'production', 0.03070114678311297, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.296、過去3着以内率 +0.173、過去勝率 +0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a45a0d5-85aa-5d84-bf53-35cdff908f59', 'a8b22460-a708-42f5-9098-683cbcb9971d', 8, 'production', 0.04305066578021745, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.434、前走からの日数 -0.333、過去3着以内率 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b72a471b-0b08-5b5d-9bd7-b0cc9ad08f04', 'a8b22460-a708-42f5-9098-683cbcb9971d', 9, 'production', 0.03023924620409965, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.223、過去3着以内率 -0.216、直近5走の着順比 -0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8347761d-7862-5504-87cb-b44e99749925', 'a8b22460-a708-42f5-9098-683cbcb9971d', 10, 'production', 0.04836428710829867, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.357、過去走数 +0.103、平均着順比 +0.097。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a3fc7a80-8984-575d-9b62-663d2aff2867', 'a8b22460-a708-42f5-9098-683cbcb9971d', 11, 'production', 0.059250693403851584, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.652、前走からの日数 +0.100、過去走数 -0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ffe34a1c-bce0-59d0-b16c-e99ca95bb52d', 'a8b22460-a708-42f5-9098-683cbcb9971d', 12, 'production', 0.09462394155227931, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.747、過去3着以内率 +0.156、平均着順比 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ec3dda66-0e0f-59fb-9359-6ece5c06d7ee', 'a8b22460-a708-42f5-9098-683cbcb9971d', 13, 'production', 0.05231594057629425, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.260、過去走数 +0.155、直近5走の着順比 +0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe26738f-9cab-5d0f-83c7-66d9ae7efed1', 'a8b22460-a708-42f5-9098-683cbcb9971d', 14, 'production', 0.04718220314480608, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.429、過去3着以内率 +0.303、過去走数 -0.215。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a603cec8-e8d7-54f6-9759-6cc433c700cd', 'a8b22460-a708-42f5-9098-683cbcb9971d', 15, 'production', 0.17032730185366812, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.802、過去3着以内率 +0.440、平均着順比 +0.347。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c76290fa-edc8-5cfc-aaad-7862f9da07e5', 'a8b22460-a708-42f5-9098-683cbcb9971d', 16, 'production', 0.07021276017678155, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.343、過去3着以内率 +0.253、平均着順比 +0.153。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1122abf2-b9b9-5303-aaeb-dbe74bc56082', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 1, 'production', 0.060144926160372154, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.178、前走距離 +0.153、過去3着以内率 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5aa65ad7-f000-5b57-a4b5-301b74a786c7', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 2, 'production', 0.14703372841958218, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.549、過去3着以内率 +0.289、平均着順比 +0.204。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('663725ff-0657-53dd-a609-7e8162a574cb', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 3, 'production', 0.03895237535940206, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.214、前走距離 +0.155、過去走数 -0.099。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b635b36a-5114-5aec-a22a-e0acb03b3f2e', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 4, 'production', 0.06436067583193111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.243、過去走数 +0.104、直近3走の着順比 +0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87d7e90b-228e-5b9a-b5bc-b1aa8e303161', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 5, 'production', 0.11364691888434632, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.568、前走距離 +0.236、平均着順比 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3d8cc73f-b68f-5179-801b-928d69c8c95b', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 6, 'production', 0.19466827290447739, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.853、過去3着以内率 +0.382、平均着順比 +0.157。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('99e4f08d-49d3-5fd9-9fd9-682f195ae7e3', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 7, 'production', 0.05039958635937359, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.165、過去走数 -0.125、平均着順比 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cdc8d52a-c460-514d-9756-b41d7d762a68', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 8, 'production', 0.10194861474136593, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.328、過去3着以内率 +0.271、過去走数 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('875c3de1-2d2d-522e-9046-7bbc2dc64c08', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 9, 'production', 0.06617153357738535, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.389、前走距離 +0.190、直近5走の着順比 +0.075。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98c2fc6d-45ef-5803-8b87-56a9a3da623f', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 10, 'production', 0.04805099776423506, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、2勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.585、前走距離 +0.316、過去勝率 +0.153。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ddf14c19-8254-51b2-b889-98d22c5d4b77', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 11, 'production', 0.07280908813244695, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.264、直近3走の着順比 +0.245、前走からの日数 -0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bf90cf83-33b4-5c4c-a6b7-2d58ecf68946', 'f6dccd70-2ff9-4c66-a9af-6f10c51ef4aa', 12, 'production', 0.04181328186508202, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 -0.242、前走距離 +0.172、過去3着以内率 +0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32c95d1d-620d-5d49-86a3-e23280c03776', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 1, 'production', 0.09183971422360906, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.913、過去走数 -0.568、過去3着以内率 +0.308。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc8e96be-d095-59c9-bd01-a4ae51b6e37d', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 2, 'production', 0.00969533874169405, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.475、直近3走の着順比 -0.340、過去3着以内率 -0.275。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14a5d8a6-e867-54eb-beb9-838b09f86944', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 3, 'production', 0.10143477269578498, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.735、過去3着以内率 +0.196、過去勝率 -0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3653f3dd-2489-5e92-9f36-d3a569d35653', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 4, 'production', 0.07871426050495114, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.348、過去3着以内率 +0.201、平均着順比 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4bc92252-610d-5601-abf1-d159fa51c6b5', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 5, 'production', 0.0302643955374247, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは19件、2勝（10.5%）。
推定｜SHAP（生スコア） 過去走数 -0.673、直近3走の着順比 +0.304、直近5走の着順比 +0.119。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ec696240-15a1-5da6-9ffa-05247f518f05', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 6, 'production', 0.09542222640577143, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.721、直近5走の着順比 +0.166、過去勝率 -0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('44f676de-0305-5a72-b898-40597dd8bcfa', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 7, 'production', 0.10691056041821012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.389、過去3着以内率 +0.356、平均着順比 +0.218。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b9f04f38-0a83-5a7e-906a-1e77a5025d67', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 8, 'production', 0.029490304022179455, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.295、過去走数 -0.202、過去3着以内率 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2dde7ffa-c12a-51fe-aa9d-5c5134e4e5a5', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 9, 'production', 0.04761290173705675, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.176、前走距離 +0.162、平均着順比 +0.039。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('435f0798-6ad1-5e0f-934b-99c64e2b2c3b', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 10, 'production', 0.03282538215611803, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、2勝（20.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.390、過去走数 -0.365、直近3走の着順比 +0.243。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c2008e3a-dd1c-5315-a567-f6249ff391b3', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 11, 'production', 0.023073263244353954, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.276、直近3走の着順比 -0.233、過去3着以内率 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('442f8c8a-65b4-5db1-ac3f-fd0d24b93cfc', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 12, 'production', 0.01043830830817381, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.887、平均着順比 -0.326、過去3着以内率 +0.219。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e1bb32b4-2185-5f65-8aca-c7b8977f0d51', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 13, 'production', 0.08439140447565416, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.602、過去3着以内率 +0.141、平均着順比 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5099feb9-679a-553c-bee4-43cb13923f7f', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 14, 'production', 0.12392522461238224, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.789、過去3着以内率 +0.310、平均着順比 +0.185。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0df53fbc-36ec-5f7e-a788-b963ee16378b', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 15, 'production', 0.10741427663883693, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.581、過去3着以内率 +0.269、平均着順比 +0.187。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('06e96ba4-7ace-5895-ab2e-1f7b57857de1', '46cc351f-dd5a-4b6e-bdd5-d628b0d3b0ee', 16, 'production', 0.026547666277799097, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.672、直近3走の着順比 +0.375、直近5走の着順比 +0.065。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f27b9279-b20c-58bc-b936-a8afa717313f', '75b7d002-d31b-479d-9010-4282597687b0', 1, 'production', 0.09460344665567437, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.753、過去3着以内率 +0.340、直近5走の着順比 +0.177。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4abb8874-056f-5d43-a16c-ee8185f680e9', '75b7d002-d31b-479d-9010-4282597687b0', 2, 'production', 0.09023848388474921, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.736、過去3着以内率 +0.317、平均着順比 +0.218。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cdf209cd-7f39-524c-83e5-69e39c7ae3f4', '75b7d002-d31b-479d-9010-4282597687b0', 3, 'production', 0.04621489330137813, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.451、過去勝率 -0.154、平均着順比 +0.123。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae7732bb-a2d8-5787-aaaf-e9054ac2c3e8', '75b7d002-d31b-479d-9010-4282597687b0', 4, 'production', 0.09986893553496647, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.747、過去3着以内率 +0.319、平均着順比 +0.249。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f6c72dad-2b92-56c0-9b86-379ea9c640bb', '75b7d002-d31b-479d-9010-4282597687b0', 5, 'production', 0.08135111204447924, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.639、過去3着以内率 +0.333、平均着順比 +0.169。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae8b16fc-7247-5340-87e1-ce3ba4834f7e', '75b7d002-d31b-479d-9010-4282597687b0', 6, 'production', 0.08168546220450121, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.679、過去3着以内率 +0.320、平均着順比 +0.177。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e63eeb38-a615-56eb-a6f9-414360b5f0d6', '75b7d002-d31b-479d-9010-4282597687b0', 7, 'production', 0.09208140231762212, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.741、過去3着以内率 +0.317、直近5走の着順比 +0.220。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b191ade2-a733-5c2a-b6ed-28de14362777', '75b7d002-d31b-479d-9010-4282597687b0', 8, 'production', 0.09279624718850901, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.842、過去3着以内率 +0.332、直近5走の着順比 +0.228。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87eaba99-f836-5571-9d4f-77ad13f53a3c', '75b7d002-d31b-479d-9010-4282597687b0', 9, 'production', 0.08821908877755381, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.722、過去3着以内率 +0.351、平均着順比 +0.201。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1b50f644-aec6-5d76-a9c9-8de89c8d979b', '75b7d002-d31b-479d-9010-4282597687b0', 10, 'production', 0.0888951889174963, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.702、過去3着以内率 +0.359、平均着順比 +0.207。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1134dee1-93a3-50d6-934a-dd2262bba5e9', '75b7d002-d31b-479d-9010-4282597687b0', 11, 'production', 0.05972154753558192, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.627、過去3着以内率 +0.316、過去勝率 -0.202。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82b8d8d7-2c01-56e1-8953-288e329c11cf', '75b7d002-d31b-479d-9010-4282597687b0', 12, 'production', 0.08432419163748792, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.629、過去3着以内率 +0.333、平均着順比 +0.170。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2151ae3f-7ed0-5dbe-bb6b-78e9fdd64c89', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 1, 'production', 0.15068378574348437, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.902、過去3着以内率 +0.429、平均着順比 +0.168。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('08da045a-3987-53f5-a777-848391bd976c', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 2, 'production', 0.0379013903507283, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.233、前走距離 +0.123、過去勝率 -0.118。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a5615dd8-9c87-53dd-98e4-78a5c4d41d8c', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 3, 'production', 0.015771426216708323, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -1.155、直近3走の着順比 +0.584、過去3着以内率 -0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('800ddf53-bde3-5b7a-a805-f4d6d546e06d', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 4, 'production', 0.1034438533029684, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.663、過去3着以内率 +0.343、平均着順比 +0.177。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3d7082b8-5efc-5431-8436-b0bdc73c41a5', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 5, 'production', 0.04686748060640616, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.333、平均着順比 +0.138、直近5走の着順比 +0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('085455e1-f5e7-5c6f-85f6-ccc04e301aed', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 6, 'production', 0.07615049286495718, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.552、過去3着以内率 +0.303、前走からの日数 -0.303。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc73059c-7fd5-5db7-bece-d3d657209909', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 7, 'production', 0.05265664927795477, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.407、過去3着以内率 +0.218、直近5走の着順比 +0.053。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0d3d79b6-1de5-51f7-bff8-99871381f021', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 8, 'production', 0.09341480681950999, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.800、過去3着以内率 +0.146、直近5走の着順比 +0.116。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5ccc0633-3360-558b-affe-3c24fdd0ffea', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 9, 'production', 0.07065962147831839, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.619、過去3着以内率 +0.167、直近5走の着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5bfc8dc9-b257-5574-af12-543560328775', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 10, 'production', 0.031398067457883545, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.706、過去走数 -0.314、前走からの日数 -0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1050574e-af42-5ce5-ba5b-7d2d8735d65d', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 11, 'production', 0.010537413557197802, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.532、前走距離 -0.163、平均着順比 -0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87d914de-04b1-5540-830b-eb5ba8625924', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 12, 'production', 0.071372209756498, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.781、平均着順比 +0.159、過去3着以内率 -0.151。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('896f76f4-1d0b-5800-bb5c-6142894805c8', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 13, 'production', 0.004274627564058184, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.075、過去3着以内率 -0.260、過去走数 -0.206。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14ca004e-c32c-5931-8db9-59a51dad708b', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 14, 'production', 0.06648150465871508, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.528、平均着順比 +0.138、直近5走の着順比 +0.090。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9ced2e15-48b7-5573-b542-259a2a881010', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 15, 'production', 0.015210592041202542, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.869、過去3着以内率 +0.249、過去勝率 +0.086。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('116fa1d1-9b32-5aff-9395-375684c3f112', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 16, 'production', 0.004809797772312959, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.032、前走からの日数 -0.374、平均着順比 -0.364。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b027d556-fd64-517a-9ae0-cc4d96b1082b', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 17, 'production', 0.056749133873810635, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.605、過去勝率 -0.118、過去3着以内率 +0.103。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0d28be5b-cc40-5b06-906f-8da0d30ed6a7', '1c3a4061-2391-4205-b83b-8e12e61ae73f', 18, 'production', 0.09161714665728529, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.669、過去3着以内率 +0.284、平均着順比 +0.200。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:16:43.891188+00:00') on conflict (id) do nothing;
commit;
