*start
[cm]
[clearfix]
[start_keyconfig]

; メッセージウインドウとキャラクター情報の読み込み
[call storage="Utility/settings.ks"]

@showmenubutton
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
[if exp="f.isHungerGet == -1"]
    ; 天幕降下後
   [bg storage="epidode2/tentdown.png" time="100"]
[else]
    [bg storage="epidode2/studioroom.png" time="100"]
[endif]

; 背景パーツ
; 紙


; クリック判定
; カメラ
[clickable x="850" y="490" width="250" height="170" target="*SearchCamera" opacity="30" mouseopacity="50" color="0x505050"]
; 天幕
[if exp="f.isTentDown == 0"]
    [clickable x="610" y="170" width="720" height="80" target="*SearchTent" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ハンガー
[if exp="f.isHungerGet == 0"]
    [image storage="../image/episode2/hunger.png" layer="1" x="1530" y="390" name="hunger"]
    [clickable x="1530" y="390" width="130" height="90" target="*GetHunger" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 紙
[if exp="f.isTentDown == 1"]
    [clickable x="600" y="730" width="100" height="100" target="*SearchPaper" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

; アイテム一覧
[button graphic="kari/itemmenu_icon.png" storage="Gimmick/itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"]
[s]

*SearchCamera
[bg storage="epidode2/cameramonitor.png" time="1000" method="zoomIn"]
[if exp="f.isTentDown == 1 && f.isDressGet == 1"]
    #
    後述
    [messageFalse]
    [JumpStudioRoom]
[else]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    天幕と衣装がいるよね[p]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[endif]

*SearchTent
[if exp="f.isHungerGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    高すぎて届かない、何かないかな？[p]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[else]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    針金ハンガーでひっぱり出せたよ！[p]
    [messageFalse]
    [layer3False]
    [eval exp="f.isHungerGet = -1"]
    [eval exp="f.isTentDown = 1"]
    [JumpStudioRoom]
[endif]

*GetHunger
[eval exp="f.isHungerGet = 1"]
[free layer="1" name="hunger"]
[JumpStudioRoom]

*SearchPaper
[messageTrue]
#
紙を調べる[p]
[messageFalse]
[JumpStudioRoom]