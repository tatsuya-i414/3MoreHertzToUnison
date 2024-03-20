[cm]

[clearstack]
[bg storage="title.jpg" time="100"]
[wait time="200"]

*start
[button x="120" y="320" width="540" height="111" graphic="title/button_start.png" enterimg="title/button_start2.png" target="*gamestart"]
[button x="120" y="450" width="540" height="111" graphic="title/button_load.png" enterimg="title/button_load2.png" role="load"]
[button x="120" y="580" width="540" height="111" graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks"]
[button x="120" y="710" width="540" height="111" graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks"]
[button x="120" y="840" width="540" height="111" graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="Utility/config.ks"]
[if exp="f.mode == 'develop' "]
    [glink color="gray" target="*debug" text="デバッグ" x="1560" y="880" width="150" height="36" size="36" bold="true"]
[endif]
[s]

*gamestart
[screen_full]
; デバッグ用に追加
[jump storage="Gimmick/episode1.ks" cond="f.isEpisode1Clear == 0"]
[jump storage="Gimmick/episode2.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 0"]
[jump storage="Gimmick/episode3.ks" cond="f.isEpisode1Clear == 1 && f.isEpisode2Clear == 1"]

*debug
[jump storage="Utility/debug.ks" cond="f.mode == 'develop' "]