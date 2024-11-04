[cm]
[clearfix]
[clearstack]
[start_keyconfig]

[if exp="sf.scn_episode3OP_Skip == 'true' "]
    [FadeoutBGM]
[endif]

; シナリオ_思い出3序盤
[if exp="f.scn_skip == 0 && sf.scn_episode3OP_Skip == 'false' && f.scn_episode3_OP == 'false' "]
    [cm]
    [iscript]
        f.itemVisible[0] = 'true'
        f.itemVisible[1] = 'episode3'
    [endscript]
    [if exp="f.isRoomLightNight == 0"]
        [blackout exp="f.isEpisode2Clear == 1" storage_1="episode3/bedroom.png" storage_2="episode2/studioroom.png"]
    [else]
        [blackout exp="f.isEpisode2Clear == 1" storage_1="episode3/bedroom_night.png" storage_2="episode2/studioroom.png"]
    [endif]
    [ControlButtons]
    [FadeoutBGM]
    [PlayEpisode3_OpBGM]
    [messageTrue]
    [call storage="Conversation/episode3/episode3_op.ks"]
    [iscript]
        f.scn_episode3_OP = 'true'
        f.itemVisible[0] = 'false'
    [endscript]
    [clearfix]
    [messageFalse]
    [MenuButton]
    [ItemMenuButton]
    [FadeoutBGM]
    [JumpBedRoom]
[endif]

*BedRoom
[clearfix]
[messageFalse]
[layer1True]
[layer2True]
[MenuButton]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayEpisode3BGM]
[endif]

; 背景
[if exp="f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/bedroom.png"]
[else]
    [ChangeBackGround storage="episode3/bedroom_night.png"]
[endif]

; 背景パーツ
; ジャケット
[if exp="f.isJacketGet == 0"]
    [image storage="../image/episode3/jacket.png" layer="1" x="1150" y="750" name="jacket"]
[endif]
; ハンガー
[if exp="f.isJacketGet == -1 && f.isRoomLightNight == 0"]
    [image storage="../image/episode3/wallhanger_onjacket.png" layer="1" x="1427" y="90" name="wallhanger_onjacket"]
[elsif exp="f.isJacketGet == -1 && f.isRoomLightNight == 1"]
    [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
[else]
    [image storage="../image/episode3/wallhanger_onhanger.png" layer="1" x="1414" y="111" name="wallhanger_onhanger"]
[endif]
; 絨毯
[if exp="f.isJutanOpen == 1"]
    [image storage="../image/episode3/jutan_turnedup.png" layer="1" x="585" y="908" name="jutan_turndup"]
    [if exp="f.isRoomLightNight == 1"]
        [image storage="../image/episode3/mark_underjutan.png" layer="1" x="1175" y="915" name="mark"]
    [endif]
[else]
    [image storage="../image/episode3/jutan.png" layer="1" x="585" y="908" name="jutan"]
[endif]

; クリック判定
; ベッド
[if exp="f.isUsing == 0"]
    [clickJudgment x="340" y="440" width="350" height="80" target="*SearchBed"]
[endif]
; 収納ボックス
[if exp="f.isFutonGet == 0 && f.isUsing == 0"]
    [clickJudgment x="275" y="705" width="315" height="178" target="*SearchBox"]
[endif]
; 鞄（コンパス）
[if exp="f.isCompassGet == 0 && f.isUsing == 0"]
    [clickJudgment x="720" y="640" width="160" height="225" target="*GetCompass"]
[endif]
; 張り紙
[if exp="f.isUsing == 0"]
    [clickJudgment x="502" y="166" width="145" height="198" target="*SearchPoster"]
[endif]
; 帽子
[if exp="f.isUsing == 0"]
    [clickJudgment x="1060" y="545" width="125" height="80" target="*SearchHat"]
[endif]
; ジャケット
[if exp="f.isJacketGet == 0"]
    [clickJudgment x="1160" y="760" width="130" height="130" target="*GetJacket"]
[endif]
; 備え付けハンガー
[if exp="f.isJacketGet == 1"]
    [clickJudgment x="1500" y="210" width="160" height="120" target="*SearchHanger"]
[endif]
; 絨毯
[if exp="f.isUsing == 0"]
    [clickJudgment x="1115" y="910" width="300" height="140" target="*SearchJutan"]
[endif]
; 昼夜切り替えスイッチ
[if exp="f.isUsing == 0"]
    [clickJudgment x="1810" y="413" width="65" height="130" target="*SearchRoomLight"]
[endif]

; アイテムメニュー
[ItemMenuButton]
[s]

*SearchBed
[if exp="f.isFutonGet == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    布団がいるね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    明るくて眠れないよ[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 1"]
    [if exp="f.scn_skip == 0"]
        [ControlButtons]
        [FadeoutBGM]
        ; 思い出3終盤のBGM再生
        [layer3True]
        [ShowNormalSakuraAndMiyuki]
        [messageTrue]
        [nolog]
        #深雪と桜良
        思い出3のエンドイベント[p]
        [endnolog]
        [messageFalse]
        [layer3False]
    [endif]
    [iscript]
        f.isFutonGet = -1
        f.isYoukanGet = 1
        f.isEpisode3Clear = 1
    [endscript]
    [clearfix]
    [MenuButton]
    [s]
[endif]

*SearchBox
[FreeImagesWhenSwitching]
[jump target="*InsideOfBox" cond="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/boxkey.png" storage_night="episode3/boxkey_night.png"]
[if exp="f.isCompassGet == 1"]
    *SelectItemOfCompass
    [messageFalse]
    [iscript]
        f.isUsing = 1
    [endscript]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseCompass" target_2="*UseCompass" target_3="*NotUseCompass" target_4="*NotUseCompass" target_5="*NotUseCompass" target_6="*NotUseCompass" target_7="*NotUseCompass"]
        ; 戻るボタン
        [BackFromEnlargedMap target="*SearchBox_back"]
    [endif]
    [s]
[elsif exp="f.isCompassGet == -1"]
    *PushBoxKeyButton
    [image storage="../image/episode3/compass.png" layer="1" x="797" y="399" name="compass_set"]
    ; 上矢印ボタン
    [clickJudgment x="870" y="210" width="130" height="120" target="*PushTopButton"]
    ; 下矢印ボタン
    [clickJudgment x="870" y="780" width="130" height="110" target="*PushUnderButton"]
    ; 左矢印ボタン
    [clickJudgment x="595" y="475" width="95" height="155" target="*PushLeftButton"]
    ; 右矢印ボタン
    [clickJudgment x="1165" y="480" width="95" height="155" target="*PushRightButton"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchBox_back"]
    [s]
[else]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    ボタン押せないね、何かはめられそう[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
    [JumpBedRoom]
[endif]

*UseCompass
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfCompass" target_no="*SelectItemOfCompass"]
[s]

*NotUseCompass
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfCompass" target_no="*SelectItemOfCompass"]
[s]

*SearchBox_back
[cm]
[FreeItemBox]
[free layer="1" name="compass_set"]
[iscript]
    // 押下したボタンの順番を初期化
    f.arrayElementsCount = 0
    f.buttonPushOrder = []
[endscript]
[JumpBedRoom]

*ValidItemOfCompass
[FreeItemBox]
[messageFalse]
[iscript]
    f.isCompassGet = -1
    // コンパスをはめこむ効果音を追加
    // 押下したボタンの順番を記録する配列を宣言
    f.arrayElementsCount = 0
    f.buttonPushOrder = []
[endscript]
[jump target="*PushBoxKeyButton"]
[s]

*IncorrectItemOfCompass
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpBedRoom]

*PushTopButton
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'N'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushUnderButton
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'S'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushLeftButton
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'W'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushRightButton
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'E'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*BoxUnlock
[if exp="f.arrayElementsCount == 5"]
    ; ジャケットをハンガーに掛ける前に布団を獲得できないようにする例外処理
    [if exp="f.isJacketGet != -1"]
        [ControlButtons]
        [messageTrue]
        [nolog]
        #
        開錠することができないようだ[p]
        [endnolog]
        [messageFalse]
        [iscript]
            // 押下したボタンの順番を初期化
            f.arrayElementsCount = 0
            f.buttonPushOrder = []
        [endscript]
        [free layer="1" name="compass_set"]
        [MenuButton]
        [JumpBedRoom]
    [endif]
    [if exp="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
        [free layer="1" name="compass_set"]
        ; 開錠する時の効果音を追加
        *InsideOfBox
        [ChangeBackGroundOfEpisode3 storage_noon="episode3/futon_inbox.png" storage_night="episode3/futon_inbox_night.png"]
        [clickJudgment width="1920" height="1080" target="*GetFuton"]
        ; 戻るボタン
        [BackFromEnlargedMap target="*BoxUnlock_back"]
        [s]
        *GetFuton
        [PlayGetItem]
        [iscript]
            f.isFutonGet = 1
        [endscript]
        [free layer="1" name="compass_set"]
        [iscript]
            delete f.arrayElementsCount;
            delete f.buttonPushOrder;
        [endscript]
        [JumpBedRoom]
    [else]
        [ControlButtons]
        [messageTrue]
        [nolog]
        #
        ボタンを押す順番が違うようだ[p]
        [endnolog]
        [messageFalse]
        [iscript]
            // 押下したボタンの順番を初期化
            f.arrayElementsCount = 0
            f.buttonPushOrder = []
        [endscript]
        [MenuButton]
    [endif]
[endif]
[jump target="*PushBoxKeyButton" cond="f.buttonPushOrder[0] != 'N' && f.buttonPushOrder[1] != 'W' && f.buttonPushOrder[2] != 'E' && f.buttonPushOrder[3] != 'N' && f.buttonPushOrder[4] != 'S' "]
[return]

*BoxUnlock_back
[cm]
[JumpBedRoom]

*GetCompass
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_01.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[iscript]
    f.isCompassGet = 1
[endscript]
[JumpBedRoom]

*SearchPoster
[FreeImagesWhenSwitching]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/poster.png" storage_night="episode3/poster_night.png"]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_02.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[if exp="f.isClickedPoster_first == 'true' "]
    [iscript]
        f.isClickedPoster_first = 'false'
    [endscript]
[endif]
; 戻るボタン
[BackFromEnlargedMap target="*SearchPoster_back"]
[s]

*SearchPoster_back
[cm]
[JumpBedRoom]

*SearchHat
[FreeImagesWhenSwitching]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/hat.png" storage_night="episode3/hat_night.png"]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_03.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[if exp="f.isClickedHat_first == 'true' "]
    [iscript]
        f.isClickedHat_first = 'false'
    [endscript]
[endif]
; 戻るボタン
[BackFromEnlargedMap target="*SearchHat_back"]
[s]

*SearchHat_back
[cm]
[JumpBedRoom]

*GetJacket
[PlayGetItem]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_05.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[iscript]
    f.isJacketGet = 1 
[endscript]
[free layer="1" name="jacket"]
[MenuButton]
[JumpBedRoom]

*SearchHanger
[if exp="f.isJacketGet == 1"]
    *SelectItemOfJacket
    [messageFalse]
    [if exp="f.isUsing == 0"]
        [iscript]
            f.isUsing = 1
        [endscript]
    [else]
        [iscript]
            f.isUsing = 0
        [endscript]
        [FreeItemBox]
    [endif]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseJacket" target_2="*NotUseJacket" target_3="*UseJacket" target_4="*NotUseJacket" target_5="*NotUseJacket" target_6="*NotUseJacket" target_7="*NotUseJacket"]
    [endif]
    [JumpBedRoom]
[else]
    [JumpBedRoom]
[endif]

*UseJacket
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfJacket" target_no="*SelectItemOfJacket"]
[s]

*NotUseJacket
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfJacket" target_no="*SelectItemOfJacket"]
[s]

*ValidItemOfJacket
[FreeItemBox]
[messageFalse]
[free layer="1" name="wallhanger_onhanger"]
[iscript]
    f.isJacketGet = -1   
[endscript]
[free layer="1" name="jacket"]
[blackout exp="f.isJacketGet = -1" storage_1="episode3/bedroom.png" storage_2="episode3/bedroom.png"]
[JumpBedRoom]

*IncorrectItemOfJacket
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpBedRoom]

*SearchJutan
[PlayTurnOver]
[if exp="f.isJutanOpen == 0"]
    [iscript]
        f.isJutanOpen = 1
    [endscript]
    [free layer="1" name="jutan"]
[elsif exp="f.isJutanOpen == 1"]
    [iscript]
        f.isJutanOpen = 0
    [endscript]
    [free layer="1" name="jutan_turndup"]
    [free layer="1" name="mark"]
[endif]
[JumpBedRoom]

*SearchRoomLight
[PlaySwitching]
[if exp="f.isRoomLightNight == 0"]
    [iscript]
        f.isRoomLightNight = 1
    [endscript]
    [free layer="1" name="wallhanger_onjacket"]
[elsif exp="f.isRoomLightNight == 1"]
    [iscript]
        f.isRoomLightNight = 0
    [endscript]
    [free layer="1" name="wallhanger_onjacket_night"]
    [free layer="1" name="mark"]
[endif]
[if exp="f.scn_skip == 0 && f.isClickedSwitch_first == 'true' "]
    ; 背景とパーツの画像を夜Ver.に変更
    [ChangeBackGround storage="episode3/bedroom_night.png"]
    [if exp="f.isJacketGet == -1"]
        [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
    [endif]
    [if exp="f.isJutanOpen == 1"]
        [image storage="../image/episode3/jutan_turnedup.png" layer="1" x="585" y="908" name="jutan_turndup"]
        [image storage="../image/episode3/mark_underjutan.png" layer="1" x="1175" y="915" name="mark"]
    [endif]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_07.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[if exp="f.isClickedSwitch_first == 'true' "]
    [iscript]
        f.isClickedSwitch_first = 'false'
    [endscript]
[endif]
[JumpBedRoom]