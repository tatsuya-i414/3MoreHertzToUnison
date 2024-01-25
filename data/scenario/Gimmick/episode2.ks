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
; ブロック
[if exp="f.isBlueBlockGet == 0 && f.isRedBlockGet == 0 && f.isGreenBlockGet == 0"]
    [clickable x="590" y="890" width="100" height="75" target="*GetBlock" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; タンス
[if exp="f.isDressGet == 0 || f.isCurtainGet == 0"]
    [clickable x="205" y="680" width="65" height="40" target="*SearchChest" opacity="30" mouseopacity="50" color="0x505050"]
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
    [Freelayer1]
    [bg storage="epidode2/papernotletter.png" time="500"]
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
            [clickable x="1770" y="175" width="70"  height="70"  target="*UsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory4 == 1"]
            [clickable x="1770" y="250" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory5 == 1"]
            [clickable x="1770" y="325" width="70"  height="70"  target="*NotUsePencil" opacity="30" mouseopacity="50" color="0x505050"]
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

*GetBlock
[eval exp="f.isBlueBlockGet = 1"]
[eval exp="f.isRedBlockGet = 1"]
[eval exp="f.isGreenBlockGet = 1"]
[free layer="1" name="blueblock"]
[free layer="1" name="redblock"]
[free layer="1" name="greenblock"]
[JumpStudioRoom]

*SearchChest
[if exp="f.isKeyOpen == 1"]
    [layer1False]
    [jump target="*GetDressAndCurtain"]
[endif]
[if exp="f.isDressGet == 0 && f.isCurtainGet == 0"]
    ; 判定用変数を宣言
    [eval exp="f.isBlockColor = '' "]
    [eval exp="f.leftDimple = '' "]
    [eval exp="f.centerDimple = '' "]
    [eval exp="f.rightDimple = '' "]

    [Freelayer1]
    [bg storage="epidode2/chest.png" time="100"]
    *SelectItemOfBlock
    ; ブロックの配置が正しくない場合はリセットする
    [if exp="f.leftDimple != '' && f.centerDimple != '' && f.rightDimple != '' "]
        [free layer="1" name="blue"]
        [free layer="1" name="red"]
        [free layer="1" name="green"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [eval exp="f.isBlockColor = '' "]
        [eval exp="f.leftDimple = '' "]
        [eval exp="f.centerDimple = '' "]
        [eval exp="f.rightDimple = '' "]
    [endif]
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [if exp="tf.usingItemInventory1 == 1"]
            [clickable x="1770" y="25" width="70"  height="70"  target="*NotUseBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory2 == 1"]
            [clickable x="1770" y="100" width="70"  height="70"  target="*NotUseBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory3 == 1"]
            [clickable x="1770" y="175" width="70"  height="70"  target="*NotUseBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory4 == 1"]
            [clickable x="1770" y="250" width="70"  height="70"  target="*UseBlueBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory5 == 1"]
            [clickable x="1770" y="325" width="70"  height="70"  target="*UseRedBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory6 == 1"]
            [clickable x="1770" y="400" width="70"  height="70"  target="*UseGreenBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="tf.usingItemInventory7 == 1"]
            [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        ; 一度はめたブロックを戻すためのクリック判定
        [if exp="f.leftDimple != '' "]
            [clickable x="700" y="490" width="185" height="150" target="*ReturnLeftSideBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="f.centerDimple != '' "]
            [clickable x="895" y="490" width="185" height="150" target="*ReturnCenterSideBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [if exp="f.rightDimple != '' "]
            [clickable x="1080" y="490" width="185" height="150" target="*ReturnRightSideBlock" opacity="30" mouseopacity="50" color="0x505050"]
        [endif]
        [clickable x="910" y="1015" width="100" height="50" target="*SearchChest_back" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [s]
[endif]

*UseBlueBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.isBlockColor = 'blue' "]
[glink color="btn_29_red" target="*ValidItemOfBlock" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfBlock" width="200" x="550" y="930" text="いいえ"]
[s]

*UseRedBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.isBlockColor = 'red' "]
[glink color="btn_29_red" target="*ValidItemOfBlock" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfBlock" width="200" x="550" y="930" text="いいえ"]
[s]

*UseGreenBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.isBlockColor = 'green' "]
[glink color="btn_29_red" target="*ValidItemOfBlock" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfBlock" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseBlock
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*IncorrectItemOfBlock" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfBlock" width="200" x="550" y="930" text="いいえ"]
[s]

*ReturnLeftSideBlock
[if exp="f.leftDimple != '' "]
    [if exp="f.isBlueBlockGet == -1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [elsif exp="f.isRedBlockGet == -1" ]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [elsif exp="f.isGreenBlockGet == -1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
    [eval exp="f.leftDimple = '' "]
[endif]
[eval exp="f.isBlockColor = '' "]
[jump target="*SelectItemOfBlock"]

*ReturnCenterSideBlock
[if exp="f.centerDimple != '' "]
    [if exp="f.isBlueBlockGet == -1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [elsif exp="f.isRedBlockGet == -1" ]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [elsif exp="f.isGreenBlockGet == -1" ]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
    [eval exp="f.centerDimple = '' "]
[endif]
[eval exp="f.isBlockColor = '' "]
[jump target="*SelectItemOfBlock"]

*ReturnRightSideBlock
[if exp="f.rightDimple != '' "]
    [if exp="f.isBlueBlockGet == -1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [elsif exp="f.isRedBlockGet == -1"]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [elsif exp="f.isGreenBlockGet == -1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
    [eval exp="f.rightDimple = '' "]
[endif]
[eval exp="f.isBlockColor = '' "]
[jump target="*SelectItemOfBlock"]

*SearchChest_back
[iscript]
    delete f.leftDimple;
    delete f.centerDimple;
    delete f.rightDimple;
    delete f.isBlockColor;
[endscript]
[FreeItemBox]
[free layer="1" name="blue"]
[free layer="1" name="red"]
[free layer="1" name="green"]
[if exp="tf.usingItemInventory4 == 1"]
    [eval exp="tf.usingItemInventory4 = 1"]
    [eval exp="f.isBlueBlockGet = 1"]
[endif]
[if exp="tf.usingItemInventory5 == 1"]
    [eval exp="tf.usingItemInventory5 = 1"]
    [eval exp="f.isRedBlockGet = 1"]
[endif]
[if exp="tf.usingItemInventory6 == 1"]
    [eval exp="tf.usingItemInventory6 = 1"]
    [eval exp="f.isGreenBlockGet = 1"]
[endif]
[JumpStudioRoom]

*ValidItemOfBlock
[messageFalse]
[if exp="f.isBlockColor == 'blue' "]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="f.isBlueBlockGet = -1"]
    [free layer="2" name="blueblock"]
[elsif exp="f.isBlockColor == 'red' "]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="f.isRedBlockGet = -1"]
    [free layer="2" name="redblock"]
[elsif exp="f.isBlockColor == 'green' "]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="f.isGreenBlockGet = -1"]
    [free layer="2" name="greenblock"]
[endif]
[if exp="f.leftDimple == '' "]
    [clickable x="700" y="490" width="185" height="150" target="*LeftDimple" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
[if exp="f.centerDimple == '' "]
    [clickable x="895" y="490" width="185" height="150" target="*CenterDimple" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
[if exp="f.rightDimple == '' "]
    [clickable x="1080" y="490" width="185" height="150" target="*RightDimple" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
[s]

*IncorrectItemOfBlock
[FreeItemBox]
#
このアイテムは使用できない。[p]
[jump target="*SelectItemOfBlock"]

*LeftDimple
[if exp="f.isBlockColor == 'blue' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/blue.png" layer="1" x="700" y="490" width="185" height="150" name="blue"]
    [eval exp="f.leftDimple = 'blue' "]
[elsif exp="f.isBlockColor == 'red' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/red.png" layer="1" x="700" y="490" width="185" height="150" name="red"]
    [eval exp="f.leftDimple = 'red' "]
[elsif exp="f.isBlockColor == 'green' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/green.png" layer="1" x="700" y="490" width="185" height="150" name="green"]
    [eval exp="f.leftDimple = 'green' "]
[endif]
[call target="*OpenChest"]

*CenterDimple
[if exp="f.isBlockColor == 'blue' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/blue.png" layer="1" x="895" y="490" width="185" height="150" name="blue"]
    [eval exp="f.centerDimple = 'blue' "]
[elsif exp="f.isBlockColor == 'red' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/red.png" layer="1" x="895" y="490" width="185" height="150" name="red"]
    [eval exp="f.centerDimple = 'red' "]
[elsif exp="f.isBlockColor == 'green' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/green.png" layer="1" x="895" y="490" width="185" height="150" name="green"]
    [eval exp="f.centerDimple = 'green' "]
[endif]
[call target="*OpenChest"]

*RightDimple
[if exp="f.isBlockColor == 'blue' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/blue.png" layer="1" x="1080" y="490" width="185" height="150" name="blue"]
    [eval exp="f.rightDimple = 'blue' "]
[elsif exp="f.isBlockColor == 'red' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/red.png" layer="1" x="1080" y="490" width="185" height="150" name="red"]
    [eval exp="f.rightDimple = 'red' "]
[elsif exp="f.isBlockColor == 'green' "]
    ; ブロックをはめる効果音
    [image storage="../image/kari/green.png" layer="1" x="1080" y="490" width="185" height="150" name="green"]
    [eval exp="f.rightDimple = 'green' "]
[endif]
[call target="*OpenChest"]

*OpenChest
[if exp="f.leftDimple == 'red' && f.centerDimple == 'blue' && f.rightDimple == 'green' "]
    [FreeItemBox]
    [free layer="1" name="blue"]
    [free layer="1" name="red"]
    [free layer="1" name="green"]
    [eval exp="f.isKeyOpen = 1"]
    *GetDressAndCurtain
    [bg storage="epidode2/dressandcurtain.png" time="100"]
    ; 衣装
    [if exp="f.isDressGet == 0"]
        [clickable x="230" y="150" width="690" height="510" target="*GetDress" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    ; カーテン
    [if exp="f.isCurtainGet == 0"]
        [clickable x="1090" y="480" width="720" height="300" target="*GetCurtain" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="f.isDressGet == 0 || f.isCurtainGet == 0"]
        [clickable x="910" y="1015" width="100" height="50" target="*OpenChest_back" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="f.isDressGet == 1 && f.isCurtainGet == 1"]
        [iscript]
            delete f.leftDimple;
            delete f.centerDimple;
            delete f.rightDimple;
            delete f.isBlockColor;
        [endscript]
        [JumpStudioRoom]
    [endif]
    [s]
[else]
    [jump target="*SelectItemOfBlock"]
[endif]
[return]

*GetDress
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
#深雪と桜良
この衣装ってあれだよね[p]
[messageFalse]
[layer3False]
[eval exp="f.isDressGet = 1"]
[free layer="1" name="dress"]
[jump target="*GetDressAndCurtain"]

*GetCurtain
[eval exp="f.isCurtainGet = 1"]
[free layer="1" name="curtain"]
[jump target="*GetDressAndCurtain"]

*OpenChest_back
[JumpStudioRoom]