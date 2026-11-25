begin;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ea6ce88-adc7-5fd0-b323-bea5f8c7cd62', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 1, 'production', 0.03404658366763287, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.312、過去走数 +0.163、前走距離 -0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('18a350c2-e610-53a9-9d7f-b0216aff0a1d', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 2, 'production', 0.0027766262783734588, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.412、平均着順比 -0.569、直近5走の着順比 -0.328。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b9e08c48-c468-5e0d-8ef1-77503fce3704', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 3, 'production', 0.010810178665563986, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.034、過去走数 +0.386、平均着順比 -0.251。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7d915e98-3b93-5c98-9604-2433a28dc545', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 4, 'production', 0.05251433209796489, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dafd79de-df73-598d-8dfb-64df37ab5a54', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 5, 'production', 0.005956892824303295, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.296、平均着順比 -0.436、過去走数 +0.404。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d62ab20-51df-5a17-9540-938c31570ced', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 6, 'production', 0.006767416856865111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.307、過去走数 +0.410、平均着順比 -0.405。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eb371d52-d200-5652-beb7-fa8360b2b467', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 7, 'production', 0.21163511046236325, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +1.038、過去3着以内率 +0.355、過去勝率 +0.259。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0019b8ce-8f4f-560f-9dd5-cf69f5ec6788', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 8, 'production', 0.2588645377311203, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.911、過去3着以内率 +0.388、過去勝率 +0.232。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38778dd5-2dae-5255-953e-07a4bba42d6b', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 9, 'production', 0.11751459096596488, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.471、過去3着以内率 +0.271、過去勝率 +0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39b1cb2e-3b50-5784-9c20-d9dfb746f0de', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 10, 'production', 0.026737411030105705, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.425、平均着順比 -0.095、過去走数 +0.078。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e7b0d492-329b-573a-a522-5962617ad35f', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 11, 'production', 0.0662220082273609, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.504、過去3着以内率 -0.347、平均着順比 +0.130。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7648b55c-313f-56f6-b39d-6f3c26e18c6a', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 12, 'production', 0.07295596263119795, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 +0.136、過去走数 +0.136、過去勝率 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f19e1a28-caef-5e62-9a88-59ee82f5bfd2', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 13, 'production', 0.02129717571707274, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.278、直近3走の着順比 -0.236、過去走数 +0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e2222f1-c2d9-546c-82b6-cb14c0fdc647', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 14, 'production', 0.0075597421843476105, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.317、過去走数 +0.431、平均着順比 -0.392。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b6613ba2-a17a-50cf-8be6-86b9b07b0fdd', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 15, 'production', 0.05251433209796489, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('74d01b31-f6ba-5f35-b820-5c3ab3dcda94', '670aa38c-df0a-47df-b0e9-bef33dfa3e69', 16, 'production', 0.05182709856179807, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.309、前走距離 -0.182、前走からの日数 -0.181。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f77de5c6-e8d0-5676-9537-d610c69560f0', '3d89d958-bcd5-4805-82ee-94f448cc8466', 1, 'production', 0.00795607228366318, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.067、過去走数 +0.378、平均着順比 -0.248。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b278dd93-5a10-5dcc-ae4b-01339a8c6054', '3d89d958-bcd5-4805-82ee-94f448cc8466', 2, 'production', 0.03428607861519566, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.311、直近3走の着順比 +0.290、過去走数 +0.101。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('21910954-1fcf-51cd-9fca-0cd714af159a', '3d89d958-bcd5-4805-82ee-94f448cc8466', 3, 'production', 0.0064523713477295085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.990、平均着順比 -0.293、直近5走の着順比 -0.239。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c42715b-0528-57aa-a9d9-af65bffd4632', '3d89d958-bcd5-4805-82ee-94f448cc8466', 4, 'production', 0.03299937809500158, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.271、過去走数 +0.207、前走距離 +0.107。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2e41115d-85d0-538e-87aa-97c951e2711f', '3d89d958-bcd5-4805-82ee-94f448cc8466', 5, 'production', 0.1686684410914762, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +1.040、過去3着以内率 +0.363、過去勝率 +0.243。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2279fa68-f18d-553f-9200-b2d31bcc4901', '3d89d958-bcd5-4805-82ee-94f448cc8466', 6, 'production', 0.006516618591368904, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.004、平均着順比 -0.288、直近5走の着順比 -0.234。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('abb66b30-d7b3-5234-b9c3-06b6c6821f3a', '3d89d958-bcd5-4805-82ee-94f448cc8466', 7, 'production', 0.11705703693489768, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.690、過去3着以内率 +0.225、過去勝率 +0.200。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('94536bef-c023-5a0f-8569-c460e1bd63b7', '3d89d958-bcd5-4805-82ee-94f448cc8466', 8, 'production', 0.028479747081297573, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.371、直近3走の着順比 +0.132、過去走数 +0.093。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2dbb978a-621b-5d74-91ef-97aba12587fc', '3d89d958-bcd5-4805-82ee-94f448cc8466', 9, 'production', 0.007821489860371435, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.858、平均着順比 -0.293、直近5走の着順比 -0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2ac7e45c-4cd6-5f15-b5b1-a07631f9e353', '3d89d958-bcd5-4805-82ee-94f448cc8466', 10, 'production', 0.060314863944372854, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.685、過去3着以内率 -0.329、平均着順比 +0.165。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('331078b3-2a99-5f3e-b8d5-ebeefcc1d9ec', '3d89d958-bcd5-4805-82ee-94f448cc8466', 11, 'production', 0.09386372822907041, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.546、過去3着以内率 +0.224、過去勝率 +0.156。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bd16b0b8-f341-57ae-8074-4b68fc548559', '3d89d958-bcd5-4805-82ee-94f448cc8466', 12, 'production', 0.028898835595421463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.287、過去走数 +0.181、直近5走の着順比 +0.067。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d423efca-a7df-5585-af78-29945f0f4fd5', '3d89d958-bcd5-4805-82ee-94f448cc8466', 13, 'production', 0.12980429239179841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.623、過去3着以内率 +0.304、過去勝率 +0.179。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c986c759-c160-54bb-a6b4-22440a03bd99', '3d89d958-bcd5-4805-82ee-94f448cc8466', 14, 'production', 0.014782656442046169, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.389、過去走数 +0.245、過去3着以内率 -0.233。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d1b65a46-39ec-57ae-a3d0-1981aaf99f28', '3d89d958-bcd5-4805-82ee-94f448cc8466', 15, 'production', 0.15372655429181298, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.819、過去3着以内率 +0.322、過去勝率 +0.158。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d480ee1d-1100-5b89-bdd3-76a23786235e', '3d89d958-bcd5-4805-82ee-94f448cc8466', 16, 'production', 0.1083718352044761, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.627、過去3着以内率 +0.328、過去勝率 +0.175。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f8d2f1c-6b63-534e-b98d-bc9b75cb8baf', '49001b04-310a-412d-ae80-46b8d96b7f26', 1, 'production', 0.12564346085404965, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.711、前走からの日数 +0.093、直近5走の着順比 +0.078。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4041dba1-35ba-55f7-befb-f8241c6b71f0', '49001b04-310a-412d-ae80-46b8d96b7f26', 2, 'production', 0.04776860489585831, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.445、過去3着以内率 +0.363、直近3走の着順比 +0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d1b9071-27e1-5529-81f2-5eb697b96015', '49001b04-310a-412d-ae80-46b8d96b7f26', 3, 'production', 0.15717624455216034, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.782、過去3着以内率 +0.209、平均着順比 +0.157。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('010066b3-0831-5168-a4ed-addf7d3022a6', '49001b04-310a-412d-ae80-46b8d96b7f26', 4, 'production', 0.04920158485282502, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.297、過去3着以内率 +0.269、直近5走の着順比 -0.098。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('54262e49-3a3c-5b7c-870c-71938f74d952', '49001b04-310a-412d-ae80-46b8d96b7f26', 5, 'production', 0.0994865379058637, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.414、平均着順比 +0.144、直近5走の着順比 +0.091。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7fe6fca3-3bae-5076-b1c4-9248defdda70', '49001b04-310a-412d-ae80-46b8d96b7f26', 6, 'production', 0.0061469783714426214, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.944、過去走数 -0.310、過去3着以内率 -0.307。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c7be2f9a-bf9a-5d9e-aa44-282cb0b0ee30', '49001b04-310a-412d-ae80-46b8d96b7f26', 7, 'production', 0.16481692524579622, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.900、過去走数 -0.212、過去勝率 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0fe7ee4b-cd83-5fdb-9377-c1c319cf9f4d', '49001b04-310a-412d-ae80-46b8d96b7f26', 8, 'production', 0.0180460587978395, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.104、過去3着以内率 +0.158、過去勝率 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('47750e15-d108-5154-b994-b268d3f6d867', '49001b04-310a-412d-ae80-46b8d96b7f26', 9, 'production', 0.0038068853419442688, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.083、平均着順比 -0.465、過去走数 -0.310。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dfc3c517-9b93-551f-8c38-824be6cd20fa', '49001b04-310a-412d-ae80-46b8d96b7f26', 10, 'production', 0.024431617700347956, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.252、直近5走の着順比 -0.163、過去3着以内率 -0.137。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c160bc7b-b400-589a-946d-05a0ff7edfae', '49001b04-310a-412d-ae80-46b8d96b7f26', 11, 'production', 0.12605849935823096, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.418、直近3走の着順比 +0.386、平均着順比 +0.128。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('01ce9a3e-d70b-5ae5-b262-71b7dae6482e', '49001b04-310a-412d-ae80-46b8d96b7f26', 12, 'production', 0.12401383076870962, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.621、平均着順比 +0.129、直近5走の着順比 +0.086。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('526ee009-a6aa-5171-b794-7cab7f96bca4', '49001b04-310a-412d-ae80-46b8d96b7f26', 13, 'production', 0.02559718001693921, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.243、過去3着以内率 -0.190、過去走数 -0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('250775de-ee31-552c-8cae-5583ec459644', '49001b04-310a-412d-ae80-46b8d96b7f26', 14, 'production', 0.00805049903784027, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.852、平均着順比 -0.357、過去3着以内率 -0.276。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0c2bcabf-8e7b-5718-8234-95beeeefd7d0', '49001b04-310a-412d-ae80-46b8d96b7f26', 15, 'production', 0.01975509230015242, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.519、過去3着以内率 -0.290、過去走数 +0.055。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('47421c3a-32e2-5bcb-be19-a676c8544a0c', '771be64b-59eb-44d4-a7b0-302d0e637eed', 1, 'production', 0.1737353701068622, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.745、過去3着以内率 -0.281、直近3走の着順比 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bd6b4b09-5c1f-5b27-9c88-bdaf83d2ceaf', '771be64b-59eb-44d4-a7b0-302d0e637eed', 2, 'production', 0.09364748021065625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.447、過去3着以内率 +0.188、前走距離 +0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09dcdce3-2eb5-51b2-8ad1-3f4c60a73421', '771be64b-59eb-44d4-a7b0-302d0e637eed', 3, 'production', 0.012429526970297054, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.038、平均着順比 -0.414、過去3着以内率 -0.259。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5dd38050-160f-59d0-99fa-8f738d8759bd', '771be64b-59eb-44d4-a7b0-302d0e637eed', 4, 'production', 0.019235852971555886, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.824、前走距離 +0.479、平均着順比 -0.379。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29bc3744-8dcc-5d63-8400-727dc0f4b762', '771be64b-59eb-44d4-a7b0-302d0e637eed', 5, 'production', 0.06929006705821522, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.892、前走距離 +0.675、過去3着以内率 +0.195。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('191aba34-8389-5af8-a2b9-3925bf948ba3', '771be64b-59eb-44d4-a7b0-302d0e637eed', 6, 'production', 0.11384254055505076, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.817、前走距離 +0.705、過去3着以内率 +0.199。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d051cc3d-ba6a-52c8-a00e-26f8594e6e37', '771be64b-59eb-44d4-a7b0-302d0e637eed', 7, 'production', 0.08384432166253368, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.647、過去3着以内率 -0.469、直近3走の着順比 -0.189。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0cbacbe9-17cf-5e33-a739-92018e373446', '771be64b-59eb-44d4-a7b0-302d0e637eed', 8, 'production', 0.09808770111121985, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.694、過去3着以内率 -0.353、直近3走の着順比 -0.312。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5e7f0a7a-650a-5906-8342-46d963667a84', '771be64b-59eb-44d4-a7b0-302d0e637eed', 9, 'production', 0.05933425828132664, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.338、直近3走の着順比 -0.166、過去勝率 +0.074。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ca213dd-cc4d-562f-ac68-dec9a7620eeb', '771be64b-59eb-44d4-a7b0-302d0e637eed', 10, 'production', 0.09513254621364224, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.882、過去3着以内率 -0.342、過去走数 -0.254。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('483edd66-51a1-52fb-bad6-7efd9e9645fb', '771be64b-59eb-44d4-a7b0-302d0e637eed', 11, 'production', 0.03250985563425698, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.678、過去走数 -0.576、直近5走の着順比 -0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('43c5a55d-a826-5077-9e75-03d34dbded4e', '771be64b-59eb-44d4-a7b0-302d0e637eed', 12, 'production', 0.14891047922438322, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.845、直近3走の着順比 -0.315、過去3着以内率 +0.172。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('808f80c3-adf6-5fe6-bca5-e5bb3a9b61b7', 'a407efcc-c377-46b0-af20-8975dc440806', 1, 'production', 0.02019105875648487, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.231、前走距離 +0.677、平均着順比 -0.374。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('497d3de3-3e8b-5ab4-8e03-60ad3cf33937', 'a407efcc-c377-46b0-af20-8975dc440806', 2, 'production', 0.3632764764950173, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.899、直近3走の着順比 +0.830、過去走数 -0.306。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d3c06202-c8d1-51d3-9081-ecca6c34212d', 'a407efcc-c377-46b0-af20-8975dc440806', 3, 'production', 0.009086987510518674, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.031、平均着順比 -0.487、過去3着以内率 -0.269。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('13ae24bd-0df0-54b3-bc77-bb2210c900b0', 'a407efcc-c377-46b0-af20-8975dc440806', 4, 'production', 0.03409988381066936, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.863、直近3走の着順比 -0.569、過去走数 -0.463。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('96265045-80ba-56df-8394-a1f3242cc61e', 'a407efcc-c377-46b0-af20-8975dc440806', 5, 'production', 0.01532779900229269, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.792、平均着順比 -0.338、過去3着以内率 -0.258。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('36ab11f9-7d42-530b-98ac-c8a3e6659388', 'a407efcc-c377-46b0-af20-8975dc440806', 6, 'production', 0.4944385091050729, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.931、直近3走の着順比 +0.355、過去3着以内率 +0.266。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ee545bef-02d9-5b79-9a3a-cff4db8109ba', 'a407efcc-c377-46b0-af20-8975dc440806', 7, 'production', 0.013348563527935285, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.034、前走距離 +0.489、平均着順比 -0.439。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c261f786-3ae9-5caa-848a-a1b5d95e0f07', 'a407efcc-c377-46b0-af20-8975dc440806', 8, 'production', 0.04081094809471111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.792、前走からの日数 -0.576、過去3着以内率 -0.418。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fccbf7e0-7a12-5cc6-a5e5-00e6377d3927', 'a407efcc-c377-46b0-af20-8975dc440806', 9, 'production', 0.009419773697297778, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.069、過去走数 -0.573、直近5走の着順比 -0.306。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('60e30753-f9cc-596e-bc92-f6aca4be5b52', '21ccaff9-f670-427d-a1fc-c0e82da20726', 1, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ab7fa670-f0a9-5873-87e1-d15861af5e86', '21ccaff9-f670-427d-a1fc-c0e82da20726', 2, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('75191c43-5463-552b-bdca-4d1b3847382d', '21ccaff9-f670-427d-a1fc-c0e82da20726', 3, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c633b969-d6b6-5dba-9f07-13d651ca7a50', '21ccaff9-f670-427d-a1fc-c0e82da20726', 4, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c80500ee-6522-5766-adf1-b75738a29502', '21ccaff9-f670-427d-a1fc-c0e82da20726', 5, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7a8d5455-c218-537d-b860-fe7dce139eeb', '21ccaff9-f670-427d-a1fc-c0e82da20726', 6, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c7e5a53e-8118-523e-8efb-0d3154825c32', '21ccaff9-f670-427d-a1fc-c0e82da20726', 7, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f22ba546-9ec2-51d3-bc15-6de46a3498c0', '21ccaff9-f670-427d-a1fc-c0e82da20726', 8, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6472eaef-1f01-5632-a034-9e66d0947f73', '21ccaff9-f670-427d-a1fc-c0e82da20726', 9, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('da0d9122-60c8-58db-874d-aad489140372', '21ccaff9-f670-427d-a1fc-c0e82da20726', 10, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c2427ca4-3ca0-5818-9ec9-6e93428a3779', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 1, 'production', 0.025181608800860046, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.354、直近3走の着順比 -0.236、過去走数 +0.085。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7ae631b0-96bb-574d-aeac-d3112d88c6ad', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 2, 'production', 0.06529783943447277, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.160、過去走数 +0.142、前走距離 -0.119。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('51543747-f3b9-588d-b42d-0c151f6cffbf', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 3, 'production', 0.10214574835910238, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.446、過去3着以内率 +0.102、直近5走の着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f7bcc43-31b1-51a5-82dc-ec607bf856a0', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 4, 'production', 0.008067208691061966, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.923、平均着順比 -0.356、過去3着以内率 -0.241。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c78ff7ab-6f29-53ac-ba89-332bb4e0c328', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 5, 'production', 0.05227064865417172, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.334、前走からの日数 -0.261、前走距離 -0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc7b2a4f-649c-5fa3-98cb-f8eedb35a39b', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 6, 'production', 0.12136091905544438, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.699、平均着順比 +0.204、過去勝率 -0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('092bf3ed-ecd3-54cf-a375-d5fe6c9e74ca', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 7, 'production', 0.11503967867044836, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.750、過去勝率 -0.136、直近5走の着順比 +0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c74f9d6-cd77-5093-a751-546b6694fe3d', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 8, 'production', 0.10054382166981113, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.409、過去3着以内率 +0.128、過去走数 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af59a9ae-137c-5b87-919b-3387c7debea6', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 9, 'production', 0.003972856126722647, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.330、平均着順比 -0.509、直近5走の着順比 -0.359。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88c14530-83aa-531a-943a-3da63baa88dc', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 10, 'production', 0.08461147503838105, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.697、過去3着以内率 -0.225、直近5走の着順比 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('673cdaed-297c-533f-bebc-6cd32a38429e', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 11, 'production', 0.11434902778780603, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.762、過去3着以内率 -0.317、直近5走の着順比 +0.121。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bff93476-d898-5bab-bc3c-9e4c4bf13cfa', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 12, 'production', 0.08152642433757656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.383、前走からの日数 +0.138、直近5走の着順比 +0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a7bd55f0-f449-57f8-85bf-9ef10150ea0f', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 13, 'production', 0.007002927949747829, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.045、過去走数 -0.179、前走距離 -0.170。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('73d13ff7-0df3-56dd-b2e9-c6765046f997', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 14, 'production', 0.039539206319320584, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.408、過去走数 +0.100、前走距離 -0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('590aa0af-661c-54d4-8e89-32002fa5346a', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 15, 'production', 0.05885112258419728, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.382、過去3着以内率 -0.175、前走からの日数 +0.110。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('41c94fd9-51fa-54f5-ac11-3801465c6088', 'c2f9c140-577c-40be-acb6-fc3f4c227347', 16, 'production', 0.020239486520875316, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.642、過去3着以内率 +0.197、直近5走の着順比 -0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('03c49a98-43c7-51c8-bf3f-fa96e8638888', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 1, 'production', 0.03568967767145242, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.294、前走距離 -0.156、直近5走の着順比 -0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4937b9bd-2c92-5448-868d-65c68bd5b33d', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 2, 'production', 0.08471141118486278, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.239、前走距離 -0.120、過去3着以内率 -0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3d10b880-8162-5024-87ee-191af43b9d75', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 3, 'production', 0.10992920826488521, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.623、前走距離 -0.150、直近5走の着順比 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('125777d1-d335-5929-8685-f34a441908be', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 4, 'production', 0.03426922437955363, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.370、直近3走の着順比 -0.294、直近5走の着順比 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c6b35edd-c79b-522e-abb6-16ed49f9cb44', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 5, 'production', 0.06313903753354543, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走からの日数 -0.280、過去3着以内率 +0.249、前走距離 -0.160。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3aec92a4-d671-541c-959c-52115e0a9766', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 6, 'production', 0.10657769598615287, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.330、過去3着以内率 +0.182、前走距離 -0.162。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ba2b7e1-584a-583c-8152-e23b99b17415', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 7, 'production', 0.031827465844670076, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.307、直近5走の着順比 -0.185、前走距離 -0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('20b8614a-9b30-546a-a2eb-277f58cc10ce', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 8, 'production', 0.04512213935093805, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.285、前走距離 -0.122、過去3着以内率 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3a3ce7ac-37ab-5920-887a-53d4fcc1da79', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 9, 'production', 0.07149362470459465, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.167、過去3着以内率 +0.139、直近5走の着順比 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('313e9d8c-93a1-5c38-91e3-05a3f80b6cdd', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 10, 'production', 0.016045119491104366, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.208、直近5走の着順比 -0.194、過去3着以内率 +0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f0ba1edb-e7f4-5d5d-b92a-1f0751d94025', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 11, 'production', 0.1853674435020681, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.606、過去3着以内率 +0.208、前走からの日数 +0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('674feef9-791b-5729-b588-2348358e2e83', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 12, 'production', 0.07052611309231778, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.213、前走距離 -0.104、平均着順比 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b0923d8a-bac0-55f0-be42-56d877f4d038', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 13, 'production', 0.07653891789965038, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.281、過去3着以内率 +0.178、直近5走の着順比 +0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c35e9903-d010-53cd-84ef-318f9d3feeda', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 14, 'production', 0.030041410439429723, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.592、過去3着以内率 -0.201、直近5走の着順比 -0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fc4d05a2-af17-5458-b8c0-ffc664accf14', 'e7cbe922-f12b-431a-aa57-9363c2a6fa20', 15, 'production', 0.038721510654774596, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.307、前走からの日数 -0.215、前走距離 -0.182。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('067b2da6-6b49-50fa-96da-0e08859a7847', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 1, 'production', 0.0971525203574292, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.446、前走距離 -0.149、平均着順比 +0.136。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8954fa0b-d796-55c7-960a-ca6dd39bce9a', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 2, 'production', 0.07136264675469181, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.356、前走距離 -0.203、過去勝率 -0.192。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f664763a-4087-5f9f-b8bb-ab9ea310f85e', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 3, 'production', 0.10161104736380307, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.414、平均着順比 +0.134、過去勝率 -0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('24a8f06c-50cc-5892-bdb3-155aaa01bd17', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 4, 'production', 0.09847579052225204, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.393、過去勝率 -0.120、平均着順比 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('40bce4c5-9eb0-5815-b293-16125eef71ce', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 5, 'production', 0.11631398602515056, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.535、過去3着以内率 +0.214、過去勝率 -0.198。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e47ac3f1-6830-501e-9452-2abe936636fe', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 6, 'production', 0.0713686057109006, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.264、過去勝率 -0.090、前走距離 -0.087。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a95044c3-4f8b-51bc-8ee8-cb4ba264e6dc', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 7, 'production', 0.04478859458103639, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去勝率 -0.126、直近3走の着順比 -0.111、過去3着以内率 +0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('be367134-dacc-5c3b-8653-bd72205baae3', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 8, 'production', 0.08885120647296185, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.311、直近3走の着順比 +0.256、前走距離 -0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e63a7cc5-4760-5008-a324-04cda6864937', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 9, 'production', 0.07016746684839682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.187、過去走数 +0.117、過去勝率 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5eac2bc4-6b79-5ade-94ea-f2554bc6fb57', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 10, 'production', 0.03492163847511136, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.324、過去3着以内率 +0.113、平均着順比 -0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d00cdef7-f8db-5272-be95-429dd0908ccc', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 11, 'production', 0.0612870911287043, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 -0.155、過去3着以内率 +0.142、直近3走の着順比 +0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0336bac1-48ed-5663-92ae-f43375849ae5', '7b1da861-29b8-466a-bdd2-f2ff509b6c1b', 12, 'production', 0.14369940575956194, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.599、過去3着以内率 +0.291、平均着順比 +0.193。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f48b78d4-3f2b-5096-a5ef-888fe06d884b', '88e9bec8-b305-4455-aa86-11c3976339d7', 1, 'production', 0.009399364911370191, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.439、過去3着以内率 -0.321、過去走数 -0.309。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7924bf50-43a3-5949-8e73-aca2e06bb195', '88e9bec8-b305-4455-aa86-11c3976339d7', 2, 'production', 0.03711636769290523, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.784、前走距離 +0.334、過去3着以内率 +0.289。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2c93808f-4569-5dba-8682-a3b5f99b869a', '88e9bec8-b305-4455-aa86-11c3976339d7', 3, 'production', 0.07323507177759629, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.377、過去3着以内率 +0.184、前走からの日数 -0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('516d169e-fdf0-5612-87e0-acf5d809696b', '88e9bec8-b305-4455-aa86-11c3976339d7', 4, 'production', 0.08560460499546085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.282、前走距離 +0.181、過去走数 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('58be335d-d531-573e-a6cc-4ab20ceb97ac', '88e9bec8-b305-4455-aa86-11c3976339d7', 5, 'production', 0.1820531590138646, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.741、過去3着以内率 +0.285、前走距離 +0.243。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0fe5d4fa-c987-5df6-922b-b0a138aef1d1', '88e9bec8-b305-4455-aa86-11c3976339d7', 6, 'production', 0.06999658600482248, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.430、前走距離 +0.201、平均着順比 -0.043。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59d8519a-e766-51e4-b948-25875c9d8e4c', '88e9bec8-b305-4455-aa86-11c3976339d7', 7, 'production', 0.06999197414549875, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.279、過去走数 +0.108、前走距離 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e1592eb-ef95-5a8e-b040-fbc971ea6514', '88e9bec8-b305-4455-aa86-11c3976339d7', 8, 'production', 0.03587571836413595, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.171、過去走数 -0.159、過去3着以内率 -0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14f13ceb-ec65-523a-9946-629a0c298288', '88e9bec8-b305-4455-aa86-11c3976339d7', 9, 'production', 0.028968780446505853, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.184、直近3走の着順比 -0.175、過去3着以内率 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('42b80faa-2f5c-5fb3-b5a0-e3b2cabef311', '88e9bec8-b305-4455-aa86-11c3976339d7', 10, 'production', 0.05174229374219951, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.388、直近3走の着順比 -0.277、前走距離 +0.180。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('54f64060-c341-5473-ae32-0421a807818d', '88e9bec8-b305-4455-aa86-11c3976339d7', 11, 'production', 0.0815482832556302, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.317、過去走数 -0.215、直近3走の着順比 +0.178。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8a6c9096-a897-5d12-a727-2b515d94ff20', '88e9bec8-b305-4455-aa86-11c3976339d7', 12, 'production', 0.1316643341090684, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 前走距離 +0.746、過去3着以内率 +0.236、直近3走の着順比 +0.142。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e9a47aec-58f8-511c-8de3-60127872ed58', '88e9bec8-b305-4455-aa86-11c3976339d7', 13, 'production', 0.01205757916755661, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.793、過去走数 -0.225、直近5走の着順比 -0.203。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ef7a278-a689-557f-8dea-4428ce1525d9', '88e9bec8-b305-4455-aa86-11c3976339d7', 14, 'production', 0.012716915898923662, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.888、過去走数 -0.274、直近5走の着順比 -0.189。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1985c2c9-35f8-559e-8a3c-da29530e7b9e', '88e9bec8-b305-4455-aa86-11c3976339d7', 15, 'production', 0.026945519812970317, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.400、前走距離 +0.194、過去勝率 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e6ede5c3-ff40-5d77-a92b-766b5dde1179', '88e9bec8-b305-4455-aa86-11c3976339d7', 16, 'production', 0.09108344666149112, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.595、前走距離 +0.198、前走からの日数 -0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b91e112a-985a-5dec-9b53-54f67190ca03', '522725c8-d5fd-44c9-941e-4abfd985054d', 1, 'production', 0.048781510376405865, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.527、過去走数 -0.400、前走からの日数 -0.266。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fc2fd743-b893-5e06-ac20-c6047f125223', '522725c8-d5fd-44c9-941e-4abfd985054d', 2, 'production', 0.05634625270799336, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、2勝（40.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.515、過去3着以内率 +0.279、直近3走の着順比 +0.269。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('99f42e45-1825-59c8-8820-9e0b49eaef6d', '522725c8-d5fd-44c9-941e-4abfd985054d', 3, 'production', 0.01873548510383366, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.048、過去3着以内率 +0.230、前走からの日数 -0.192。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('651a4e35-85ec-58bf-b92e-e67a63ca7441', '522725c8-d5fd-44c9-941e-4abfd985054d', 4, 'production', 0.07903932112159502, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.298、前走距離 +0.069、直近3走の着順比 +0.069。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db856787-cdd7-5502-a2ce-2b39c8f5f1c4', '522725c8-d5fd-44c9-941e-4abfd985054d', 5, 'production', 0.12645917406958207, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.651、過去3着以内率 +0.239、前走からの日数 -0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e8962710-b01a-53d7-b890-9d179bf1e611', '522725c8-d5fd-44c9-941e-4abfd985054d', 6, 'production', 0.09833764555313457, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.557、過去3着以内率 +0.161、過去勝率 -0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('998e2d6b-8076-5843-ada3-fa93317aed15', '522725c8-d5fd-44c9-941e-4abfd985054d', 7, 'production', 0.07875693147805497, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.767、過去走数 -0.426、直近5走の着順比 +0.151。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ccb79686-58a0-5f36-82c3-247ee5742acc', '522725c8-d5fd-44c9-941e-4abfd985054d', 8, 'production', 0.055523748188692705, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.523、過去3着以内率 +0.342、直近5走の着順比 +0.137。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ec38cd51-5197-547c-a0e3-ac653937709d', '522725c8-d5fd-44c9-941e-4abfd985054d', 9, 'production', 0.03328492155894165, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.664、直近3走の着順比 +0.340、直近5走の着順比 +0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3e3076a-31b4-557c-953d-e2bcc6a0aab0', '522725c8-d5fd-44c9-941e-4abfd985054d', 10, 'production', 0.022597844496886118, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.322、直近5走の着順比 -0.146、過去走数 -0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e6a42634-3b6e-575e-a14b-b87372e1bac3', '522725c8-d5fd-44c9-941e-4abfd985054d', 11, 'production', 0.04091130608490683, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.534、過去3着以内率 +0.270、前走距離 -0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('142e72c1-3d45-5b91-95c3-360906f49470', '522725c8-d5fd-44c9-941e-4abfd985054d', 12, 'production', 0.03946003354757766, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.289、前走からの日数 -0.190、直近3走の着順比 +0.182。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1042a5fb-e605-5779-8567-a5c5a75b47c1', '522725c8-d5fd-44c9-941e-4abfd985054d', 13, 'production', 0.16987998201022209, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.680、過去3着以内率 +0.283、平均着順比 +0.270。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a442efd0-896d-57dc-9dfa-432d4e560b98', '522725c8-d5fd-44c9-941e-4abfd985054d', 14, 'production', 0.11057289369973032, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.495、過去3着以内率 +0.281、過去走数 -0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('839ac688-29df-52ac-b2b9-9d7c53183849', '522725c8-d5fd-44c9-941e-4abfd985054d', 15, 'production', 0.021312950002443088, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.717、過去走数 -0.251、過去3着以内率 +0.199。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e9a55c8f-3e8d-597e-a673-a6bcadb051d6', '223de42b-ec2a-42cc-b12d-467e8e67f164', 1, 'production', 0.05884537790125647, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 前走距離 +0.141、過去勝率 -0.082、直近3走の着順比 -0.069。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5835b245-bbbc-5dfb-bf5f-acecc2475480', '223de42b-ec2a-42cc-b12d-467e8e67f164', 2, 'production', 0.07312501801992284, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.484、前走からの日数 -0.469、過去走数 +0.298。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bd344543-a3a3-527f-9548-435315a935e2', '223de42b-ec2a-42cc-b12d-467e8e67f164', 3, 'production', 0.026299674546598293, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.636、直近5走の着順比 +0.115、過去3着以内率 -0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d7fd0539-19da-5f60-a553-4ad38b03c1a2', '223de42b-ec2a-42cc-b12d-467e8e67f164', 4, 'production', 0.09460286923193867, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.326、過去走数 +0.106、過去3着以内率 +0.101。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d21c10d2-8764-56d6-bfe2-cfdb7e8b884a', '223de42b-ec2a-42cc-b12d-467e8e67f164', 5, 'production', 0.08658480088095723, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.287、前走からの日数 -0.189、過去走数 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('22db297a-8ec7-558c-b84b-abcd35c6759f', '223de42b-ec2a-42cc-b12d-467e8e67f164', 6, 'production', 0.08683084768682174, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.151、過去走数 +0.129、直近3走の着順比 +0.089。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5b09630a-043c-5cd5-8b4c-c96e4e5d6301', '223de42b-ec2a-42cc-b12d-467e8e67f164', 7, 'production', 0.2145726823280202, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.564、過去3着以内率 +0.343、平均着順比 +0.221。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1cfa0272-8843-5629-ab76-1fce72d49163', '223de42b-ec2a-42cc-b12d-467e8e67f164', 8, 'production', 0.04195906944585385, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.310、平均着順比 -0.091、前走距離 +0.062。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7661f59a-fea8-5192-b326-174015566e93', '223de42b-ec2a-42cc-b12d-467e8e67f164', 9, 'production', 0.0104926555936953, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.834、過去3着以内率 -0.317、平均着順比 -0.148。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fcae26d1-1436-5982-806a-57265e3188c5', '223de42b-ec2a-42cc-b12d-467e8e67f164', 10, 'production', 0.13233944020460303, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.294、直近3走の着順比 +0.277、平均着順比 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e37c44e8-4d96-52e2-83d9-de71086d5407', '223de42b-ec2a-42cc-b12d-467e8e67f164', 11, 'production', 0.010105169425598085, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.876、過去走数 -0.682、直近5走の着順比 -0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0c8967d1-20f7-543f-bb7e-b674b67bd995', '223de42b-ec2a-42cc-b12d-467e8e67f164', 12, 'production', 0.013148383217043948, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.796、平均着順比 -0.365、過去3着以内率 -0.270。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ed6c57e6-6def-5815-9e8a-efb2c6dd3150', '223de42b-ec2a-42cc-b12d-467e8e67f164', 13, 'production', 0.012400780296489345, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.963、平均着順比 -0.375、直近5走の着順比 -0.196。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cec06fe1-81c1-58a4-ae9b-33264dd3a697', '223de42b-ec2a-42cc-b12d-467e8e67f164', 14, 'production', 0.015125596001847812, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.021、過去走数 -0.582、前走距離 +0.292。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ee46d2f-ad25-5f35-93da-d0782af7fd70', '223de42b-ec2a-42cc-b12d-467e8e67f164', 15, 'production', 0.06514454650974655, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.513、直近3走の着順比 +0.405、直近5走の着順比 +0.123。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0514a36f-81d2-5e11-bdf4-ebc13870ee3d', '223de42b-ec2a-42cc-b12d-467e8e67f164', 16, 'production', 0.05842308870960654, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.195、前走からの日数 -0.144、直近3走の着順比 -0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2a1c200e-e8e0-5ce6-80f2-f3d605c3f775', '5470e60e-58da-4435-9120-2df258cfc2c9', 1, 'production', 0.03176110797687583, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.265、過去3着以内率 -0.257、過去走数 +0.232。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b0ce6252-7bd2-5092-a9a6-373c2ca1d248', '5470e60e-58da-4435-9120-2df258cfc2c9', 2, 'production', 0.002677588301178366, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.580、平均着順比 -0.582、直近5走の着順比 -0.362。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ce3b2cdc-16ed-5b79-91b4-19b7b790733a', '5470e60e-58da-4435-9120-2df258cfc2c9', 3, 'production', 0.08564339377409229, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.720、過去3着以内率 -0.365、平均着順比 +0.132。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f941c64-9663-5dcf-a389-8383b9600b41', '5470e60e-58da-4435-9120-2df258cfc2c9', 4, 'production', 0.017012435384599695, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.503、過去走数 +0.248、過去3着以内率 -0.241。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1679b971-3aa3-538a-b354-1c8d5e7f6bfc', '5470e60e-58da-4435-9120-2df258cfc2c9', 5, 'production', 0.010642484273609705, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.148、過去走数 +0.356、平均着順比 -0.250。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('23f92129-a79b-51b5-8b49-04c7b880051f', '5470e60e-58da-4435-9120-2df258cfc2c9', 6, 'production', 0.020628027593974127, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.465、過去走数 +0.266、過去3着以内率 -0.234。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e17cf76a-2f74-5aa6-86c8-575d9743b7d3', '5470e60e-58da-4435-9120-2df258cfc2c9', 7, 'production', 0.2400546508232466, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.902、過去勝率 +0.205、過去3着以内率 +0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8e0d9b09-b541-5622-96b6-f0db1cd349d7', '5470e60e-58da-4435-9120-2df258cfc2c9', 8, 'production', 0.04995410568983986, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.296、過去走数 +0.160、直近5走の着順比 +0.072。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fcd18e84-efe6-5949-963c-2f3224aeae33', '5470e60e-58da-4435-9120-2df258cfc2c9', 9, 'production', 0.07645864435659336, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.395、過去3着以内率 -0.288、過去走数 +0.133。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e629f068-c039-5506-a8bc-804ff264532e', '5470e60e-58da-4435-9120-2df258cfc2c9', 10, 'production', 0.019921823773723916, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.574、過去走数 +0.241、過去3着以内率 -0.221。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c150e5f-0e6b-501c-a2f5-092689e251ff', '5470e60e-58da-4435-9120-2df258cfc2c9', 11, 'production', 0.009354105751269362, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.219、過去走数 +0.432、平均着順比 -0.355。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('44090baa-c290-5ebc-a518-97acbceafbb1', '5470e60e-58da-4435-9120-2df258cfc2c9', 12, 'production', 0.07494398128367488, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.595、過去3着以内率 -0.343、直近5走の着順比 +0.101。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('97d7e91b-c8fe-592d-be59-ae5e2af6409f', '5470e60e-58da-4435-9120-2df258cfc2c9', 13, 'production', 0.04315473901365434, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.295、過去走数 +0.150、前走距離 -0.073。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6b72fc18-53dd-5dee-bfd6-ed5fb5ad4593', '5470e60e-58da-4435-9120-2df258cfc2c9', 14, 'production', 0.1917100523317893, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.592、過去3着以内率 +0.393、過去勝率 +0.178。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('57717ef1-03c3-5225-8b9f-1fd6223664a0', '5470e60e-58da-4435-9120-2df258cfc2c9', 15, 'production', 0.06079195218851887, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.401、過去3着以内率 -0.337、直近5走の着順比 +0.091。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('14e3cbd9-5734-5cbf-be1d-36458b039c4e', '5470e60e-58da-4435-9120-2df258cfc2c9', 16, 'production', 0.06529090748335947, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.334、過去3着以内率 -0.277、過去走数 +0.136。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('52906753-f760-565f-8672-86998dc52ccf', 'a586470e-e37a-4855-8319-d85f22e78b34', 1, 'production', 0.13021151827454336, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.880、過去3着以内率 +0.370、過去勝率 +0.192。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('845195e7-7f7c-53a7-a0ed-f46434036350', 'a586470e-e37a-4855-8319-d85f22e78b34', 2, 'production', 0.12825336234984658, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.970、過去3着以内率 +0.366、過去勝率 +0.240。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('accf3de8-a33a-5f6a-bd89-9f3f01f0199c', 'a586470e-e37a-4855-8319-d85f22e78b34', 3, 'production', 0.02774337444364621, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.343、過去3着以内率 -0.322、直近5走の着順比 +0.085。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c25ffeea-9157-5a1f-8a04-e5779664f48b', 'a586470e-e37a-4855-8319-d85f22e78b34', 4, 'production', 0.11337873173214841, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.750、過去3着以内率 +0.325、過去勝率 +0.155。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a2e79d11-1bc0-53b0-8cf2-5df97b7528e5', 'a586470e-e37a-4855-8319-d85f22e78b34', 5, 'production', 0.003638045920022031, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.255、過去走数 +0.359、平均着順比 -0.323。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0c9bf8b9-ebe8-5a4d-b066-69d55bc21c12', 'a586470e-e37a-4855-8319-d85f22e78b34', 6, 'production', 0.005583283212455058, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.987、過去走数 +0.331、平均着順比 -0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('67f16725-4091-5ea9-b906-a950966e196b', 'a586470e-e37a-4855-8319-d85f22e78b34', 7, 'production', 0.01448259842829772, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.272、過去3着以内率 -0.261、過去走数 +0.213。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2e555828-3de8-589f-b5bc-96e0e05c8c30', 'a586470e-e37a-4855-8319-d85f22e78b34', 8, 'production', 0.11208019952410259, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.755、過去3着以内率 +0.367、平均着順比 +0.154。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('19a13358-b626-534d-9b72-e15515f7d3bd', 'a586470e-e37a-4855-8319-d85f22e78b34', 9, 'production', 0.08934001982670998, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.763、過去3着以内率 +0.317、過去勝率 +0.159。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6ad265cd-de8d-5449-a335-6b87f31548c1', 'a586470e-e37a-4855-8319-d85f22e78b34', 10, 'production', 0.006243801491933393, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.138、過去走数 +0.386、平均着順比 -0.240。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('054aacb2-4bf8-5811-a30b-66ec8125b208', 'a586470e-e37a-4855-8319-d85f22e78b34', 11, 'production', 0.12280401116630692, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.730、過去3着以内率 +0.359、平均着順比 +0.162。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('973c33aa-fe55-5191-83d8-8c7efe5d2870', 'a586470e-e37a-4855-8319-d85f22e78b34', 12, 'production', 0.014148114352465798, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.298、直近3走の着順比 -0.281、過去走数 +0.217。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7bac7be1-f104-5575-9534-39addc7c7a47', 'a586470e-e37a-4855-8319-d85f22e78b34', 13, 'production', 0.015699777721735367, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.269、直近3走の着順比 -0.235、過去走数 +0.214。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3511adc6-3dfa-5e9c-b85c-f5c7dbc73f13', 'a586470e-e37a-4855-8319-d85f22e78b34', 14, 'production', 0.01942175954545571, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.303、過去3着以内率 +0.284、平均着順比 -0.197。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a76c6439-831b-5a8d-85dc-43586cba2749', 'a586470e-e37a-4855-8319-d85f22e78b34', 15, 'production', 0.11172357546253534, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.933、過去3着以内率 +0.360、過去勝率 +0.248。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8fbd8a7f-2207-5565-ba60-e8f062217441', 'a586470e-e37a-4855-8319-d85f22e78b34', 16, 'production', 0.07894513783434086, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.574、過去3着以内率 +0.358、過去勝率 +0.160。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0d08f800-5533-5502-bb45-9490b063d435', 'a586470e-e37a-4855-8319-d85f22e78b34', 17, 'production', 0.006302688713454697, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.803、平均着順比 -0.275、過去走数 +0.229。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3f3639e9-540a-55f0-895f-8438e3de6752', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 1, 'production', 0.03539883837460458, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.320、直近3走の着順比 +0.233、過去走数 +0.081。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9f2c4c98-3f3e-52aa-bac4-ac5a69e7153c', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 2, 'production', 0.07719868869651046, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.216、直近3走の着順比 +0.208、過去走数 +0.152。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d99f5c8-82f7-56ac-be7b-f85dc929e3e0', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 3, 'production', 0.12164529919842874, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.618、過去3着以内率 +0.312、過去勝率 +0.206。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('24e7477e-5de5-5e02-a92f-829f1fa283b0', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 4, 'production', 0.026390986615645467, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.253、前走距離 -0.196、過去走数 +0.181。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c0bec8ef-5e27-501b-be3e-40ec4c23897a', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 5, 'production', 0.0372673537169935, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.276、直近3走の着順比 +0.213、過去走数 +0.136。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87ae5ad1-bf7d-59f5-b23a-448691e1e77e', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 6, 'production', 0.046527492719394305, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.335、過去3着以内率 -0.274、過去走数 +0.153。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f26d1365-7af3-5f60-9c5f-65fa8afcaf84', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 7, 'production', 0.01370503303899096, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.410、過去3着以内率 -0.283、過去走数 +0.222。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('32d4abbc-9f5c-5315-8912-01010a94be66', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 8, 'production', 0.20166145059792562, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.938、過去3着以内率 +0.358、過去勝率 +0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4cc541ae-202c-55e9-8450-19374f71b1e3', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 9, 'production', 0.14139117364569398, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.790、過去3着以内率 +0.330、過去勝率 +0.199。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8193a652-4247-53b4-b9d8-ae03b0d89dff', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 10, 'production', 0.00905063865608505, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.785、過去走数 +0.263、過去3着以内率 -0.243。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('afe4598a-0ef1-527f-9279-c060372e21ce', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 11, 'production', 0.052749517457363775, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.470、過去3着以内率 -0.357、平均着順比 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8d61ddb2-ba3d-5149-80b9-4d03cba23ee0', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 12, 'production', 0.07288624672053406, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.300、直近3走の着順比 +0.237、過去勝率 +0.141。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c6be43d8-7ef3-5c8c-a7b0-679ee6cceb89', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 13, 'production', 0.02158104651269863, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.305、過去走数 +0.255、過去3着以内率 -0.251。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c1136908-5e2f-51dd-8dc5-e0b12d084bd6', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 14, 'production', 0.07455163133801593, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.309、直近3走の着順比 +0.278、過去勝率 +0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('39500262-2efe-5670-a171-210f4361d0ca', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 15, 'production', 0.05723825325644909, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.720、過去3着以内率 -0.365、平均着順比 +0.132。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2f7f9669-038b-591d-9114-1e6a763ce8fd', '3ff0488b-bdaf-4976-96b0-4077e7e1c2c8', 16, 'production', 0.01075634945466583, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.488、過去3着以内率 -0.238、平均着順比 -0.218。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09b91aad-b67a-5fb9-aaa0-3d6e5e11b572', '02eac387-8e1f-437b-b683-fd119da2bed4', 1, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ebecab83-281a-5c7a-aa24-eaf54b943b2a', '02eac387-8e1f-437b-b683-fd119da2bed4', 2, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ccf24740-0b47-561f-b6fc-0993d6866b10', '02eac387-8e1f-437b-b683-fd119da2bed4', 3, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('285fbdf2-8538-578e-89c4-358f1f151154', '02eac387-8e1f-437b-b683-fd119da2bed4', 4, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f8347040-c1ad-5d6b-ba15-614b623c42e9', '02eac387-8e1f-437b-b683-fd119da2bed4', 5, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98e8776e-59d2-5a8f-a083-fbaa5dcbd3b9', '02eac387-8e1f-437b-b683-fd119da2bed4', 6, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7022da8b-d14f-576a-a2b9-03d7288589d4', '02eac387-8e1f-437b-b683-fd119da2bed4', 7, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e7d1ce72-5b15-5ee5-9df3-efbb56105164', '02eac387-8e1f-437b-b683-fd119da2bed4', 8, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eab07945-dd60-5574-8e7e-c7b86e640ee7', '02eac387-8e1f-437b-b683-fd119da2bed4', 9, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6a2210d5-492f-5496-8ed2-b8f296b38cb1', '02eac387-8e1f-437b-b683-fd119da2bed4', 10, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7879852e-e445-56af-933f-d1bd15fb09c7', '02eac387-8e1f-437b-b683-fd119da2bed4', 11, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('7403ba8c-9bd2-595b-9d11-59855ec80aaa', '02eac387-8e1f-437b-b683-fd119da2bed4', 12, 'production', 0.08333333333333333, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf5f089f-870f-5951-9691-57397420f9a6', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 1, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dee9f63b-b11a-5c60-9a24-23b8b1cd7d6e', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 2, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('68da62e7-18d6-5403-9442-78fa5032426f', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 3, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9f9174bf-004e-597f-a911-0febb68c7650', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 4, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cf1e117d-21fd-5a38-b127-74c035dc7f5c', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 5, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f1cdab4-9598-5e8f-90b7-b94e8896d0a7', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 6, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4792c8ef-f1e5-5441-a83a-5539a6409aab', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 7, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a0fede30-a06d-57a4-87a7-ca0fdb4e841e', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 8, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('15959f0f-0f58-5cdb-aac8-b5a00401c112', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 9, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c3a56c9d-822e-5950-ba25-d42523617568', '3c2ce651-59e3-429a-b45b-ab21dd6f3b52', 10, 'production', 0.1, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e502e80f-a584-55c9-a537-6d94b796c3e5', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 1, 'production', 0.11161611684973662, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.820、平均着順比 +0.144、直近5走の着順比 +0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('967c233d-9353-5a5f-92e4-d5ae402a248a', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 2, 'production', 0.009132206597888328, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.989、過去走数 -0.213、直近5走の着順比 -0.213。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bfc36556-7ac7-5eb4-9554-b1f12a4275db', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 3, 'production', 0.07728160043626159, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.424、平均着順比 +0.141、過去3着以内率 +0.112。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('aa318849-5696-5f0e-87e4-a83b54d86960', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 4, 'production', 0.1406970871538993, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.663、過去3着以内率 +0.323、平均着順比 +0.196。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05fb9922-97ac-5ecd-a013-560ce4e1860c', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 5, 'production', 0.13489182389676801, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.697、過去3着以内率 +0.323、平均着順比 +0.204。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('73ff8309-8bef-5aff-9a43-c0fb493a1af9', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 6, 'production', 0.12295802687918463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.595、過去3着以内率 +0.365、平均着順比 +0.254。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a87c831-768b-5e15-9713-a9c5654d2023', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 7, 'production', 0.12377239090565345, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.660、前走からの日数 -0.393、過去3着以内率 +0.389。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('096f4095-2d60-590a-a267-e05377b4d09b', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 8, 'production', 0.0037906024472704274, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.558、平均着順比 -0.419、過去走数 +0.398。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3b479a66-dd4c-584d-b24c-8f84d860da58', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 9, 'production', 0.00978168857710922, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは17件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.650、過去3着以内率 -0.316、直近3走の着順比 -0.202。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d000857-491b-59cf-9e17-09bceacafe07', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 10, 'production', 0.020568646831825903, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.308、平均着順比 -0.155、直近3走の着順比 -0.143。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63603bb3-0fe2-54c3-9bb4-0178e6310d10', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 11, 'production', 0.033875147190411584, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.281、直近3走の着順比 +0.217、過去走数 -0.117。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dfffa20b-713e-57c6-8239-bffb97903fec', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 12, 'production', 0.007903048346318463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.267、前走からの日数 -0.275、前走距離 +0.180。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('525554d4-8a08-56fa-92bf-c19c6f315420', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 13, 'production', 0.03372398257091703, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは11件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.107、過去走数 -0.103、過去3着以内率 -0.098。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4cf71c44-0ffe-5ff7-942e-5cd0ee75263c', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 14, 'production', 0.00293668400486929, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.233、過去走数 -0.633、直近5走の着順比 -0.314。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8d8da1b3-77d9-5ad8-914a-a717ace392b7', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 15, 'production', 0.008969721055759517, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.473、過去3着以内率 -0.372、過去走数 -0.334。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0878be4a-5b34-599f-a141-7773b7a7533b', '0c8b4cd2-e26c-4af5-ba3c-e0ff7ec10539', 16, 'production', 0.1581012262561266, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.736、過去3着以内率 +0.260、過去勝率 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bfee4cc0-0911-5d48-b4ca-1ba2e9088923', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 1, 'production', 0.06558515940565435, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.450、過去3着以内率 +0.239、過去走数 +0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6145dee2-c64e-57f7-ab51-f4f9d3bc4ca3', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 2, 'production', 0.18540356355746476, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、2勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.747、過去3着以内率 +0.215、平均着順比 +0.150。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('785dcf5c-4337-5e02-8b3a-42682b60afe7', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 3, 'production', 0.02161637270622572, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは11件、1勝（9.1%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.846、過去走数 -0.254、過去3着以内率 +0.227。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1668b386-e163-5804-89b0-e9e623dbe064', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 4, 'production', 0.020968909155232345, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.490、過去走数 -0.409、直近5走の着順比 -0.148。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9f5c3a63-f40d-5287-bbaf-767579de5092', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 5, 'production', 0.04263937506172019, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.478、過去3着以内率 +0.294、過去走数 -0.178。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3fc30310-b185-5012-ba5c-0a702657dbfa', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 6, 'production', 0.09959774954305381, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、1勝（12.5%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.295、平均着順比 +0.108、直近3走の着順比 +0.088。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cba97e2a-ccc3-5257-ab48-e2c22c3051f9', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 7, 'production', 0.1038704388578066, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.609、平均着順比 +0.126、過去3着以内率 -0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e157abb5-bf31-587f-9be6-69aa6d55147b', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 8, 'production', 0.15610713144852942, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、1勝（12.5%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.487、過去3着以内率 +0.337、平均着順比 +0.113。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('87740eee-2d8b-5d10-b4e3-91d7291c9505', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 9, 'production', 0.021729150003225093, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、1勝（12.5%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.969、平均着順比 +0.101、過去走数 -0.063。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2ede3f6e-3a50-5590-b74b-7a4884f0ef50', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 10, 'production', 0.014890033873292722, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.484、直近3走の着順比 -0.319、直近5走の着順比 -0.189。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('462b0e45-2103-5629-a7ac-ca5e7bf90e75', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 11, 'production', 0.039950911455592354, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.783、過去3着以内率 +0.181、過去勝率 +0.165。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3e8d54c1-5a02-572d-8410-5c9dcfdee79c', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 12, 'production', 0.06614124019222507, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは15件、2勝（13.3%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.307、過去走数 -0.225、直近3走の着順比 -0.183。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a79e7290-62c4-5f06-af9e-7ee20fb2cdf3', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 13, 'production', 0.13532430321492003, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.397、過去3着以内率 +0.312、平均着順比 +0.202。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2bef566d-f5e8-567a-bb0a-37b180504524', 'c3443f48-3d83-4f87-a47d-d75d408790bc', 14, 'production', 0.02617566152505728, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.993、過去勝率 +0.163、直近5走の着順比 -0.099。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25322c7e-df5d-5956-90e6-40895b8ec8dd', '5c6b79f9-9090-4626-8e62-76ed566f5641', 1, 'production', 0.0468626723401753, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.320、直近3走の着順比 +0.240、前走距離 +0.091。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('15d960a7-9a8a-553f-b351-704adb5d1453', '5c6b79f9-9090-4626-8e62-76ed566f5641', 2, 'production', 0.04907175035315761, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、1勝（12.5%）。
推定｜SHAP（生スコア） 前走からの日数 -0.440、過去3着以内率 +0.351、過去勝率 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c98a650c-dc81-52a4-b934-5517acd4870e', '5c6b79f9-9090-4626-8e62-76ed566f5641', 3, 'production', 0.17693615629274495, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.739、過去3着以内率 +0.311、平均着順比 +0.208。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bc69b9bb-9076-5d7b-8adb-d3c9cd9a1807', '5c6b79f9-9090-4626-8e62-76ed566f5641', 4, 'production', 0.052834030778421824, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.302、直近3走の着順比 -0.250、過去勝率 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('732196c9-58c6-5f53-b062-1b1dcc084cf9', '5c6b79f9-9090-4626-8e62-76ed566f5641', 5, 'production', 0.13487496501929946, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.477、過去3着以内率 +0.258、前走距離 +0.200。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ff6ac091-d856-52bd-a83b-53fa86dc9746', '5c6b79f9-9090-4626-8e62-76ed566f5641', 6, 'production', 0.024104506231802103, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.294、直近3走の着順比 -0.206、平均着順比 +0.056。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('69801c01-78c8-552a-bfed-eeaf81a81d5a', '5c6b79f9-9090-4626-8e62-76ed566f5641', 7, 'production', 0.10812074957036916, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.366、直近3走の着順比 +0.209、過去走数 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bee59274-1940-5dba-8774-d6af32729f3c', '5c6b79f9-9090-4626-8e62-76ed566f5641', 8, 'production', 0.14390869311528004, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.764、過去3着以内率 +0.220、平均着順比 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d91b3b39-0ddb-5a4a-84a8-f2a6647d5dd7', '5c6b79f9-9090-4626-8e62-76ed566f5641', 9, 'production', 0.020809246084959078, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.588、直近3走の着順比 -0.341、前走距離 +0.302。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05eb19a1-453e-5e88-bd6e-b9420205814d', '5c6b79f9-9090-4626-8e62-76ed566f5641', 10, 'production', 0.08336939230397623, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.363、過去3着以内率 +0.211、前走距離 +0.076。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c313f074-7a10-5e25-82e8-966c65c15cd0', '5c6b79f9-9090-4626-8e62-76ed566f5641', 11, 'production', 0.15721352832308194, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.745、過去3着以内率 +0.297、直近5走の着順比 +0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3fb27dd3-6e70-52c5-b234-4e4d6efc068d', '5c6b79f9-9090-4626-8e62-76ed566f5641', 12, 'production', 0.0018943095867323485, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.448、平均着順比 -0.557、過去3着以内率 -0.325。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eee21a6b-e69e-5d33-b0fe-ea3ee472abc5', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 1, 'production', 0.06255484244934623, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは13件、1勝（7.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.639、過去走数 -0.369、直近5走の着順比 +0.121。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4cad0130-0af4-5049-8f55-a469973e8526', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 2, 'production', 0.06185624035815108, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、3勝（42.9%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.259、過去3着以内率 +0.217、過去勝率 +0.096。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('aee14639-9fd6-5bd5-a34f-67c51db9ed1c', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 3, 'production', 0.0674326824543744, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.299、過去3着以内率 +0.241、前走距離 -0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f9f27b99-b6a3-5224-8308-7f87acfbf9fe', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 4, 'production', 0.06490606362155997, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.148、前走距離 -0.103、平均着順比 +0.095。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('96f43054-e5ec-5620-a786-0e2bd83ab799', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 5, 'production', 0.023041756322293386, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.517、直近3走の着順比 -0.151、前走距離 -0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('21b17f26-499b-566f-95a8-346ced3dda84', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 6, 'production', 0.06281296160449959, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.270、直近3走の着順比 +0.233、過去3着以内率 +0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b1fe30a3-634f-575c-b151-0fb934b32467', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 7, 'production', 0.0029537454139949163, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.176、過去走数 -0.639、平均着順比 -0.319。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b5812749-ed40-5774-a208-5797d29c82fd', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 8, 'production', 0.20709187551010708, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、2勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.781、過去3着以内率 +0.333、平均着順比 +0.199。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cc3a2e08-0d5d-5a81-920f-235d044ee26b', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 9, 'production', 0.025480668539605462, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、2勝（66.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.054、過去3着以内率 +0.272、前走距離 -0.157。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0e0d3de7-4db8-5fb8-979c-f8f4aa74c635', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 10, 'production', 0.03138513961778875, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、3勝（37.5%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.855、過去勝率 +0.208、過去3着以内率 +0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('642758a1-4ae7-5756-be8b-43ed5fd410ab', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 11, 'production', 0.09649223695533188, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.195、過去走数 +0.163、平均着順比 +0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('58458ab2-880f-5e03-ac02-181b3d569499', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 12, 'production', 0.047008675514409695, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.281、過去3着以内率 +0.112、前走距離 -0.077。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8a1f0941-90df-5adf-ad2a-a600f7148f3d', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 13, 'production', 0.02020807346929447, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 過去走数 -0.649、直近3走の着順比 -0.254、前走距離 -0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f3b5a6ea-f570-585c-95fa-415bc54a59a1', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 14, 'production', 0.15908048473672773, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.707、過去3着以内率 +0.375、平均着順比 +0.246。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c888e9a-ae08-5f0b-80a1-b7ecdff9aa65', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 15, 'production', 0.04443707637520007, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.329、前走距離 -0.116、過去勝率 +0.094。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ba533958-f93e-52c2-a98f-05730c586614', '0c3be815-ee68-4cc3-8a63-d9b06c655f9c', 16, 'production', 0.023257477057315207, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.867、過去3着以内率 +0.176、直近5走の着順比 -0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('133cbb6b-51e4-5596-861b-3c52681425bf', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 1, 'production', 0.07793816895776032, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.564、過去走数 -0.406、前走からの日数 -0.146。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9ccecca0-cd66-5fe7-9c84-7fa37752afc5', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 2, 'production', 0.08787008198624024, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.515、前走からの日数 -0.356、過去走数 -0.191。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3e03c4ac-d314-585d-a93f-dd209abbe712', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 3, 'production', 0.1069192430384546, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.245、直近3走の着順比 +0.103、直近5走の着順比 +0.077。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4f4582a4-bbfc-5c34-813d-048b6d549fb7', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 4, 'production', 0.12021567682420346, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.334、直近3走の着順比 -0.137、直近5走の着順比 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('03f78c62-0637-5150-9255-69baf6f89576', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 5, 'production', 0.03672082540356373, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.217、過去3着以内率 +0.314、過去勝率 +0.116。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('01dbbb5e-09c4-5fc8-9d53-f65e64dffc65', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 6, 'production', 0.08237306744341137, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.416、過去3着以内率 +0.247、直近5走の着順比 +0.134。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('73d12348-7f63-511d-9ff9-4c5280f8e3da', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 7, 'production', 0.052134547902297226, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 平均着順比 -0.170、直近3走の着順比 -0.119、過去勝率 -0.083。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f0891af9-4350-55f3-b675-3ffb75c5722d', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 8, 'production', 0.028828971384375075, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 過去走数 -0.672、直近3走の着順比 -0.328、過去3着以内率 +0.171。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5e687457-fa0a-546f-85b1-360f4bfbc694', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 9, 'production', 0.19309184002372384, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.718、過去勝率 -0.095、平均着順比 +0.084。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d5ac0864-f40a-5d0f-abdf-3fb7f5241454', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 10, 'production', 0.06854383720946235, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.403、過去3着以内率 +0.268、過去走数 -0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a5c06c4d-9c56-5887-8b69-5c90b7d34f39', 'b6666d6e-c9a7-4aa0-b894-785e10af741e', 11, 'production', 0.14536373982650755, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、3勝（50.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.245、過去走数 +0.150、直近5走の着順比 +0.135。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c42d662b-1589-5d53-84d4-c2aaf3c6fcf6', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 1, 'production', 0.01820840980820397, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、1勝（14.3%）。
推定｜SHAP（生スコア） 過去走数 -0.407、直近3走の着順比 -0.369、過去勝率 +0.131。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1607d679-5a3e-5b9f-b0aa-e2370cc33606', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 2, 'production', 0.04434352683769577, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.146、過去3着以内率 +0.140、過去走数 +0.133。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f59ff963-987a-513f-a8b3-efffcc369aa9', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 3, 'production', 0.011513215233868404, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、1勝（16.7%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.707、過去走数 -0.596、過去勝率 +0.220。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('75df8afb-e74d-515c-8a84-7906029185e3', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 4, 'production', 0.046268687016056076, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.249、過去走数 +0.122、前走距離 -0.071。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4dfe782d-4a59-5fb9-b133-1734628265fb', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 5, 'production', 0.11221261829881293, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、2勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.737、過去3着以内率 +0.312、平均着順比 +0.204。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('624d6c94-789f-5677-8718-e762c9fc5d90', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 6, 'production', 0.0063501184593270765, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは10件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.824、前走からの日数 -0.417、直近5走の着順比 -0.164。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c4599997-861e-5a51-9ade-9c13d813b43c', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 7, 'production', 0.07746431113034788, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.406、過去3着以内率 +0.317、平均着順比 +0.185。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e5865889-fa32-5d0d-a05d-41d87f013dc4', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 8, 'production', 0.03534344617314182, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.383、過去走数 -0.188、前走からの日数 -0.093。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('89524223-5732-5062-83ee-f54a5ec21ae3', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 9, 'production', 0.011108149271823927, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.649、過去走数 -0.440、過去勝率 +0.190。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('183f06a2-f0dd-507a-889a-d01dd864f0ff', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 10, 'production', 0.036896779710149714, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、3勝（33.3%）。
推定｜SHAP（生スコア） 過去走数 -0.302、直近3走の着順比 +0.270、過去3着以内率 +0.165。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('433969ac-c4df-5238-8c5f-902fdefb0a2f', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 11, 'production', 0.02621280728996415, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.358、過去3着以内率 +0.165、過去勝率 +0.132。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5b69d932-481e-5338-8060-9ff683bf065d', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 12, 'production', 0.03346209788287335, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.298、過去3着以内率 +0.279、直近5走の着順比 +0.144。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('db57e842-4f84-55e7-9376-2498f83b5b89', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 13, 'production', 0.0688945383146456, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.334、直近3走の着順比 +0.234、平均着順比 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('25c8bebb-2731-578d-861e-75a1a1798216', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 14, 'production', 0.1398599055283481, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.744、過去3着以内率 +0.421、平均着順比 +0.290。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('969d8935-8e48-5632-9849-81be275cbdad', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 15, 'production', 0.10586182204569786, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.546、過去3着以内率 +0.277、平均着順比 +0.211。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a04e36cd-737e-54b7-9404-dbb4da672ba3', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 16, 'production', 0.07119375202660609, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.488、過去3着以内率 +0.155、直近5走の着順比 +0.108。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9d0dcb78-f2d4-5e22-acfb-086fe4e6423b', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 17, 'production', 0.0505270280742463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 +0.175、前走距離 -0.126、直近3走の着順比 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ab7bcb4d-2c3b-5bed-a759-dd4eaa0ce631', '2a7daddd-c99d-4f6c-8616-c8637f72e9fd', 18, 'production', 0.10427878689819106, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.567、前走からの日数 -0.431、過去3着以内率 +0.403。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49b531ee-b7ed-59c3-ae1d-c126edd1deb6', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 1, 'production', 0.0975825174945012, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.608、過去3着以内率 +0.412、前走からの日数 -0.251。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('930e71f2-0367-5261-8a54-0be0d25b05d9', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 2, 'production', 0.04463077608621571, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.368、過去3着以内率 +0.328、過去走数 +0.142。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b9a83194-dd07-5c7c-8d1c-fcdce1370242', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 3, 'production', 0.04473311221940973, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.321、過去3着以内率 -0.164、直近5走の着順比 +0.107。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af3e45a0-b8e6-5968-b57b-b6fa76242f0a', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 4, 'production', 0.04550769188347966, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.407、過去3着以内率 +0.298、前走距離 +0.233。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('af85d7a5-e63c-5f94-ae1a-6f9148421b45', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 5, 'production', 0.07133044845860888, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.383、平均着順比 +0.179、過去3着以内率 +0.166。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('95b46b9e-968e-5188-9792-394409c6d67b', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 6, 'production', 0.017694911433751542, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.329、直近3走の着順比 +0.287、過去3着以内率 -0.268。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('59ea3d61-c4d0-5f0b-8c67-b7e6d34fcd29', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 7, 'production', 0.12271940177337118, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.893、過去勝率 +0.182、平均着順比 +0.139。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0fcf01e4-5165-5d28-8cd8-51baf3b76c0b', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 8, 'production', 0.058329318297350684, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.570、過去3着以内率 -0.261、直近5走の着順比 +0.118。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6bac4d04-d467-52dc-bf93-54e72f2bbd9e', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 9, 'production', 0.03454611760283277, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.448、直近3走の着順比 +0.369、直近5走の着順比 +0.125。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0d10c998-e03f-55a7-a0e9-24a1f82c704f', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 10, 'production', 0.04574874685034668, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.292、過去走数 -0.193、過去3着以内率 +0.145。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c6b50743-9271-5007-8aa1-46448cff546a', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 11, 'production', 0.17664026071801645, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.833、過去3着以内率 +0.335、平均着順比 +0.220。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('eb5bab9a-c641-56d6-a057-2e1cd68b4a45', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 12, 'production', 0.023259153606119853, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.286、過去3着以内率 -0.261、過去走数 -0.188。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e3b4a477-3b00-5ea1-ab94-53d63ea65c3e', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 13, 'production', 0.009498664130779648, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.837、前走距離 +0.251、直近5走の着順比 -0.207。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f43aaed-88ab-543a-8651-6289a5b60a64', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 14, 'production', 0.07862667843589535, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.314、直近3走の着順比 +0.213、過去走数 +0.142。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('142d2bc1-ff77-51c7-83f1-55a8796dde5a', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 15, 'production', 0.021614313278293606, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.514、過去3着以内率 +0.176、過去走数 +0.102。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('60611978-aec9-5240-a788-ea37a35a7e3d', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 16, 'production', 0.026314687958424673, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.272、過去走数 +0.069、直近3走の着順比 +0.059。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d704a43-a28c-5ae7-927f-f392c4970f40', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 17, 'production', 0.01059505820950468, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 平均着順比 -0.345、直近3走の着順比 -0.312、過去3着以内率 -0.214。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ccfe9a10-8139-52c3-bb6b-1c8f01320f6d', '9bd1d3c7-6b2e-496d-bbbb-c7a0ab2988e8', 18, 'production', 0.07062814156309757, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.417、過去3着以内率 +0.260、前走からの日数 -0.140。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d2e91c5d-9d69-5b48-8207-5a654f0bed82', '7807131c-e65e-41d9-bd7c-718ceb39369b', 1, 'production', 0.11805619594159797, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.276、過去3着以内率 -0.256、過去走数 +0.169。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fd7c574e-8c10-521b-b3d2-bb1da51506f1', '7807131c-e65e-41d9-bd7c-718ceb39369b', 2, 'production', 0.31444038822523074, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.787、過去3着以内率 +0.310、過去勝率 +0.174。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f65b4014-84e6-5598-ab0b-b68608e3ea8a', '7807131c-e65e-41d9-bd7c-718ceb39369b', 3, 'production', 0.23017738409272018, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.737、過去3着以内率 -0.324、平均着順比 +0.153。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1ddd06bb-c1e0-5282-b914-54d2103a32f4', '7807131c-e65e-41d9-bd7c-718ceb39369b', 4, 'production', 0.15139019582687818, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.252、過去走数 +0.155、過去勝率 +0.122。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1698a75c-7103-5995-bbc6-7b3719e2d0a1', '7807131c-e65e-41d9-bd7c-718ceb39369b', 5, 'production', 0.04718570128355673, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.330、直近3走の着順比 -0.253、過去走数 +0.198。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8f27db5b-f99d-553e-8e70-3b9094972718', '7807131c-e65e-41d9-bd7c-718ceb39369b', 6, 'production', 0.014581998440388955, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.079、平均着順比 -0.316、過去3着以内率 -0.241。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('78335318-3d9a-5c22-b52f-ce502b22cf95', '7807131c-e65e-41d9-bd7c-718ceb39369b', 7, 'production', 0.040073142724010316, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.522、過去走数 +0.314、過去3着以内率 -0.270。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('24dbad07-4872-5948-8256-8f9b3739ef80', '7807131c-e65e-41d9-bd7c-718ceb39369b', 8, 'production', 0.032460842585307334, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.517、過去3着以内率 -0.284、過去走数 +0.218。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a752c301-4ea1-5abc-a876-de0d57994a4c', '7807131c-e65e-41d9-bd7c-718ceb39369b', 9, 'production', 0.05163415088030945, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.307、過去3着以内率 -0.277、過去走数 +0.235。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c8b31917-c568-5776-bf8a-2cb2e3d1c2c3', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 1, 'production', 0.08100774823483478, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.460、過去3着以内率 -0.327、直近5走の着順比 +0.120。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1e3a4033-4828-5d21-95e6-16b8a565f938', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 2, 'production', 0.1676431750426506, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.407、直近3走の着順比 +0.337、過去勝率 +0.160。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1da381a0-7657-534a-b146-4e8ebdb6f8ce', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 3, 'production', 0.020928366796444463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.513、過去走数 +0.265、過去3着以内率 -0.262。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('34ad20fb-81df-55f4-bc89-e5b296b4d3e2', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 4, 'production', 0.042890271719511416, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.296、過去走数 +0.201、直近3走の着順比 -0.048。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a24eedbb-2f6a-55c3-b8bd-9d539cb45225', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 5, 'production', 0.0064469079174493595, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.214、平均着順比 -0.342、過去3着以内率 -0.238。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('17688292-7393-5bea-b58e-b92367a00693', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 6, 'production', 0.27379463723439385, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +1.004、過去3着以内率 +0.365、過去勝率 +0.241。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('92041182-96f3-5107-9d93-eb5d7a83034a', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 7, 'production', 0.04693716535884786, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.301、過去走数 +0.181、前走距離 -0.071。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('499bfacf-6538-5caf-b8f2-e4223fd05259', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 8, 'production', 0.01067404141873787, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.003、平均着順比 -0.322、直近5走の着順比 -0.233。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('01b40654-c167-571d-af6a-3984e5aa26d6', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 9, 'production', 0.003421517324569197, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -1.537、平均着順比 -0.578、直近5走の着順比 -0.398。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d9012d75-6235-5cb5-91cd-f4c2f3184317', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 10, 'production', 0.07295448867885006, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.319、過去3着以内率 -0.261、過去走数 +0.151。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ae3481c-5c4d-5560-8778-22b2e6e260f0', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 11, 'production', 0.031533469825783235, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.300、直近3走の着順比 -0.272、過去走数 +0.199。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ff761ee-f687-59ec-b1fa-039eb2bcf8c4', 'a17a26ba-e160-4fe9-9ab3-ed5d99bccf8a', 12, 'production', 0.24176821044792715, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.784、過去3着以内率 +0.321、過去勝率 +0.171。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc06d44c-7bdc-5385-b726-8e3e4eb32a77', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 1, 'production', 0.264565906448897, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.439、過去3着以内率 +0.375、過去勝率 +0.154。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5b69ec62-a1cb-51c9-8dc6-a35022231f66', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 2, 'production', 0.030939438789636477, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.508、過去走数 +0.274、過去3着以内率 -0.274。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4335b0d7-38d4-5b02-ac44-145a73bc4dc1', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 3, 'production', 0.012738194447557073, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.265、平均着順比 -0.318、過去3着以内率 -0.230。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fd393a2a-fa1e-552f-bde0-4f2d7a79f383', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 4, 'production', 0.02379728325822848, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.795、過去3着以内率 -0.250、平均着順比 -0.213。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d7df356-337a-5a7a-b320-cd4e1be2ca7a', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 5, 'production', 0.11900998067783822, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.387、過去3着以内率 -0.329、過去走数 +0.112。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('68350322-a985-5cb1-a73c-ab234900ccc4', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 6, 'production', 0.21716019900623157, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.299、直近3走の着順比 +0.262、過去勝率 +0.138。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d05e38d5-0ac8-5480-8975-767aa5c69262', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 7, 'production', 0.019325778842970417, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.987、過去走数 +0.337、平均着順比 -0.238。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c20ad825-a671-50bf-95b9-00859227bddb', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 8, 'production', 0.020634714057041172, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.887、平均着順比 -0.284、過去3着以内率 -0.226。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f6fc6b7f-2bea-5282-8e0a-8306f2edddda', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 9, 'production', 0.21802860550786696, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.315、直近3走の着順比 +0.254、過去勝率 +0.138。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9447a223-055c-5929-8300-eb8999245621', 'e260ac4f-77c2-43e9-9083-4181dc1559b3', 10, 'production', 0.0737998989637327, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.350、過去走数 +0.160、直近5走の着順比 +0.079。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6621d9e4-c5e8-55d0-81d0-874d9e7b2023', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 1, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('85e360b5-68cc-5c02-98c7-76a9a286996e', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 2, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('18d71cdb-96cd-55d7-9a4b-91c8247e122d', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 3, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e5b5c788-d2b7-5b1b-8b99-b3f25577c5d4', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 4, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('09c3a0fa-a3d6-5811-ad7e-af69c7953c5f', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 5, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bae4defb-c1b9-5606-8e3c-58d006ba25be', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 6, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1443b6fb-f342-5662-8b04-58b54a046760', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 7, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c28ce17a-5c38-5959-bf4d-33e73c6885ea', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 8, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('65dc79c4-c03e-5a2a-83a7-1e59dc170576', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 9, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9186eac6-be1e-566f-91ae-f44c33d8a21e', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 10, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c00631a-74ff-52f2-bb88-c229dc567ba8', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 11, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e84ea6cb-98bb-5cc3-a1a5-7cfab680dd84', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 12, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('f2dcfa36-3752-593c-99a4-6d634ca5e0b8', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 13, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d42bceea-3a2f-5cd6-aaae-6dfe2925e52b', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 14, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('485feb40-9221-595d-9337-df6015ce0b7d', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 15, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ea264129-fd6d-54fa-818f-a7f5728c4452', 'c902f949-526f-488f-89d1-a2c6595c7fb4', 16, 'production', 0.0625, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fa014ab3-75d0-591d-8a9f-6c3a38ac4619', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 1, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8669f381-794b-5ac9-8345-3e5f5e269973', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 2, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3c4a84bd-2650-5de8-8f03-4a7a190db242', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 3, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f895958-d340-58b9-ace2-989ecd58d7a1', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 4, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5994e8e0-28cf-59d7-bdcf-c2c8e5671aca', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 5, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('06c3fc93-88b6-5154-b78d-396f13302dd6', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 6, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0a0c944b-94ef-5a04-b7fc-5ba5b69dbcb7', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 7, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fb8030a9-e28c-5542-9c07-eb70f34eb128', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 8, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2169c2ce-fb81-5c21-8aa4-4b1e6c697f5f', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 9, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('182d86ac-0abf-50e9-90cd-2fec300a6887', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 10, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ce025f1-9cff-5642-bdf4-f8c2f86cd22b', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 11, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c5e5b46c-b65c-5480-a34f-76797734b196', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 12, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4301d0c8-cd1f-5f18-8d60-cfe65b933d6c', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 13, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d346dd3f-b11c-542b-9d2b-4fca41b909a4', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 14, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('63bc65ad-0420-5160-a435-104132725cf8', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 15, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4793f7e4-c97e-5c7d-8758-019c513127f7', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 16, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d130a59c-c199-5b5a-b09a-d06d907bf414', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 17, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('38cd00de-084b-589a-a4bf-0ea6abdb2146', 'cdab5098-7ba1-4a86-8119-5d481ea29c11', 18, 'production', 0.05555555555555555, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.195、直近5走の着順比 +0.113、過去3着以内率 -0.111。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ea2a57e-d622-5f7f-bea0-a653960c714e', '1b81be36-9867-40ab-a02d-2199905b681c', 1, 'production', 0.04447489660342298, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.509、直近5走の着順比 +0.128、過去走数 +0.074。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('92ab7334-f7c7-577a-a439-b2eea8e86ff8', '1b81be36-9867-40ab-a02d-2199905b681c', 2, 'production', 0.12949934819303327, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.533、前走からの日数 -0.412、平均着順比 +0.210。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3a0be991-9e2f-57fb-aef9-63126a025c34', '1b81be36-9867-40ab-a02d-2199905b681c', 3, 'production', 0.0308086355008523, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.598、過去走数 -0.177、過去3着以内率 +0.109。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5e0324f6-dadd-57f4-8907-542e10691373', '1b81be36-9867-40ab-a02d-2199905b681c', 4, 'production', 0.03906700202387957, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.470、過去3着以内率 +0.087、過去勝率 -0.037。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1454465d-d178-5501-8adf-57652dcac1e4', '1b81be36-9867-40ab-a02d-2199905b681c', 5, 'production', 0.008437459890287428, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.086、平均着順比 -0.354、過去3着以内率 -0.243。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a3acc550-0047-518e-a46f-8b0eb1dc0ba1', '1b81be36-9867-40ab-a02d-2199905b681c', 6, 'production', 0.037942085748763475, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは11件、1勝（9.1%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.514、過去走数 -0.193、過去3着以内率 +0.172。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9355499a-2e4a-542c-98e7-e709d1e495bf', '1b81be36-9867-40ab-a02d-2199905b681c', 7, 'production', 0.0363903463383297, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.372、過去走数 -0.104、直近5走の着順比 +0.079。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('45a8c8fa-aa57-54f6-a90f-62fbed26ad0f', '1b81be36-9867-40ab-a02d-2199905b681c', 8, 'production', 0.11536823777300537, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.421、過去勝率 -0.131、平均着順比 +0.106。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d724d4b4-a468-5375-b13d-2da5a8313d9a', '1b81be36-9867-40ab-a02d-2199905b681c', 9, 'production', 0.029398168114682422, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.867、過去3着以内率 +0.164、過去走数 -0.092。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82d6ae73-9a0f-5341-9714-77897984467b', '1b81be36-9867-40ab-a02d-2199905b681c', 10, 'production', 0.0845336333155905, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.331、過去3着以内率 -0.091、前走距離 +0.076。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9c361f53-2fa6-57f8-9eec-11a35895aa5f', '1b81be36-9867-40ab-a02d-2199905b681c', 11, 'production', 0.0878642287225798, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.235、過去走数 +0.170、過去3着以内率 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6442ac1d-4d33-54d8-8454-6ea464c409fe', '1b81be36-9867-40ab-a02d-2199905b681c', 12, 'production', 0.02292296782298995, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.400、平均着順比 -0.362、直近3走の着順比 -0.245。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('58b1f251-91e7-5b7f-a122-4f1c4148978f', '1b81be36-9867-40ab-a02d-2199905b681c', 13, 'production', 0.25269927581554164, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.718、過去3着以内率 +0.291、平均着順比 +0.211。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2bf719b7-1843-5bc0-bc01-4f0af72e9abd', '1b81be36-9867-40ab-a02d-2199905b681c', 14, 'production', 0.005412942434182174, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは16件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.007、過去走数 -0.703、直近5走の着順比 -0.285。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3ddc3d9c-0b7a-54a2-9248-0636a18ae77b', '1b81be36-9867-40ab-a02d-2199905b681c', 15, 'production', 0.020109448235541356, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.448、平均着順比 -0.183、直近3走の着順比 -0.177。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('82bcb6d2-4615-5c41-986c-8b01ee31ba57', '1b81be36-9867-40ab-a02d-2199905b681c', 16, 'production', 0.05507132346731812, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.277、直近5走の着順比 +0.071、前走距離 +0.064。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae65fdad-c10f-55f5-9be5-6055b796309c', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 1, 'production', 0.08507469252581185, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.541、過去3着以内率 +0.219、平均着順比 +0.173。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6d4586ed-eeb3-5cf0-aa59-06c2815d1106', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 2, 'production', 0.02408310506844255, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 過去3着以内率 -0.279、直近3走の着順比 +0.143、平均着順比 -0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d6f30659-1c15-527b-9f99-a4797bcf0fa4', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 3, 'production', 0.02078443257379829, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 -0.358、直近3走の着順比 -0.187、過去走数 +0.179。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cb0a3e90-95f4-53b3-8015-9490d3b0681a', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 4, 'production', 0.027267072940063062, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去勝率 -0.130、過去3着以内率 +0.041、直近5走の着順比 +0.030。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d1b8dc6f-f85c-57ae-9520-008ae348220a', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 5, 'production', 0.08715173738440278, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.613、前走からの日数 -0.525、過去3着以内率 +0.456。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('60901f8a-5afc-5f34-b0b3-59066f2f7591', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 6, 'production', 0.06887448357020315, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.521、平均着順比 +0.200、直近5走の着順比 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e7fa8c60-1f37-5cb2-99be-9dbedb9e9326', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 7, 'production', 0.09698367631703145, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.518、過去3着以内率 +0.314、平均着順比 +0.206。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5c9d0d0d-099a-5f5e-8159-fa2aa1df8d96', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 8, 'production', 0.014387139660806875, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.807、直近5走の着順比 +0.126、過去3着以内率 -0.077。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d4ee4324-5ef6-58c9-ba34-e9a8efe57c16', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 9, 'production', 0.049288523708003275, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは6件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.557、直近5走の着順比 +0.096、前走距離 -0.033。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('334b49d3-e915-53bf-89a5-be6e8c4aa8c0', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 10, 'production', 0.060430742168056065, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.289、過去走数 +0.131、直近5走の着順比 +0.130。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('05caf0a3-daaf-509d-ba39-0f3d422d0d86', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 11, 'production', 0.02645046814474007, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.332、直近3走の着順比 +0.190、過去3着以内率 +0.086。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('acec97f0-064c-5c15-9c7d-88196e91a444', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 12, 'production', 0.10544171006251005, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.671、過去3着以内率 +0.144、過去勝率 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fe02a9e1-7f96-5162-9820-cc69a74211d5', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 13, 'production', 0.012260295062151977, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.661、過去走数 -0.220、過去3着以内率 +0.074。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e9120184-09c1-55ac-bb16-e99360dca70a', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 14, 'production', 0.03825375112542325, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.235、過去走数 -0.224、過去3着以内率 +0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('65cda817-9cac-511b-80f6-78edc8309e96', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 15, 'production', 0.05090751517150425, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走からの日数 -0.705、直近3走の着順比 +0.619、過去3着以内率 +0.385。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('301172b5-0712-5140-bb6d-4b924d663fb0', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 16, 'production', 0.00623387959100328, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.917、平均着順比 -0.439、直近5走の着順比 -0.220。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d9be29d-ef3e-592f-bb4b-7438cc88c1c3', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 17, 'production', 0.1663132767236039, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.817、過去3着以内率 +0.317、過去勝率 +0.206。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('18c6f403-466d-5145-b714-24ab05d2e08d', '7ecbc617-e04c-4eed-b366-9e7a1972e306', 18, 'production', 0.059813498202443936, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.547、過去3着以内率 -0.216、平均着順比 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('c31f5731-8255-5291-a99f-25bf2cd46e0c', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 1, 'production', 0.14703203251393146, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.883、直近5走の着順比 +0.153、平均着順比 +0.119。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('29892ef0-9daa-532e-8415-c09d16285a92', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 2, 'production', 0.025565203717032248, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -1.184、過去3着以内率 +0.274、前走距離 -0.129。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('751e6010-1cc3-5f33-8421-991ec6cc907d', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 3, 'production', 0.2809437161493957, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.773、過去3着以内率 +0.404、平均着順比 +0.227。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('134cf2e6-08dc-5b5b-abf8-d9f8223813b3', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 4, 'production', 0.07328779009565743, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.154、直近5走の着順比 +0.098、前走距離 -0.079。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('9ae27f38-7a4a-539b-8f55-26c189a963b9', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 5, 'production', 0.16712722448736517, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.486、過去3着以内率 +0.290、平均着順比 +0.210。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0e9b5f7e-60df-56c2-ba10-6fd25b654b53', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 6, 'production', 0.1331971366721573, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.350、直近3走の着順比 +0.308、前走からの日数 +0.100。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4376c0e6-1ceb-598c-8670-e40fb46d2706', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 7, 'production', 0.09229403958707347, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、2勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.296、前走からの日数 +0.144、過去3着以内率 +0.124。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d0088b01-498d-55d3-aa92-cc11319f70c5', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 8, 'production', 0.006847939838020275, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.909、過去走数 -0.720、直近5走の着順比 -0.310。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('820b6674-6f47-5dc4-9435-291e23b3b7f5', 'a5ff1eb7-64a4-41fd-a4dd-599bd4488ea7', 9, 'production', 0.07370491693936698, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.199、直近3走の着順比 -0.176、直近5走の着順比 +0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0eaab264-9280-520d-a2c8-d1ac14300f92', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 1, 'production', 0.1542271692416779, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.659、過去3着以内率 +0.337、平均着順比 +0.189。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8c3862f6-b2c6-5cac-b766-ebf9a49255ee', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 2, 'production', 0.06972900781584018, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.502、過去勝率 -0.211、平均着順比 +0.148。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('d06d5e2c-c031-553a-8dfc-4c0d10ba52f8', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 3, 'production', 0.1261110104258857, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.792、過去3着以内率 +0.313、過去走数 -0.247。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('04cd0f72-fb93-5fd1-86bd-26c0522e0160', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 4, 'production', 0.1032809551174432, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.480、過去3着以内率 +0.283、平均着順比 +0.141。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f66bcca-3b10-5768-b0ec-b3fb9faf885a', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 5, 'production', 0.06323233367206306, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.247、過去3着以内率 +0.180、過去勝率 -0.122。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('1d42670e-8fd8-59fd-a2e7-931c11e87357', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 6, 'production', 0.1632975444986478, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.748、過去3着以内率 +0.313、直近5走の着順比 +0.223。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('88495710-a428-57d7-8b66-8bde7395d305', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 7, 'production', 0.15506323160291124, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.716、過去3着以内率 +0.335、平均着順比 +0.212。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4ddea703-407d-5b85-bc80-0e1a9ce80b5e', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 8, 'production', 0.04351903749352039, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.242、過去勝率 -0.143、平均着順比 -0.098。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4e63ded6-a4e0-5c22-926d-b2f52a101b2b', '3257d750-6c70-4152-9b67-8b0dcb874eb1', 9, 'production', 0.12153971013201052, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.746、過去3着以内率 +0.334、過去勝率 -0.180。
リスク｜過去走が3件未満、類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('61cdde92-0248-56ed-a3eb-768381667ac8', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 1, 'production', 0.11100207568365704, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.237、直近3走の着順比 +0.234、過去走数 -0.121。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('49753d0c-d757-5f9d-a03d-206c72b1d5e7', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 2, 'production', 0.05136029384991569, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.295、過去走数 -0.108、過去3着以内率 +0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('292cbb8b-126a-5e11-bb81-487c584f230e', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 3, 'production', 0.015768457993853607, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.854、直近3走の着順比 -0.335、直近5走の着順比 -0.228。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fceea0cd-f7e9-50cd-9ed5-47de6c836f03', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 4, 'production', 0.13136192375604305, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.291、直近3走の着順比 +0.164、過去走数 -0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a2fd2333-771a-52aa-88c7-3b20c8b8349f', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 5, 'production', 0.04850338570431289, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは11件、2勝（18.2%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.456、過去走数 -0.207、過去3着以内率 +0.145。
リスク｜過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ae527df2-3add-5599-a861-f04bb0fef5af', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 6, 'production', 0.22293044449444252, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.593、過去3着以内率 +0.203、平均着順比 +0.153。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('bf01685b-9919-57b8-adfc-46ec52112f1c', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 7, 'production', 0.06782822911455297, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 -0.357、直近5走の着順比 +0.116、過去勝率 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b61fca67-3fa0-523d-b07d-225e601dca97', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 8, 'production', 0.15287809226588173, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.358、過去3着以内率 +0.121、直近5走の着順比 +0.077。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('fbce2309-2946-56f5-9090-25f76eb1ab43', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 9, 'production', 0.11900729729708928, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、2勝（100.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.271、過去勝率 -0.118、直近3走の着順比 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a025de89-33d7-5333-b6fe-457c2868aaf4', 'f16cb36d-1ebc-4aed-9574-031c7be696d7', 10, 'production', 0.07935979984025111, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.233、過去3着以内率 +0.178、直近5走の着順比 +0.091。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('a9cad98d-bbc2-5467-9cdb-22a0e457a8ae', '72b58977-5edd-4505-a759-a4f27e926aa6', 1, 'production', 0.055943681236420954, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.796、過去3着以内率 +0.289、過去走数 -0.167。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('818460ad-4904-5f8a-b874-ec018018b75e', '72b58977-5edd-4505-a759-a4f27e926aa6', 2, 'production', 0.05459918753194567, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.312、過去3着以内率 +0.295、平均着順比 +0.168。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0e9c1817-f4d2-59b2-8392-a492b6e666bb', '72b58977-5edd-4505-a759-a4f27e926aa6', 3, 'production', 0.02578098372171141, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.321、直近3走の着順比 -0.154、平均着順比 +0.088。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2c74cf9e-849b-58b3-a9df-7a39aeaeaac6', '72b58977-5edd-4505-a759-a4f27e926aa6', 4, 'production', 0.0612893002729828, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.704、過去3着以内率 +0.324、平均着順比 +0.214。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6a17cca4-6176-5583-bcd9-da5c4c930e30', '72b58977-5edd-4505-a759-a4f27e926aa6', 5, 'production', 0.03048898656726017, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去3着以内率 +0.277、平均着順比 +0.154、直近5走の着順比 +0.104。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4d614c47-0aa1-5c75-9820-f2d97d41c0fb', '72b58977-5edd-4505-a759-a4f27e926aa6', 6, 'production', 0.05452428014491129, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.706、前走距離 +0.213、過去3着以内率 +0.149。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8787b964-cddc-5895-9f10-1523db6c94c2', '72b58977-5edd-4505-a759-a4f27e926aa6', 7, 'production', 0.07760126695034662, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.814、過去3着以内率 +0.306、平均着順比 +0.182。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ad7d7d67-b185-520c-aa8f-6f31d3009d1a', '72b58977-5edd-4505-a759-a4f27e926aa6', 8, 'production', 0.03572841591985008, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.481、前走距離 +0.092、直近5走の着順比 +0.081。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('126516ef-26db-54fc-b467-e2a7a30a2ac2', '72b58977-5edd-4505-a759-a4f27e926aa6', 9, 'production', 0.05078892881503159, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.544、過去3着以内率 +0.250、平均着順比 +0.172。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('621cb9f6-d477-5f10-a971-60a24c2a4991', '72b58977-5edd-4505-a759-a4f27e926aa6', 10, 'production', 0.022174502025457364, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.268、過去走数 -0.181、直近5走の着順比 +0.058。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('e7334125-28bd-55a9-8434-fa8949999727', '72b58977-5edd-4505-a759-a4f27e926aa6', 11, 'production', 0.0970525305054616, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、1勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.628、過去3着以内率 +0.451、前走距離 +0.314。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('6f502853-959f-5647-9842-89de4ec455b5', '72b58977-5edd-4505-a759-a4f27e926aa6', 12, 'production', 0.0826443099706238, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.827、過去3着以内率 +0.326、平均着順比 +0.158。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('3cbaf3f7-d53d-5cf4-98ec-28def9c3c25a', '72b58977-5edd-4505-a759-a4f27e926aa6', 13, 'production', 0.0811969796908469, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.768、過去3着以内率 +0.290、平均着順比 +0.234。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('815466bf-38de-506e-a769-8b1d8ee66b78', '72b58977-5edd-4505-a759-a4f27e926aa6', 14, 'production', 0.0205953089888675, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、1勝（50.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.352、過去3着以内率 +0.270、過去勝率 +0.114。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b7946fc2-8172-5d84-883d-581729d41b4a', '72b58977-5edd-4505-a759-a4f27e926aa6', 15, 'production', 0.09393274075560953, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 直近3走の着順比 +0.647、過去3着以内率 +0.473、平均着順比 +0.252。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('cb964674-b248-506a-8356-ecf0762dab93', '72b58977-5edd-4505-a759-a4f27e926aa6', 16, 'production', 0.06073149304004728, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは4件、1勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.733、過去3着以内率 +0.294、前走距離 +0.178。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b648ecfb-1b06-5344-a83e-38e56062e5a4', '72b58977-5edd-4505-a759-a4f27e926aa6', 17, 'production', 0.03908761806022657, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.321、過去3着以内率 +0.222、前走距離 +0.127。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ede27fbe-c518-5a3d-8bf7-5d305c32bbc7', '72b58977-5edd-4505-a759-a4f27e926aa6', 18, 'production', 0.055839485802398656, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.713、過去3着以内率 +0.322、平均着順比 +0.165。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('ab281cc5-8c8b-5a56-a91d-8ad86f71ec09', '2e31b74a-ef1a-4c89-b691-48513425b572', 1, 'production', 0.050863249900503296, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、0勝（0.0%）。
推定｜SHAP（生スコア） 前走距離 +0.155、直近3走の着順比 +0.146、過去走数 -0.120。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('440653f3-c8e6-5ad0-b681-9a328b4148f5', '2e31b74a-ef1a-4c89-b691-48513425b572', 2, 'production', 0.0547972707302682, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.420、前走距離 +0.259、過去3着以内率 +0.223。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('8ea1d12e-32ad-5813-88ac-d848f11ff294', '2e31b74a-ef1a-4c89-b691-48513425b572', 3, 'production', 0.04289445206256707, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、2勝（100.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.384、前走からの日数 -0.285、過去勝率 +0.219。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dc9a39ce-39b6-5307-a6b0-29f52b0e2dcb', '2e31b74a-ef1a-4c89-b691-48513425b572', 4, 'production', 0.08337778448528319, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.505、平均着順比 +0.145、過去勝率 -0.055。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2d67ba9c-c2cc-5bcc-8df9-d572af9aa985', '2e31b74a-ef1a-4c89-b691-48513425b572', 5, 'production', 0.055511371584495886, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは7件、2勝（28.6%）。
推定｜SHAP（生スコア） 過去走数 -0.386、過去3着以内率 +0.312、平均着順比 +0.138。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b7de81ac-755c-5e42-a2ca-8c1c6064bed5', '2e31b74a-ef1a-4c89-b691-48513425b572', 6, 'production', 0.10303459399998022, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、3勝（60.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.343、過去3着以内率 +0.224、過去走数 +0.099。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('b4748556-8610-5c43-b955-3d04d3013b80', '2e31b74a-ef1a-4c89-b691-48513425b572', 7, 'production', 0.10818795483157492, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.705、前走からの日数 -0.307、過去3着以内率 +0.262。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('dcecf931-ecef-58ca-9fbf-9806f5cef56a', '2e31b74a-ef1a-4c89-b691-48513425b572', 8, 'production', 0.022828180767723916, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは5件、1勝（20.0%）。
推定｜SHAP（生スコア） 過去走数 -0.605、直近3走の着順比 -0.169、過去3着以内率 +0.111。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4186fd82-fb95-58d0-a7b6-d12dcf56b05e', '2e31b74a-ef1a-4c89-b691-48513425b572', 9, 'production', 0.10601352848199525, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは2件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.222、直近3走の着順比 +0.201、平均着順比 +0.155。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2e7ef657-7501-59dc-b3af-64904b5fbd7f', '2e31b74a-ef1a-4c89-b691-48513425b572', 10, 'production', 0.03194184186475982, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは8件、2勝（25.0%）。
推定｜SHAP（生スコア） 直近3走の着順比 -0.656、過去勝率 +0.165、平均着順比 +0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('2b30d475-7ccd-5f31-a996-e8b85cf446fd', '2e31b74a-ef1a-4c89-b691-48513425b572', 11, 'production', 0.06960462316320647, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去3着以内率 +0.186、平均着順比 +0.111、直近3走の着順比 +0.082。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('4c687b9f-284f-597b-a590-644c458471e1', '2e31b74a-ef1a-4c89-b691-48513425b572', 12, 'production', 0.10992539795021511, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは3件、1勝（33.3%）。
推定｜SHAP（生スコア） 直近3走の着順比 +0.379、過去3着以内率 +0.276、平均着順比 +0.164。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('16f254f0-e472-5077-8157-0c685618da24', '2e31b74a-ef1a-4c89-b691-48513425b572', 13, 'production', 0.03868196015619658, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 過去走数 -0.297、過去3着以内率 +0.113、過去勝率 +0.045。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('98d88d2b-e5ba-585d-9741-3085b052e234', '2e31b74a-ef1a-4c89-b691-48513425b572', 14, 'production', 0.048657023179318463, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは0件。
推定｜SHAP（生スコア） 過去走数 -0.301、過去3着以内率 +0.241、前走距離 +0.156。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('0af032dc-00b4-5de8-ac61-dde0b68a3331', '2e31b74a-ef1a-4c89-b691-48513425b572', 15, 'production', 0.03404295908181414, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは1件、0勝（0.0%）。
推定｜SHAP（生スコア） 過去走数 -0.626、過去3着以内率 +0.188、平均着順比 +0.059。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
insert into public.ai_predictions (id, race_id, horse_number, prediction_mode, win_probability, odds_at_prediction, expected_return, recommendation, reason, model_version, created_at) values ('5b6a85e7-ed09-5aca-9c7a-f934e22440f0', '2e31b74a-ef1a-4c89-b691-48513425b572', 16, 'production', 0.039637807760097434, null, null, null, '実測｜直近30走以内の同場・同馬場種別・距離±200mは9件、1勝（11.1%）。
推定｜SHAP（生スコア） 過去走数 -0.540、直近3走の着順比 +0.196、過去3着以内率 +0.126。
リスク｜類似条件の観測が10件未満、過去成績の訂正前版は未確認。
注記｜アプリ表示用に後から生成した予測。成績履歴はこのレースより前の出走のみで計算（当日の結果は未反映）。', 'lightgbm-history-sha256:6567407f21de549e6d7f4cc38ad4bdf8e3803323702056b8ad70f8b033f38736', '2026-11-25T17:22:13.595612+00:00') on conflict (id) do nothing;
commit;
