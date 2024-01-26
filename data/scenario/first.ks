[title name="novel-escape"]
[stop_keyconfig]

; 標準ライブラリ群
@call storage="Utility/tyrano.ks"

; フラグ初期化
[call storage="Utility/flag.ks"]

; マクロ読み込み
[call storage="Utility/macro.ks"]

@layopt layer="message" visible=false

; 最初は右下のメニューボタンを非表示にする
[hidemenubutton]

; モード
; 開発者モード：develop / プレイヤーモード：play
[eval exp="f.mode = 'develop' "]

; タイトル画面へ移動
@jump storage="title.ks"

[s]