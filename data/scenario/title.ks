[cm]
[clearstack]
[bg storage="share/title.png" time="100"]
; タイトル名
[ptext layer="fix" text="&sf.gameTitle" x="140" y="100" size="100" color="black"]
; バージョン表記
[ptext layer="fix" text="Ver." x="1760" y="30" size="20" color="black" bold="bold" edge="white"]
[ptext layer="fix" text="&sf.sysVersion" x="1810" y="30" size="20" color="black" bold="bold" edge="white"]
; クレジット表記
[ptext layer="fix" text="&sf.credit" x="850" y="1000" size="20" face="sans-serif" color="black" bold="bold" edge="white"]
[if exp="sf.bootMode == 'develop' || sf.bootMode == 'kenshou' "]
    ; ティラノスクリプトバージョン表記
    [ptext layer="fix" text="ティラノスクリプトVer." x="1590" y="60" size="20" color="black" bold="bold" edge="white"]
    [ptext layer="fix" text="&sf.trnVersion" x="1810" y="60" size="20" color="black" bold="bold" edge="white"]
    ; 起動モード表記
    [ptext layer="fix" text="起動モード：" x="1690" y="90" size="20" color="black" bold="bold" edge="white"]
    [if exp="sf.bootMode == 'develop' "]
        [ptext layer="fix" text="開発" x="1810" y="90" size="20" color="black" bold="bold" edge="white"]
    [elsif exp="sf.bootMode == 'kenshou' "]
        [ptext layer="fix" text="検証" x="1810" y="90" size="20" color="black" bold="bold" edge="white"]
    [endif]
    ; 使用端末表記
    [ptext layer="fix" text="使用端末：" x="1708" y="120" size="20" color="black" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&sf.usingDevice" x="1810" y="120" size="20" color="black" bold="bold" edge="white" align="right"]
    ; 使用ブラウザ表記
    [ptext layer="fix" text="使用ブラウザ：" x="1570" y="150" size="20" color="black" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&sf.usingBrowser" x="1715" y="150" size="20" color="black" bold="bold" edge="white" align="right"]
[endif]
[l]
[PlayTitleDecision]
[wait time="1000"]

; クリックしたらトップ画面を表示する
*TopPage
[clearfix]
[bg storage="share/top.png" time="100"]
; タイトル名
[ptext layer="fix" text="&sf.gameTitle" x="140" y="100" size="100" color="black"]
[button x="700" y="330" width="540" height="86" graphic="title/button_newgame.png" enterimg="title/button_newgame_hover.png" target="*GameStart" clickse="../sound/se/decision.m4a"]
[button x="700" y="460" width="540" height="86" graphic="title/button_loadgame.png" enterimg="title/button_loadgame_hover.png" role="load" clickse="../sound/se/decision.m4a"]
[if exp="sf.isExtraPage == 'true' "]
    [button x="700" y="590" width="540" height="86" graphic="title/button_extra.png" enterimg="title/button_extra_hover.png" storage="Extra/extra.ks" clickse="../sound/se/decision.m4a"]
    [button x="700" y="720" width="540" height="86" graphic="title/button_config.png" enterimg="title/button_config_hover.png" role="sleepgame" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks" clickse="../sound/se/decision.m4a"]
[else]
    [button x="700" y="590" width="540" height="86" graphic="title/button_config.png" enterimg="title/button_config_hover.png" role="sleepgame" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks" clickse="../sound/se/decision.m4a"]
[endif]
; 開発/検証用
[if exp="sf.bootMode == 'develop' || sf.bootMode == 'kenshou' "]
    [if exp="sf.bootMode == 'develop' "]
        [glink color="bth06" target="*Debug" text="デバッグ" x="1560" y="880" width="150" height="36" size="36" bold="true" clickse="../sound/se/decision.m4a"]
    [endif]
    ; ショートカット
    [ptext layer="fix" text="[ショートカット]" x="170" y="280" size="20" color="black" bold="bold" edge="white"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出1" x="120" y="330" width="150" height="24" clickse="../sound/se/itemdecision.m4a" size="24"  bold="true" exp="f.isEpisode1Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出2" x="120" y="410" width="150" height="24" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.isEpisode2Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出3" x="120" y="490" width="150" height="24" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.isEpisode3Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="会話パートをスキップ" x="120" y="570" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.scn_skip = 1"]
    [glink color="bth06" target="*DeleteSaveData" text="セーブデータ全削除" x="120" y="670" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true"]
[endif]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayNormalBGM]
[endif]
[s]

*GameStart
[screen_full]
; デバッグ用に追加
[jump storage="Gimmick/episode1.ks" cond="f.isEpisode1Clear == 0"]
[jump storage="Gimmick/episode2.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 0"]
[jump storage="Gimmick/episode3.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 1"]

*Debug
[jump storage="Utility/debug.ks" cond="sf.bootMode == 'develop' "]

*DeleteSaveData
[jump storage="Utility/deleteSaveData.ks"]