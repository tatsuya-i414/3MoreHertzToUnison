[cm]
[clearfix]
[clearstack]
[start_keyconfig]

[if exp="sf.scn_episode2OP_Skip == 'true' "]
    [FadeoutBGM]
[endif]

; シナリオ_思い出2序盤
[if exp="f.scn_skip == 0 && sf.scn_episode2OP_Skip == 'false' && f.scn_episode2_OP == 'false' "]
    [cm]
    [iscript]
        f.itemVisible[0] = 'true'
        f.itemVisible[1] = 'episode2'
    [endscript]
    [blackout exp="f.isEpisode1Clear == 1" storage_1="episode2/studioroom.png" storage_2="episode1/stageroom.png"]
    [ControlButtons]
    [FadeoutBGM]
    [PlayEpisode2_OpBGM]
    [messageTrue]
    [call storage="Conversation/episode2/episode2_op.ks"]
    [iscript]
        f.scn_episode2_OP = 'true'
        f.itemVisible[0] = 'false'
    [endscript]
    [clearfix]
    [messageFalse]
    [MenuButton]
    [FadeoutBGM]
    [JumpStudioRoom]
[endif]

*StudioRoom
[clearfix]
[messageFalse]
[layer1True]
[layer2True]
[MenuButton]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayEpisode2BGM]
[endif]

; 背景
[if exp="f.isTentDown ==1"]
    ; 天幕降下後
    [ChangeBackGround storage="episode2/studioroom_tentdown.png"]
[else]
    [ChangeBackGround storage="episode2/studioroom.png"]  
[endif]

; 背景パーツ
; ハンガー
[if exp="f.isHangerGet == 0"]
    [image storage="../image/episode2/hanger.png" layer="1" x="148" y="410" name="hanger"]
[endif]
; ブロック
[if exp="f.isBlueBlockGet == 0 && f.isRedBlockGet == 0 && f.isGreenBlockGet == 0"]
    [image storage="../image/episode2/block.png" layer="1" x="265" y="527" name="block"]
[endif]
; カーテン
[if exp="f.isCurtainGet == -1"]
    [image storage="../image/episode2/curtain.png" layer="1" x="223" y="227" name="curtain"]
[endif]

; クリック判定
; カメラ
[clickJudgment x="860" y="330" width="210" height="160" target="*SearchCamera"]
; 天幕
[if exp="f.isTentDown == 0"]
    [clickJudgment x="755" y="80" width="570" height="40" target="*SearchTent"]
[endif]
; ハンガー
[if exp="f.isHangerGet == 0"]
    [clickJudgment x="150" y="410" width="100" height="80" target="*GetHanger"]
[endif]
; 紙
[if exp="f.isTentDown == 1"]
    [clickJudgment x="685" y="840" width="110" height="90" target="*SearchPaper"]
[endif]
; メイクボックス
[if exp="f.isPencilGet == 0"]
    [clickJudgment x="1765" y="590" width="150" height="150" target="*SearchMakeBox"]
[endif]
; ブロック
[if exp="f.isBlueBlockGet == 0 && f.isRedBlockGet == 0 && f.isGreenBlockGet == 0"]
    [clickJudgment x="265" y="527" width="100" height="100" target="*GetBlock"]
[endif]
; タンス
[if exp="f.isDressGet == 0 || f.isCurtainGet == 0"]
    [clickJudgment x="1410" y="475" width="50" height="30" target="*SearchChest"]
[endif]
; 簡易更衣室
[if exp="f.isHangerGet != 0 && f.isCurtainGet != -1 && f.isDressGet != -1"]
    [clickJudgment x="1" y="210" width="265" height="750" target="*SearchFittingRoom"]
[endif]
[s]

*SearchCamera
[layer1False]
[ChangeBackGround storage="episode2/cameramonitor.png" time="1000" method="zoomIn"]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_01.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
[endif]
[if exp="f.isTentDown == 1 && f.isDressGet == -1"]
    ; 画像を削除する
    [free layer="1" name="paper"]
    [free layer="1" name="curtain"]
    ; シナリオ_思い出2終盤
    [if exp="f.scn_skip == 0 && sf.scn_episode2ED_Skip == 'false'"]
        [ControlButtons]
        [FadeoutBGM]
        [if exp="f.isPlayingBGM == 'false' "]
            [PlayEpisode2_EdBGM]
        [endif]
        [layer3True]
        [ShowNormalSakuraAndMiyuki]
        [messageTrue]
        [call storage="Conversation/episode2/episode2_ed.ks"]
        [layer3False]
        [cancelskip]
        [MenuButton]
    [endif]
    [iscript]
        f.isEpisode2Clear = 1
    [endscript]
    ; 思い出3へ移動する
    [jump storage="Gimmick/episode3.ks"]
[else]
    [layer3False]
    [JumpStudioRoom]
[endif]

*SearchTent
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_02.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[if exp="f.isClickedTent_first == 'true' "]
    [iscript]
        f.isClickedTent_first = 'false'
    [endscript]
[endif]
[messageFalse]
[iscript]
    f.isUsing = 1
[endscript]
[if exp="f.isUsing == 1"]
    [ItemBox]
    [SelectItemClickable target_1="*NotUseHanger" target_2="*UseHanger" target_3="*NotUseHanger" target_4="*NotUseHanger" target_5="*NotUseHanger" target_6="*NotUseHanger" target_7="*NotUseHanger"]
[endif]
[s]

*UseHanger
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfHanger" storage_no="Conversation/episode2/episode2_02.ks" target_no="*NotUseHanger"]
[s]

*NotUseHanger
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfHanger" storage_no="Conversation/episode2/episode2_02.ks" target_no="*NotUseHanger"]
[s]

*ValidItemOfHanger
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_02.ks" target="*UseHanger"]
    [endnolog]
    [layer3False]
[endif]
[iscript]
    f.isHangerGet = -1
    f.isTentDown = 1
    f.isPaperDown = 1
[endscript]
[JumpStudioRoom]

*IncorrectItemOfHanger
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpStudioRoom]

*GetHanger
[PlayGetItem]
[iscript]
    f.isHangerGet = 1
[endscript]
[free layer="1" name="hanger"]
; 天幕の初回クリックフラグをリセットする
[if exp="f.isClickedTent_first == 'false' "]
    [iscript]
        f.isClickedTent_first = 'true'
    [endscript]
[endif]
[JumpStudioRoom]

*SearchPaper
[Freelayer1]
[if exp="f.isPencilGet == -1"]
    ; ペンで紙をこすった後
    [ChangeBackGround storage="episode2/paperletter.png"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchPaper_back"]
    [s]
[else]
    [ChangeBackGround storage="episode2/papernotletter.png"]
[endif]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_04.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[if exp="f.isClickedPaper_first == 'true' "]
    [iscript]
        f.isClickedPaper_first = 'false'
    [endscript]
[endif]
[messageFalse]
[iscript]
    f.isUsing = 1
[endscript]
[if exp="f.isUsing == 1"]
    [ItemBox]
    [SelectItemClickable target_1="*NotUsePencil" target_2="*NotUsePencil" target_3="*UsePencil" target_4="*NotUsePencil" target_5="*NotUsePencil" target_6="*NotUsePencil" target_7="*NotUsePencil"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchPaper_back"]
[endif]
[s]

*UsePencil
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfPencil" storage_no="Conversation/episode2/episode2_04.ks" target_no="*NotUsePencil"]
[s]

*NotUsePencil
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfPencil" storage_no="Conversation/episode2/episode2_04.ks" target_no="*NotUsePencil"]
[s]

*SearchPaper_back
[cm]
[FreeItemBox]
[JumpStudioRoom]

*ValidItemOfPencil
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_04.ks" target="*UsePencil"]
    [endnolog]
    [layer3False]
[endif]
[iscript]
    f.isPencilGet = -1
[endscript]
[JumpStudioRoom]

*IncorrectItemOfPencil
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpStudioRoom]

*SearchMakeBox
[PlayGetItem]
[iscript]
    f.isPencilGet = 1
[endscript]
[JumpStudioRoom]

*GetBlock
[PlayGetItem]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_06.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[iscript]
    f.isBlueBlockGet = 1
    f.isRedBlockGet = 1
    f.isGreenBlockGet = 1
[endscript]
[free layer="1" name="block"]
[JumpStudioRoom]

*SearchChest
[if exp="f.isKeyOpen == 1"]
    [layer1False]
[endif]
[jump target="*GetDressAndCurtain" cond="f.isKeyOpen == 1"]
[if exp="f.isDressGet == 0 && f.isCurtainGet == 0"]
    ; 判定用変数と配列を宣言
    [iscript]
        f.blockColor = ''
        f.dimple = ['', '', '']
    [endscript]

    [Freelayer1]
    [ChangeBackGround storage="episode2/chest.png"]
    *SelectItemOfBlock
    ; ブロックの配置が正しくない場合はリセットする
    [if exp="f.dimple[0] != '' && f.dimple[1] != '' && f.dimple[2] != '' "]
        [free layer="1" name="blue"]
        [free layer="1" name="red"]
        [free layer="1" name="green"]
        [iscript]
            tf.usingItemInventory4 = 1
            f.isBlueBlockGet = 1
            tf.usingItemInventory5 = 1
            f.isRedBlockGet = 1
            tf.usingItemInventory6 = 1
            f.isGreenBlockGet = 1
            f.blockColor = ''
            f.dimple[0] = ''
            f.dimple[1] = ''
            f.dimple[2] = ''
        [endscript]
    [endif]
    [messageFalse]
    [iscript]
        f.isUsing = 1
    [endscript]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseBlock" target_2="*NotUseBlock" target_3="*NotUseBlock" target_4="*UseBlueBlock" target_5="*UseRedBlock" target_6="*UseGreenBlock" target_7="*NotUseBlock"]
        ; 一度はめたブロックを戻すためのクリック判定
        [if exp="f.dimple[0] != '' "]
            [clickJudgment x="485" y="388" width="275" height="300" target="*ReturnLeftSideBlock"]
        [endif]
        [if exp="f.dimple[1] != '' "]
            [clickJudgment x="795" y="388" width="275" height="300" target="*ReturnCenterSideBlock"]
        [endif]
        [if exp="f.dimple[2] != '' "]
            [clickJudgment x="1118" y="388" width="275" height="300" target="*ReturnRightSideBlock"]
        [endif]
        [BackFromEnlargedMap target="*SearchChest_back"]
    [endif]
    [s]
[endif]

*UseBlueBlock
[messageTrue]
[ConfirmUseItem]
[iscript]
    f.blockColor = 'blue'
[endscript]
[YesNoButton target_yes="*ValidItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*UseRedBlock
[messageTrue]
[ConfirmUseItem]
[iscript]
    f.blockColor = 'red'
[endscript]
[YesNoButton target_yes="*ValidItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*UseGreenBlock
[messageTrue]
[ConfirmUseItem]
[iscript]
    f.blockColor = 'green'
[endscript]
[YesNoButton target_yes="*ValidItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*NotUseBlock
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*ReturnLeftSideBlock
[if exp="f.dimple[0] == 'blue' "]
    [if exp="f.isBlueBlockGet == -1"]
        [iscript]
            tf.usingItemInventory4 = 1
            f.isBlueBlockGet = 1
        [endscript]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[0] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [iscript]
            tf.usingItemInventory5 = 1
            f.isRedBlockGet = 1
        [endscript]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[0] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [iscript]
            tf.usingItemInventory6 = 1
            f.isGreenBlockGet = 1
        [endscript]
        [free layer="1" name="green"]
    [endif]
[endif]
[iscript]
    f.dimple[0] = ''
    f.blockColor = ''
[endscript]
[iscript]
            
[endscript]
[jump target="*SelectItemOfBlock"]

*ReturnCenterSideBlock
[if exp="f.dimple[1]== 'blue' "]
    [if exp="f.isBlueBlockGet == -1"]
        [iscript]
            tf.usingItemInventory4 = 1
            f.isBlueBlockGet = 1
        [endscript]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[1] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [iscript]
            tf.usingItemInventory5 = 1
            f.isRedBlockGet = 1
        [endscript]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[1] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [iscript]
            tf.usingItemInventory6 = 1
            f.isGreenBlockGet = 1
        [endscript]
        [free layer="1" name="green"]
    [endif]
[endif]
[iscript]
    f.dimple[1] = ''
    f.blockColor = ''
[endscript]
[jump target="*SelectItemOfBlock"]

*ReturnRightSideBlock
[if exp="f.dimple[2] == 'blue' "]
    [if exp="f.isBlueBlockGet == -1"]
        [iscript]
            tf.usingItemInventory4 = 1
            f.isBlueBlockGet = 1
        [endscript]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[2] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [iscript]
            tf.usingItemInventory5 = 1
            f.isRedBlockGet = 1
        [endscript]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[2] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [iscript]
            tf.usingItemInventory6 = 1
            f.isGreenBlockGet = 1
        [endscript]
        [free layer="1" name="green"]
    [endif]
[endif]
[iscript]
    f.dimple[2] = ''
    f.blockColor = ''      
[endscript]
[jump target="*SelectItemOfBlock"]

*SearchChest_back
[iscript]
    delete f.blockColor;
    delete f.dimple;
[endscript]
[cm]
[FreeItemBox]
[free layer="1" name="blue"]
[free layer="1" name="red"]
[free layer="1" name="green"]
[if exp="tf.usingItemInventory4 == 1"]
    [iscript]
        tf.usingItemInventory4 = 1
        f.isBlueBlockGet = 1
    [endscript]
[endif]
[if exp="tf.usingItemInventory5 == 1"]
    [iscript]
        tf.usingItemInventory5 = 1
        f.isRedBlockGet = 1
    [endscript]
[endif]
[if exp="tf.usingItemInventory6 == 1"]
    [iscript]
        tf.usingItemInventory6 = 1
        f.isGreenBlockGet = 1
    [endscript]
[endif]
[JumpStudioRoom]

*ValidItemOfBlock
[messageFalse]
[if exp="f.blockColor == 'blue' "]
    [iscript]
        tf.usingItemInventory4 = 0
        f.isBlueBlockGet = -1
    [endscript]
    [free layer="2" name="blueblock"]
[elsif exp="f.blockColor == 'red' "]
    [iscript]
        tf.usingItemInventory5 = 0
        f.isRedBlockGet = -1
    [endscript]
    [free layer="2" name="redblock"]
[elsif exp="f.blockColor == 'green' "]
    [iscript]
        tf.usingItemInventory6 = 0
        f.isGreenBlockGet = -1
    [endscript]
    [free layer="2" name="greenblock"]
[endif]
[if exp="f.dimple[0] == '' "]
    [clickJudgment x="485" y="388" width="275" height="300" target="*LeftDimple"]
[endif]
[if exp="f.dimple[1] == '' "]
    [clickJudgment x="795" y="388" width="275" height="300" target="*CenterDimple"]
[endif]
[if exp="f.dimple[2] == '' "]
    [clickJudgment x="1118" y="388" width="275" height="300" target="*RightDimple"]
[endif]
[s]

*IncorrectItemOfBlock
[FreeItemBox]
[nolog]
#
このアイテムは使用できない。[p]
[endnolog]
[jump target="*SelectItemOfBlock"]

*LeftDimple
[PlayEmbed]
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="485" y="389" width="278" height="293" name="blue"]
    [iscript]
        f.dimple[0] = 'blue'
    [endscript]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="485" y="389" width="278" height="293" name="red"]
    [iscript]
        f.dimple[0] = 'red'
    [endscript]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="485" y="389" width="278" height="293" name="green"]
    [iscript]
        f.dimple[0] = 'green'
    [endscript]
[endif]
[call target="*OpenChest"]

*CenterDimple
[PlayEmbed]
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="795" y="389" width="278" height="293" name="blue"]
    [iscript]
        f.dimple[1] = 'blue'
    [endscript]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="795" y="389" width="278" height="293" name="red"]
    [iscript]
        f.dimple[1] = 'red'
    [endscript]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="795" y="389" width="278" height="293" name="green"]
    [iscript]
        f.dimple[1] = 'green'
    [endscript]
[endif]
[call target="*OpenChest"]

*RightDimple
[PlayEmbed]
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="1108" y="389" width="278" height="293" name="blue"]
    [iscript]
        f.dimple[2] = 'blue'
    [endscript]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="1108" y="389" width="278" height="293" name="red"]
    [iscript]
        f.dimple[2] = 'red'
    [endscript]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="1108" y="389" width="278" height="293" name="green"]
    [iscript]
        f.dimple[2] = 'green'
    [endscript]
[endif]
[call target="*OpenChest"]

*OpenChest
[if exp="f.dimple[0]== 'red' && f.dimple[1] == 'blue' && f.dimple[2] == 'green' "]
    [FreeItemBox]
    [free layer="1" name="blue"]
    [free layer="1" name="red"]
    [free layer="1" name="green"]
    [iscript]
        f.isKeyOpen = 1
    [endscript]
    *GetDressAndCurtain
    [wait time="150"]
    [PlayOpenChest]
    *GetAnotherItem
    [ChangeBackGround storage="episode2/dressandcurtain.png"]
    ; アイブロウペンシル未使用時のみ発生
    [if exp="f.isPencilGet != -1 && f.scn_episode2_07 == 'false' "]
        [if exp="f.scn_skip == 0"]
            [ControlButtons]
            [layer3True]
            [ShowNormalSakuraAndMiyuki]
            [messageTrue]
            [nolog]
            [call storage="Conversation/episode2/episode2_07.ks"]
            [endnolog]
            [messageFalse]
            [layer3False]
            [cancelskip]
            [clearfix]
            [MenuButton]
        [endif]
    [endif]
    [if exp="f.scn_episode2_07 == 'false' "]
        [iscript]
            f.scn_episode2_07 = 'true'
        [endscript]
    [endif]
    ; 衣装
    [if exp="f.isDressGet == 0"]
        [clickJudgment x="230" y="150" width="690" height="510" target="*GetDress"]
    [endif]
    ; カーテン
    [if exp="f.isCurtainGet == 0"]
        [clickJudgment x="1090" y="480" width="720" height="300" target="*GetCurtain"]
    [endif]
    [if exp="f.isDressGet == 0 || f.isCurtainGet == 0"]
        [BackFromEnlargedMap target="*OpenChest_back"]
    [endif]
    [if exp="f.isDressGet == 1 && f.isCurtainGet == 1"]
        [iscript]
            delete f.blockColor;
            delete f.dimple;
        [endscript]
        [JumpStudioRoom]
    [endif]
    [s]
[else]
    [jump target="*SelectItemOfBlock"]
[endif]
[return]

*GetDress
[PlayGetItem]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_05.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[iscript]
    f.isDressGet = 1
[endscript]
[free layer="1" name="dress"]
[jump target="*GetAnotherItem"]

*GetCurtain
[PlayGetItem]
[iscript]
    f.isCurtainGet = 1
[endscript]
[free layer="1" name="curtain"]
; 簡易更衣室の初回クリックフラグをリセットする
[if exp="f.isClickedFittingRoom_first == 'false' "]
    [iscript]
        f.isClickedFittingRoom_first = 'true'
    [endscript]
[endif]
[jump target="*GetAnotherItem"]

*OpenChest_back
[cm]
[JumpStudioRoom]

*SearchFittingRoom
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_03.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[if exp="f.isClickedFittingRoom_first == 'true' "]
    [iscript]
        f.isClickedFittingRoom_first = 'false'
    [endscript]
[endif]
[messageFalse]
[iscript]
    f.isUsing = 1
[endscript]
[if exp="f.isUsing == 1"]
    [ItemBox]
    [SelectItemClickable target_1="*NotUseCurtain" target_2="*NotUseCurtain" target_3="*NotUseCurtain" target_4="*NotUseCurtain" target_5="*UseCurtain" target_6="*NotUseCurtain" target_7="*NotUseCurtain"]
[endif]
[s]

*UseCurtain
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfCurtain" storage_no="Conversation/episode2/episode2_03.ks" target_no="*NotUseCurtain"]
[s]

*NotUseCurtain
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfCurtain" storage_no="Conversation/episode2/episode2_03.ks" target_no="*NotUseCurtain"]
[s]

*ValidItemOfCurtain
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode2/episode2_03.ks" target="*UseCurtain"]
    [endnolog]
    [layer3False]
[endif]
[if exp="f.isCurtainGet == 1 && f.isDressGet == 1"]
    [iscript]
        f.isCurtainGet = -1
        f.isDressGet = -1
        f.isChangeDress = 'true'
    [endscript]
[endif]
[JumpStudioRoom]

*IncorrectItemOfCurtain
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpStudioRoom]