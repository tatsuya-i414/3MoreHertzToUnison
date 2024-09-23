[stop_keyconfig]

; 標準ライブラリ群
[call storage="Utility/tyrano.ks"]
; ローディング画面表示プラグインの呼び出し
[plugin name="loading"]
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

; 配布形式が「WEB」の時、起動時にゲームデータを読み込む
[if exp="sf.distribution == 'WEB' "]
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