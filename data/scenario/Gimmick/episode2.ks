[title name="&f.gameTile + '｜思い出2' "]
[cm]
[clearfix]
[clearstack]
[start_keyconfig]

; ゲームデータを先に読み込む
[call storage="Plugin/loadingshow.ks" cond="sf.loadData == 'false' "]
[if exp="sf.isLoadSetting == 'false' "]
  [eval exp="sf.isLoadSetting = 'true' "]
[endif]

@showmenubutton
[ChangeBackGround storage="episode2/studioroom.png" time="2000" method="vanishIn"]
[BacklogButton]

[messageTrue]
; 会話パートの読み込み
[call storage="Conversation/episode2.ks" target="*Introduction"]

*StudioRoom
[messageFalse]
[layer1True]
[layer2True]

; 背景
[if exp="f.isHungerGet == -1"]
    ; 天幕降下後
    [ChangeBackGround storage="episode2/studioroom_tentdown.png"]
[else]
    [ChangeBackGround storage="episode2/studioroom.png"]  
[endif]

; 背景パーツ
; ブロック
[if exp="f.isBlueBlockGet == 0 && f.isRedBlockGet == 0 && f.isGreenBlockGet == 0"]
    [image storage="../image/episode2/block.png" layer="1" x="295" y="527" name="block"]
[endif]
; カーテン
[if exp="f.isCurtainGet == -1"]
    [image storage="../image/episode2/curtain.png" layer="1" x="238" y="227" name="curtain"]
[endif]

; クリック判定
; カメラ
[clickJudgment x="860" y="330" width="210" height="160" target="*SearchCamera"]
; 天幕
[if exp="f.isTentDown == 0"]
    [clickJudgment x="770" y="80" width="550" height="40" target="*SearchTent"]
[endif]
; ハンガー
[if exp="f.isHungerGet == 0"]
    [image storage="../image/episode2/hunger.png" layer="1" x="186" y="409" name="hunger"]
    [clickJudgment x="185" y="410" width="100" height="80" target="*GetHunger"]
[endif]
; 紙
[if exp="f.isTentDown == 1"]
    [clickJudgment x="690" y="840" width="110" height="90" target="*SearchPaper"]
[endif]
; メイクボックス
[if exp="f.isPencilGet == 0"]
    [clickJudgment x="1740" y="590" width="150" height="150" target="*SearchMakeBox"]
[endif]
; ブロック
[if exp="f.isBlueBlockGet == 0 && f.isRedBlockGet == 0 && f.isGreenBlockGet == 0"]
    [clickJudgment x="295" y="527" width="100" height="100" target="*GetBlock"]
[endif]
; タンス
[if exp="f.isDressGet == 0 || f.isCurtainGet == 0"]
    [clickJudgment x="1395" y="475" width="50" height="30" target="*SearchChest"]
[endif]
; 簡易着替え場所
[if exp="f.isHungerGet != 0 && f.isCurtainGet != -1 && f.isDressGet != -1"]
    [clickJudgment x="140" y="210" width="135" height="750" target="*SearchFittingRoom"]
[endif]

; アイテムメニュー
[ItemMenuButton]
[s]

*SearchCamera
[layer1False]
[ChangeBackGround storage="episode2/cameramonitor.png" time="1000" method="zoomIn"]
[if exp="f.isTentDown == 1 && f.isDressGet == -1"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #
    思い出2の長会話イベント[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [eval exp="f.isEpisode2Clear = 1"]
    [free layer="1" name="paper"]
    [free layer="1" name="curtain"]
[else]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    天幕と衣装がいるよね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[endif]
; 思い出3へ移動する
[jump storage="Gimmick/episode3.ks" target="*start" cond="f.isTentDown == 1 && f.isDressGet == -1"]

*SearchTent
[if exp="f.isHungerGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    高すぎて届かない、何かないかな？[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[else]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    針金ハンガーでひっぱり出せたよ！[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    ; 何かを下ろす効果音を追加
    [eval exp="f.isHungerGet = -1"]
    [eval exp="f.isTentDown = 1"]
    [eval exp="f.isPaperDown = 1"]
    [JumpStudioRoom]
[endif]

*GetHunger
; アイテムを獲得する効果音を追加
[eval exp="f.isHungerGet = 1"]
[free layer="1" name="hunger"]
[JumpStudioRoom]

*SearchPaper
[if exp="f.isTentDown == 1 && f.isPencilGet == 1"]
    [Freelayer1]
    [ChangeBackGround storage="episode2/papernotletter.png"]
    *SelectItemOfPencil
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUsePencil" target_2="*NotUsePencil" target_3="*UsePencil" target_4="*NotUsePencil" target_5="*NotUsePencil" target_6="*NotUsePencil" target_7="*NotUsePencil"]
        [BackFromEnlargedMap target="*SearchPaper_back"]
    [endif]
    [s]
[elsif exp="f.isTentDown == 1 && f.isPencilGet == -1"]
    [layer1False]
    [ChangeBackGround storage="episode2/paperletter.png"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    何か浮かび上がった！[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[else]
    [layer1False]
    [ChangeBackGround storage="episode2/papernotletter.png"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    何も書かれてないね！[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[endif]

*UsePencil
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfPencil" target_no="*SelectItemOfPencil"]
[s]

*NotUsePencil
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfPencil" target_no="*SelectItemOfPencil"]
[s]

*SearchPaper_back
[cm]
[FreeItemBox]
[JumpStudioRoom]

*ValidItemOfPencil
[FreeItemBox]
[ChangeBackGround storage="episode2/paperletter.png" time="2000" method="fadeIn"]
; ペンで何かを書いている効果音を追加
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
何か浮かび上がった！[p]
[endnolog]
[messageFalse]
[layer3False]
[eval exp="f.isPencilGet = -1"]
[JumpStudioRoom]

*IncorrectItemOfPencil
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpStudioRoom]

*SearchMakeBox
[eval exp="f.isPencilGet = 1"]
[JumpStudioRoom]

*GetBlock
; アイテムを獲得する効果音を追加
[eval exp="f.isBlueBlockGet = 1"]
[eval exp="f.isRedBlockGet = 1"]
[eval exp="f.isGreenBlockGet = 1"]
[free layer="1" name="block"]
[JumpStudioRoom]

*SearchChest
[if exp="f.isKeyOpen == 1"]
    [layer1False]
[endif]
[jump target="*GetDressAndCurtain" cond="f.isKeyOpen == 1"]
[if exp="f.isDressGet == 0 && f.isCurtainGet == 0"]
    ; 判定用変数と配列を宣言
    [eval exp="f.blockColor = '' "]
    [eval exp="f.dimple = ['', '', '' "]]

    [Freelayer1]
    [ChangeBackGround storage="episode2/chest.png"]
    *SelectItemOfBlock
    ; ブロックの配置が正しくない場合はリセットする
    [if exp="f.dimple[0] != '' && f.dimple[1] != '' && f.dimple[2] != '' "]
        [free layer="1" name="blue"]
        [free layer="1" name="red"]
        [free layer="1" name="green"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [eval exp="f.blockColor = '' "]
        [eval exp="f.dimple[0] = '' "]
        [eval exp="f.dimple[1] = '' "]
        [eval exp="f.dimple[2] = '' "]
    [endif]
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseBlock" target_2="*NotUseBlock" target_3="*NotUseBlock" target_4="*UseBlueBlock" target_5="*UseRedBlock" target_6="*UseGreenBlock" target_7="*NotUseBlock"]
        ; 一度はめたブロックを戻すためのクリック判定
        [if exp="f.dimple[0] != '' "]
            [clickJudgment x="495" y="388" width="275" height="300" target="*ReturnLeftSideBlock"]
        [endif]
        [if exp="f.dimple[1] != '' "]
            [clickJudgment x="795" y="388" width="275" height="300" target="*ReturnCenterSideBlock"]
        [endif]
        [if exp="f.dimple[2] != '' "]
            [clickJudgment x="1098" y="388" width="275" height="300" target="*ReturnRightSideBlock"]
        [endif]
        [BackFromEnlargedMap target="*SearchChest_back"]
    [endif]
    [s]
[endif]

*UseBlueBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.blockColor = 'blue' "]
[YesNoButton target_yes="*ValidItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*UseRedBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.blockColor = 'red' "]
[YesNoButton target_yes="*ValidItemOfBlock" target_no="*SelectItemOfBlock"]
[s]

*UseGreenBlock
[messageTrue]
[ConfirmUseItem]
[eval exp="f.blockColor = 'green' "]
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
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[0] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[0] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
[endif]
[eval exp="f.dimple[0] = '' "]
[eval exp="f.blockColor = '' "]
[jump target="*SelectItemOfBlock"]

*ReturnCenterSideBlock
[if exp="f.dimple[1]== 'blue' "]
    [if exp="f.isBlueBlockGet == -1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[1] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[1] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
[endif]
[eval exp="f.dimple[1] = '' "]
[eval exp="f.blockColor = '' "]
[jump target="*SelectItemOfBlock"]

*ReturnRightSideBlock
[if exp="f.dimple[2] == 'blue' "]
    [if exp="f.isBlueBlockGet == -1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [eval exp="f.isBlueBlockGet = 1"]
        [free layer="1" name="blue"]
    [endif]
[endif]
[if exp="f.dimple[2] == 'red' "]
    [if exp="f.isRedBlockGet == -1" ]
        [eval exp="tf.usingItemInventory5 = 1"]
        [eval exp="f.isRedBlockGet = 1"]
        [free layer="1" name="red"]
    [endif]
[endif]
[if exp="f.dimple[2] == 'green' "]
    [if exp="f.isGreenBlockGet == -1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [eval exp="f.isGreenBlockGet = 1"]
        [free layer="1" name="green"]
    [endif]
[endif]
[eval exp="f.dimple[2] = '' "]
[eval exp="f.blockColor = '' "]
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
[if exp="f.blockColor == 'blue' "]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="f.isBlueBlockGet = -1"]
    [free layer="2" name="blueblock"]
[elsif exp="f.blockColor == 'red' "]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="f.isRedBlockGet = -1"]
    [free layer="2" name="redblock"]
[elsif exp="f.blockColor == 'green' "]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="f.isGreenBlockGet = -1"]
    [free layer="2" name="greenblock"]
[endif]
[if exp="f.dimple[0] == '' "]
    [clickJudgment x="495" y="388" width="275" height="300" target="*LeftDimple"]
[endif]
[if exp="f.dimple[1] == '' "]
    [clickJudgment x="795" y="388" width="275" height="300" target="*CenterDimple"]
[endif]
[if exp="f.dimple[2] == '' "]
    [clickJudgment x="1098" y="388" width="275" height="300" target="*RightDimple"]
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
; ブロックをはめる効果音を追加
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="495" y="389" width="278" height="293" name="blue"]
    [eval exp="f.dimple[0] = 'blue' "]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="495" y="389" width="278" height="293" name="red"]
    [eval exp="f.dimple[0] = 'red' "]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="495" y="389" width="278" height="293" name="green"]
    [eval exp="f.dimple[0] = 'green' "]
[endif]
[call target="*OpenChest"]

*CenterDimple
; ブロックをはめる効果音を追加
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="795" y="389" width="278" height="293" name="blue"]
    [eval exp="f.dimple[1] = 'blue' "]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="795" y="389" width="278" height="293" name="red"]
    [eval exp="f.dimple[1] = 'red' "]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="795" y="389" width="278" height="293" name="green"]
    [eval exp="f.dimple[1] = 'green' "]
[endif]
[call target="*OpenChest"]

*RightDimple
; ブロックをはめる効果音を追加
[if exp="f.blockColor == 'blue' "]
    [image storage="../image/episode2/blueblock.png" layer="1" x="1095" y="389" width="278" height="293" name="blue"]
    [eval exp="f.dimple[2] = 'blue' "]
[elsif exp="f.blockColor == 'red' "]
    [image storage="../image/episode2/redblock.png" layer="1" x="1095" y="389" width="278" height="293" name="red"]
    [eval exp="f.dimple[2] = 'red' "]
[elsif exp="f.blockColor == 'green' "]
    [image storage="../image/episode2/greenblock.png" layer="1" x="1095" y="389" width="278" height="293" name="green"]
    [eval exp="f.dimple[2] = 'green' "]
[endif]
[call target="*OpenChest"]

*OpenChest
; チェストのドアを開ける効果音を追加
[if exp="f.dimple[0]== 'red' && f.dimple[1] == 'blue' && f.dimple[2] == 'green' "]
    [FreeItemBox]
    [free layer="1" name="blue"]
    [free layer="1" name="red"]
    [free layer="1" name="green"]
    [eval exp="f.isKeyOpen = 1"]
    *GetDressAndCurtain
    [ChangeBackGround storage="episode2/dressandcurtain.png"]
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
; アイテムを獲得する効果音を追加
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
この衣装ってあれだよね[p]
[endnolog]
[messageFalse]
[layer3False]
[eval exp="f.isDressGet = 1"]
[free layer="1" name="dress"]
[jump target="*GetDressAndCurtain"]

*GetCurtain
; アイテムを獲得する効果音を追加
[eval exp="f.isCurtainGet = 1"]
[free layer="1" name="curtain"]
[jump target="*GetDressAndCurtain"]

*OpenChest_back
[cm]
[JumpStudioRoom]

*SearchFittingRoom
[if exp="f.isCurtainGet == 0 && f.isDressGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    これってカーテンが必要だよね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[elsif exp="f.isCurtainGet == 1 && f.isDressGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    ドレスはここで着替えるんだろうな[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[elsif exp="f.isCurtainGet == 0 && f.isDressGet == 1"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    目隠しなしで着替えるのは恥ずかしいね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpStudioRoom]
[elsif exp="f.isCurtainGet == 1 && f.isDressGet == 1"]
    *SelectItemOfCurtain
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseCurtain" target_2="*NotUseCurtain" target_3="*NotUseCurtain" target_4="*NotUseCurtain" target_5="*UseCurtain" target_6="*NotUseCurtain" target_7="*NotUseCurtain"]
    [endif]
    [s]
[endif]

*UseCurtain
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfCurtain" target_no="*SelectItemOfCurtain"]
[s]

*NotUseCurtain
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfCurtain" target_no="*SelectItemOfCurtain"]
[s]

*ValidItemOfCurtain
[FreeItemBox]
[eval exp="f.isCurtainGet = -1"]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
衣装を着よう！[p]
[endnolog]
[messageFalse]
[layer3False]

[blackout exp="f.isHungerGet == -1" storage_1="episode2/studioroom_tentdown.png" storage_2="episode2/studioroom.png"]

; ごそごそ物音がする効果音を追加
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
衣装に着替えた！[p]
[endnolog]
[messageFalse]
[layer3False]
[eval exp="f.isDressGet = -1"]
[JumpStudioRoom]

*IncorrectItemOfCurtain
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpStudioRoom]