; ------------------------------------------------------------
; ボタン用マクロ
; ------------------------------------------------------------
; メッセージウィンドウ非表示ボタン
[macro name="hiddenMessageWindow"]
    [button graphic="share/sysbtn_02_screen.png" enterimg="share/sysbtn_02_screen_hover.png" x="1420" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="window" hint="メッセージウインドウ非表示"]
[endmacro]

; オートボタン
[macro name="AutoButton"]
    [button graphic="share/sysbtn_02_auto.png" enterimg="share/sysbtn_02_auto_hover.png" x="1540" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="auto" hint="オートモード"]
[endmacro]

; バックログボタン
[macro name="BacklogButton"]
    [button graphic="share/sysbtn_02_log.png" enterimg="share/sysbtn_02_log_hover.png" x="1660" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="backlog" hint="会話ログ"]
[endmacro]

; スキップボタン
[macro name="SkipButton"]
    [button graphic="share/sysbtn_02_skip.png" enterimg="share/sysbtn_02_skip_hover.png" x="1780" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="skip" hint="スキップモード"]
[endmacro]

; シナリオパート開始時に操作ボタン類を表示する
[macro name="ControlButtons"]
    [clearfix]
    [hidemenubutton]
    [hiddenMessageWindow]
    [AutoButton]
    [BacklogButton]
    [SkipButton]
[endmacro]

; シナリオパート終了時に操作ボタン類を閉じて、メニューボタンを表示する
[macro name="MenuButton"]
    [showmenubutton]
    [cancelskip]
    [autostop]
[endmacro]

; 拡大マップからの戻るボタン
[macro name="BackFromEnlargedMap"]
    [if exp="sf.usingDevice == 'SP' "]
        [button graphic="share/arrow_01_down.png" enterimg="share/arrow_01_down_hover.png" target="%target" x="910" y="950"]
    [elsif exp="sf.usingDevice == 'PC' "]
        [button graphic="share/arrow_01_down.png" enterimg="share/arrow_01_down_hover.png" target="%target" x="910" y="980"]
    [endif]
[endmacro]

; 選択肢ボタン
[macro name="SelectOptionsButton"]
    [glink color="bth06" storage="%storage_yes" target="%target_yes" width="1300" x="230" y="300" size="30" text="%text_yes" clickse="../sound/se/decision.m4a" exp="%exp_yes"]
    [glink color="bth06" storage="%storage_no" target="%target_no" width="1300" x="230" y="500" size="30" text="%text_no" clickse="../sound/se/cancel.m4a" exp="%exp_no"]
[endmacro]
[return]