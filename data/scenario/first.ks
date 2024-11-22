[stop_keyconfig]
[clearsysvar]
[clearvar]

; 標準ライブラリ群
[call storage="Utility/tyrano.ks"]
; 標準ライブラリからカスタムした部分を取得
[loadcss file="data/others/css/tyranocustom.css"]
; AUTO/SKIPアイコン表示プラグインの呼び出し
[plugin name="a_s_ico"]
; ローディング画面表示プラグインの呼び出し
[plugin name="loading"]
; ループクェイクプラグインの呼び出し
[plugin name="loop_quake"]
; メニューSE追加プラグインの呼び出し
[plugin name="menu_se"]
; システムスワイププラグインの呼び出し
[plugin name="system_swipe"]
; テーマ一括変換プラグインの呼び出し
[plugin name="theme_kopanda_bth_06_blue"]

; フラグ初期化
[call storage="Utility/flag.ks"]
; マクロ読み込み
[call storage="Utility/macro.ks"]
; 各種設定情報の読み込み
[call storage="Utility/settings.ks"]
; クライアント情報を取得
[call storage="Utility/getClientInfo.ks"]
; メニューSEのパラメータを読み込み
[call storage="Plugin/menuse.ks"]

; 実行環境がブラウザ版の場合、起動時にゲームデータを一括読み込み
[if exp="sf.distribution == false "]
    [call storage="Plugin/loading.ks"]
    [call storage="Plugin/loadingshow.ks"]
[else]
    [iscript]
        f.loadData = 'true'
    [endscript]
[endif]
; ローディング画面を閉じる
[if exp="f.loadData == 'true' "]
    [iscript]
        $('.loadingWrap').css({'display':'none'});
    [endscript]
[endif]

; 最初はメッセージボックスを非表示にする
[layopt layer="message" visible="false"]
; 最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[jump storage="title.ks"]
[s]