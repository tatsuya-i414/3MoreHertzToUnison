[title name="novel-escape"]
[stop_keyconfig]

; 標準ライブラリ群
[call storage="Utility/tyrano.ks"]

; テーマ一括変換プラグインの呼び出し
[plugin name="theme_kopanda_bth_06_blue"]
; ローディング画面表示プラグインの呼び出し
[plugin name="loading"]
; ローディング画面設定の呼び出し
[call storage="Plugin/loading.ks"]
; キャラ名表示欄拡張プラグインの呼び出し
;[plugin name="charaname"]
;[charaname type="text" x="130" y="840" bgimage="../others/plugin/theme_kopanda_bth_06_blue/image/frame_message.png" opacity="255" pos="left"]
;[charaname_font size="34" color="0x196D7D" bold="bold"]

; フラグ初期化
[call storage="Utility/flag.ks"]
; マクロ読み込み
[call storage="Utility/macro.ks"]
; メッセージウインドウとキャラクター情報の読み込み
[call storage="Utility/settings.ks" cond="sf.isLoadSetting == 'false' "]
; カスタム情報の読み込み
[call storage="Utility/customsettings.ks"]
[DispBootMode]
; ブラウザ情報の取得
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

; 最初はメッセージボックスを非表示にする
[layopt layer="message" visible="false"]
; 最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[jump storage="title.ks"]
[s]