*start
[cm]
[clearfix]
[start_keyconfig]

; メッセージウインドウとキャラクター情報の読み込み
[call storage="Utility/settings.ks"]

@showmenubutton
[screen_full]
[bg storage="epidode2/studioroom.png" time="100"]

[messageTrue]
#思い出2導入
次の部屋はここみたいだね[p]

#思い出2導入
カメラを調べる......[p]

[bg storage="epidode2/cameramonitor.png" time="1000" method="zoomIn"]

#思い出2導入
写真を撮ればいいのかな？[p]

*StudioRoom
[messageFalse]

; 背景
[bg storage="epidode2/studioroom.png" time="100"]

; 背景パーツ

; クリック判定
; カメラ
[clickable x="850" y="490" width="250" height="170" target="*Camera" opacity="30" mouseopacity="50" color="0x505050"]

; アイテム一覧
[button graphic="kari/itemmenu_icon.png" storage="Gimmick/itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"]
[s]

*Camera
[bg storage="epidode2/cameramonitor.png" time="1000" method="zoomIn"]
[if exp="f.isTentDown == 0 && f.isDressGet == 0"]
    [messageTrue]
    #
    天幕と衣装がいるよね[p]
    [messageFalse]
    [JumpStudioRoom]
[else]
    #
    後述
    [messageFalse]
    [JumpStudioRoom]
[endif]