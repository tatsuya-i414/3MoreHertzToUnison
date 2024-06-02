[title name="novel-escape"]
[stop_keyconfig]

; 標準ライブラリ群
[call storage="Utility/tyrano.ks"]

; テーマ一括変換プラグインの呼び出し
[plugin name="theme_kopanda_bth_06_blue"]
; ローディング画面表示プラグインの呼び出し
[plugin name="loading"]

; フラグ初期化
[call storage="Utility/flag.ks"]
; マクロ読み込み
[call storage="Utility/macro.ks"]
; カスタム情報の読み込み
[call storage="Utility/customsettings.ks"]
[DispBootMode]
; クライアントのブラウザ情報を取得
[iscript]
    let agent = window.navigator.userAgent.toLowerCase()
    let usingBrowser = "";

    if (agent.indexOf("msie") != -1 || agent.indexOf("trident") != -1) {
        usingBrowser = "Internet Explorer";
    } 
    else if (agent.indexOf("edg") != -1 || agent.indexOf("edge") != -1) {
        usingBrowser = "Microsoft Edge";
    } 
    else if (agent.indexOf("opr") != -1 || agent.indexOf("opera") != -1) {
        usingBrowser = "Opera";
    } 
    else if (agent.indexOf("chrome") != -1) {
        usingBrowser = "Google Chrome";
    } 
    else if (agent.indexOf("safari") != -1) {
        usingBrowser = "Safari";
    } 
    else if (agent.indexOf("firefox") != -1) {
        usingBrowser = "FireFox";
    } 
    f["usingBrowser"] = usingBrowser;
[endscript]
; メッセージウインドウとキャラクター情報の読み込み
[call storage="Utility/settings.ks"]

; 起動時にゲームデータを読み込む
[call storage="Plugin/loading.ks"]
[call storage="Plugin/loadingshow.ks" cond="sf.loadData == 'false' "]
; ローディング画面を閉じる
[if exp="sf.loadData == 'true' "]
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