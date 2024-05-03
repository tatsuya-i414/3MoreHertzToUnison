[title name="novel-escape"]
[stop_keyconfig]

; 標準ライブラリ群
@call storage="Utility/tyrano.ks"

; フラグ初期化
[call storage="Utility/flag.ks"]
; マクロ読み込み
[call storage="Utility/macro.ks"]

; テーマ一括変換プラグインの呼び出し
[plugin name="theme_kopanda_bth_06_blue"]
; ローディング画面表示プラグインの呼び出し
[plugin name="loading"]
; ローディング画面設定の呼び出し
[call storage="Plugin/loading.ks"]

; メッセージウインドウとキャラクター情報の読み込み
[call storage="Utility/settings.ks" cond="sf.isLoadSetting == 'false' "]
; カスタム情報の読み込み
[call storage="Utility/customsettings.ks"]

[layopt layer="message" visible="false"]

; 最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[jump storage="title.ks"]
[s]