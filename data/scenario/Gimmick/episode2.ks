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
[layer1True]
[layer2True]

; 背景
[if exp="f.isHungerGet == -1"]
    ; 天幕降下後
   [bg storage="epidode2/tentdown.png" time="100"]
[else]
    [bg storage="epidode2/studioroom.png" time="100"]
[endif]

; 背景パーツ
; 紙
[if exp="f.isPaperDown == 1"]
    [image storage="../image/episode2/paper.png" layer="1" x="600" y="730" width="95" height="100" name="paper"]
[endif]

; クリック判定
; カメラ
[clickable x="850" y="490" width="250" height="170" target="*SearchCamera" opacity="30" mouseopacity="50" color="0x505050"]
; 天幕
[if exp="f.isTentDown == 0"]
    [clickable x="610" y="170" width="720" height="80" target="*SearchTent" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ハンガー
[if exp="f.isHungerGet == 0"]
    [image storage="../image/episode2/hunger.png" layer="1" x="1530" y="370" width="125" height="130" name="hunger"]
    [clickable x="1530" y="390" width="130" height="90" target="*GetHunger" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 紙
[if exp="f.isTentDown == 1"]
    [clickable x="600" y="730" width="100" height="100" target="*SearchPaper" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; メイクボックス
[if exp="f.isPencilGet == 0"]
    [clickable x="1660" y="680" width="185" height="130" target="*SearchMakeBox" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

; アイテム一覧
[button graphic="kari/itemmenu_icon.png" storage="Gimmick/itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"]
[s]

*SearchCamera
[layer1False]
[bg storage="epidode2/cameramonitor.png" time="1000" method="zoomIn"]
[if exp="f.isTentDown == 1 && f.isDressGet == 1"]
    #
    後述[p]
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
    [eval exp="f.isPaperDown = 1"]
    [JumpStudioRoom]
[endif]

*GetHunger
[eval exp="f.isHungerGet = 1"]
[free layer="1" name="hunger"]
[JumpStudioRoom]

*SearchPaper
[if exp="f.isTentDown == 1 && f.isPencilGet == 1"]
    [free layer="1" name="paper"]
    [bg storage="epidode2/papernotletter.png" time="100"]
    *SelectItemOfPencil
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [if exp="tf.usingItemInventory1 == 1"]
        [clickable x="1770" y="25" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory2 == 1"]
        [clickable x="1770" y="100" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory3 == 1"]
        [clickable x="1770" y="175" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory4 == 1"]
        [clickable x="1770" y="250" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory5 == 1"]
        [clickable x="1770" y="325" width="70"  height="70"  target="*UsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory6 == 1"]
        [clickable x="1770" y="400" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory7 == 1"]
        [clickable x="1770" y="475" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [clickable x="910" y="1015" width="100" height="50" target="*SearchPaper_back" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [s]
[elsif exp="f.isTentDown == 1 && f.isPencilGet == -1"]
    [layer1False]
    [bg storage="epidode2/paperletter.png" time="100"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    何か浮かび上がった！[p]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[else]
    [layer1False]
    [bg storage="epidode2/papernotletter.png" time="100"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    何も書かれてないね！[p]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[endif]

*UsePencil
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*ValidItemOfPencil" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfPencil" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUsePencil
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*IncorrectItemOfPencil" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfPencil" width="200" x="550" y="930" text="いいえ"]
[s]

*SearchPaper_back
[FreeItemBox]
[JumpStudioRoom]

*ValidItemOfPencil
[FreeItemBox]
[bg storage="epidode2/paperletter.png" time="100"]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
#深雪と桜良
何か浮かび上がった！[p]
[messageFalse]
[layer3False]
[eval exp="f.isPencilGet = -1"]
[JumpStudioRoom]

*IncorrectItemOfPencil
[FreeItemBox]
#
このアイテムは違うようだ。[p]
[jump target="*SelectItemOfPencil"]

*SearchMakeBox
[eval exp="f.isPencilGet = 1"]
[JumpStudioRoom]