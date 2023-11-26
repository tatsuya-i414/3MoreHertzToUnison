[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200
[screen_full]

*start 
[button x="120" y="320" width="540" height="111" graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x="120" y="450" width="540" height="111" graphic="title/button_load.png" enterimg="title/button_load2.png" role="load"]
[button x="120" y="580" width="540" height="111" graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks"]
[button x="120" y="710" width="540" height="111" graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks"]
[button x="120" y="840" width="540" height="111" graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks"]
[button x="1550" y="870" width="345" height="75" graphic="debug/debug.png" target="debug"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="episode1.ks"

*debug
@jump storage="debug.ks"