[cm]
[clearstack]
[title name="&f.gameTile"]
[bg storage="share/title.png" time="100"]
; バージョン表記
[ptext layer="fix" text="Ver." x="1760" y="30" size="20" color="black" bold="bold" edge="white"]
[ptext layer="fix" text="&f.version" x="1810" y="30" size="20" color="black" bold="bold" edge="white"]
; クレジット表記
[ptext layer="fix" text="&f.credit" x="850" y="1000" size="20" color="black" bold="bold" edge="white"]
[if exp="f.mode == 'develop' || f.mode == 'kenshou' "]
    ; 起動モード表記
    [ptext layer="fix" text="起動モード：" x="1690" y="60" size="20" color="black" bold="bold" edge="white"]
    [ptext layer="fix" text="&f.dispMode" x="1820" y="60" size="20" color="black" bold="bold" edge="white"]
    ; 使用端末表記
    [ptext layer="fix" text="使用端末：" x="1708" y="90" size="20" color="black" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&f.usingDevice" x="1830" y="90" size="20" color="black" bold="bold" edge="white" align="right"]
    ; 使用ブラウザ表記
    [ptext layer="fix" text="使用ブラウザ：" x="1570" y="120" size="20" color="black" bold="bold" edge="white" align="right"]
    [ptext layer="fix" text="&f.usingBrowser" x="1715" y="120" size="20" color="black" bold="bold" edge="white" align="right"]
[endif]
[l]

; クリックしたらトップ画面を表示する
*TopPage
[clearfix]
[bg storage="share/top.png" time="100"]
[button x="700" y="330" width="540" height="86" graphic="title/button_newgame.png" enterimg="title/button_newgame_hover.png" target="*GameStart"]
[button x="700" y="460" width="540" height="86" graphic="title/button_loadgame.png" enterimg="title/button_loadgame_hover.png" role="load"]
[button x="700" y="590" width="540" height="86" graphic="title/button_gallery.png" enterimg="title/button_gallery_hover.png" storage="cg.ks"]
[button x="700" y="720" width="540" height="86" graphic="title/button_config.png" enterimg="title/button_config_hover.png" role="sleepgame" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks"]
; 開発/検証用
[if exp="f.mode == 'develop' || f.mode == 'kenshou' "]
    [if exp="f.mode == 'develop' "]
        [glink color="bth06" target="*Debug" text="デバッグ" x="1560" y="880" width="150" height="36" size="36" bold="true"]
    [endif]
    ; ショートカット
    [ptext layer="fix" text="[ショートカット]" x="170" y="280" size="20" color="black" bold="bold" edge="white"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出1" x="120" y="330" width="150" height="24" size="24" bold="true" exp="f.isEpisode1Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出2" x="120" y="410" width="150" height="24" size="24" bold="true" exp="f.isEpisode2Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出3" x="120" y="490" width="150" height="24" size="24" bold="true" exp="f.isEpisode3Clear = 1"]
    [glink color="bth06" storage="Utility/debug.ks" target="*Save" text="会話パートをスキップ" x="120" y="570" width="150" height="45" size="24" bold="true" exp="f.scn_skip = 1"]
[endif]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayNormalBgm]
[endif]
[s]

*GameStart
[screen_full]
; デバッグ用に追加
[jump storage="Gimmick/episode1.ks" cond="f.isEpisode1Clear == 0"]
[jump storage="Gimmick/episode2.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 0"]
[jump storage="Gimmick/episode3.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 1"]

*Debug
[jump storage="Utility/debug.ks" cond="f.mode == 'develop' "]