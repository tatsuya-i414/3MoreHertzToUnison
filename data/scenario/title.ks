; ------------------------------------------------------------
;　タイトル画面
; ------------------------------------------------------------
[cm]
[clearstack]
[layer1True]
[ChangeBackGround storage="share/title.png"]
; タイトル名
[ptext layer="fix" text="&sf.gameTitle" x="140" y="100" size="100" color="&sf.colorScheme[0]"]
; バージョン表記
[ptext layer="fix" text="Ver." x="1760" y="30" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
[ptext layer="fix" text="&sf.sysVersion" x="1810" y="30" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
; クレジット表記
[ptext layer="fix" text="&sf.credit" x="850" y="1000" size="20" face="sans-serif" color="&sf.colorScheme[0]" bold="bold" edge="white"]
; サークルロゴ
[image storage="../image/logo/circlelogo.png" layer="1" x="1720" y="850" width="130" height="184" name="circlelogo" time="10" wait="true"]
[if exp="sf.bootMode == 'develop' || sf.bootMode == 'kenshou' "]
    ; ティラノスクリプトバージョン表記
    [ptext layer="fix" text="ティラノスクリプトVer." x="1590" y="60" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
    [ptext layer="fix" text="&sf.trnVersion" x="1810" y="60" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
    ; 起動モード表記
    [ptext layer="fix" text="起動モード：" x="1690" y="90" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
    [if exp="sf.bootMode == 'develop' "]
        [ptext layer="fix" text="開発" x="1810" y="90" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
    [elsif exp="sf.bootMode == 'kenshou' "]
        [ptext layer="fix" text="検証" x="1810" y="90" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
    [endif]
    ; 使用端末表記
    [ptext layer="fix" text="使用端末：" x="1708" y="120" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&sf.usingDevice" x="1810" y="120" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" align="right"]
    ; 使用ブラウザ表記
    [ptext layer="fix" text="使用ブラウザ：" x="1640" y="150" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&sf.usingBrowser" x="1785" y="150" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" align="right"]
[endif]
; タイトル画面をクリックしたら選択画面を表示する
[l]
[PlayTitleDecision]
[wait time="1000"]

; ------------------------------------------------------------
;　選択画面
; ------------------------------------------------------------
*TopPage
[clearfix]
[free layer="1" name="circlelogo" time="10" wait="true"]
[ChangeBackGround storage="share/top.png"]
; タイトル名
[ptext layer="fix" text="&sf.gameTitle" x="140" y="100" size="100" color="&sf.colorScheme[0]"]
[button x="700" y="330" width="540" height="86" graphic="title/button_newgame.png" enterimg="title/button_newgame_hover.png" target="*GameStart" clickse="../sound/se/decision.m4a"]
[button x="700" y="460" width="540" height="86" graphic="title/button_loadgame.png" enterimg="title/button_loadgame_hover.png" role="load" clickse="../sound/se/decision.m4a"]
[if exp="sf.isExtraPage == 'true' "]
    [button x="700" y="590" width="540" height="86" graphic="title/button_extra.png" enterimg="title/button_extra_hover.png" storage="Extra/extra.ks" exp="f.isJumping = 'true' " clickse="../sound/se/decision.m4a"]
    [button x="700" y="720" width="540" height="86" graphic="title/button_config.png" enterimg="title/button_config_hover.png" role="sleepgame" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks" clickse="../sound/se/decision.m4a"]
[else]
    [button x="700" y="590" width="540" height="86" graphic="title/button_config.png" enterimg="title/button_config_hover.png" role="sleepgame" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks" clickse="../sound/se/decision.m4a"]
[endif]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayNormalBGM]
[endif]
[s]

; ------------------------------------------------------------
;　ゲーム開始
; ------------------------------------------------------------
*GameStart
[if exp="f.isFirstGameClear == 'true' && sf.bootMode == 'normal' "]
    [cm]
    [clearfix]
    [DispModal text="すでにクリア済みのデータがあります<br>これまでの出来事をセーブして<br>新しいゲームを開始しますか？<br><br>※Noを押下すると開放した用語や<br>&emsp;CGがリセットされます" y="390" storage="title.ks"]
    *YesButton
    [FreeModal]
    ; 周回要素のあるフラグを除いて初期化（開発・検証時は適宜フラグ変更を行う可能性があるため）
    [if exp="sf.bootMode == 'normal' "]
        [call storage="Utility/resetFlag.ks"]
        [showsave]
    [endif]
    *NoButton
    [FreeModal]
    ; 周回要素のあるフラグも含めて初期化（開発・検証時は適宜フラグ変更を行う可能性があるため）
    [if exp="sf.bootMode == 'normal' "]
        [call storage="Utility/flag.ks"]
        [iscript]
            f.loadData = 'true'
        [endscript]
    [endif]
[endif]
[screen_full]
; デバッグ用に追加
[jump storage="Gimmick/episode1.ks" cond="f.isEpisode1Clear == 0"]
[jump storage="Gimmick/episode2.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 0"]
[jump storage="Gimmick/episode3.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 1"]