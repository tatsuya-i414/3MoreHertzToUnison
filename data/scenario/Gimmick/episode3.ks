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
[if exp="f.isJacketGet != -1"]
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
[s]

*SearchBed
[if exp="tf.selectOfSleeporNot == 'true' "]
    [call storage="Conversation/episode3/episode3_08.ks" target="*SelectSleepOrNot"]
    [glink color="bth06" storage="Conversation/episode3/episode3_08.ks" target="*Sleep" width="180" x="240" y="960" size="24" text="一緒に寝る" clickse="../sound/se/decision.m4a"]
    [glink color="bth06" storage="Conversation/episode3/episode3_08.ks" target="*NotSleep" width="180" x="570" y="960" size="24" text="もう少し待って！" clickse="../sound/se/cancel.m4a"]
    [s]
[endif]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_08.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[else]
    [if exp="f.isFutonGet == 1"]
        [iscript]
            f.isFutonGet = -1
            tf.usingItemInventory4 = 0
            tf.selectOfSleeporNot = 'true'
        [endscript]
    [endif]
[endif]
[if exp="f.isClickedBed_first == 'true' "]
    [iscript]
        f.isClickedBed_first = 'false'
    [endscript]
[endif]
[JumpBedRoom]

*TurnOffTheLightAndSleep
[iscript]
    f.isFutonGet = -1
    delete tf.selectOfSleeporNot
[endscript]
[messageFalse]

; 画像を削除する
; シナリオ_思い出3終盤
[if exp="f.scn_skip == 0 && sf.scn_episode3ED_Skip == 'false' "]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisode3_EdBGM]
    [endif]
    [messageTrue]
    [call storage="Conversation/episode3/episode3_ed.ks"]
    [messageFalse]
    [autostop]
    [cancelskip]
[endif]
[iscript]
    f.isYoukanGet = 1
    f.isEpisode3Clear = 1
[endscript]

; シナリオ_エンディング
[if exp="f.scn_skip == 0 && sf.scn_episodeED_Skip == 'false' "]
    [ControlButtons]
    ; 隠し要素を全て回収している場合はTrueEndへの分岐が現れる
    ; 隠し要素を全て回収していない場合は選択肢自体が表示されず、強制的にNormalEndに突入する
    [if exp="f.episode1_Secret == 'true' && f.episode1_Secret == 'true' && f.episode1_Secret == 'true' "]
        [messageTrue]
        *SelecteRoute
        [autostop]
        [cancelskip]
        [call storage="Conversation/ending/episode_true_ed.ks" target="*SelecteRoute"]
        [autostop]
        [cancelskip]
        [glink color="bth06" storage="Conversation/ending/episode_true_ed.ks" target="*ConveyYourThoughts" width="280" x="240" y="960" size="24" text="勇気を出して思いを伝える" clickse="../sound/se/decision.m4a"]
        [glink color="bth06" storage="Conversation/ending/episode_true_ed.ks" target="*Worry" width="280" x="670" y="960" size="24" text="伝えるか悩む" clickse="../sound/se/cancel.m4a"]
        [s]
        *ReSelection_Convey
        [autostop]
        [cancelskip]
        [YesNoButton target_yes="*SelectedOfTrueRoute" target_no="*SelecteRoute"]
        [s]
        *ReSelection_Worry
        [autostop]
        [cancelskip]
        [YesNoButton target_yes="*SelectedOfNormalRoute" target_no="*SelecteRoute"]
        [s]
        ; TrueEndルート
        *SelectedOfTrueRoute
        [messageFalse]
        [iscript]
            f.selectedEDRoute = 'True'
        [endscript]
        [FadeoutBGM]
        [if exp="f.isPlayingBGM == 'false' "]
            [PlayEpisodeTrueEdBGM]
        [endif]
        [messageTrue]
        [autostop]
        [cancelskip]
        [call storage="Conversation/ending/episode_true_ed.ks" target="*TrueEndRoute"]
    [else]
        ; NormalEndルート
        *SelectedOfNormalRoute
        [messageFalse]
        [iscript]
            f.selectedEDRoute = 'Normal'
        [endscript]
        [FadeoutBGM]
        [if exp="f.isPlayingBGM == 'false' "]
            [PlayEpisodeNormalEdBGM]
        [endif]
        [messageTrue]
        [autostop]
        [cancelskip]
        [call storage="Conversation/ending/episode_normal_ed.ks"]
    [endif]
    [messageFalse]
    [autostop]
    [cancelskip]
[endif]
[FadeoutBGM]
; スチル未完成のため基準背景を仮配置
[blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]

; シナリオ_エピローグ
[if exp="f.scn_skip == 0 && sf.scn_episodeEP_Skip == 'false' "]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.selectedEDRoute == 'True' "]
        [PlayEpisodeTrueEpBGM]
    [else]
        [PlayEpisodeNormalEpBGM]
    [endif]
    [messageTrue]
    ; TrueEndルート
    [if exp="f.selectedEDRoute == 'True' "]
        [call storage="Conversation/epilogue/episode_true_ep.ks"]
    ; NormalEndルート
    [else]
        [call storage="Conversation/epilogue/episode_normal_ep.ks"]
    [endif]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[FadeoutBGM]
; スチル未完成のため基準背景を仮配置
[blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
; 画面がゆっくりと白くなっていく（2～3秒ほど）
; エンドクレジットへ
[s]

*SearchBox
[FreeImagesWhenSwitching]
[jump target="*InsideOfBox" cond="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/boxkey.png" storage_night="episode3/boxkey_night.png"]
[if exp="f.scn_skip == 0 && f.isCompassGet != -1"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_04.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
    [if exp="f.isClickedBox_first == 'true' "]
        [iscript]
            f.isClickedBox_first = 'false'
        [endscript]
    [endif]
[endif]
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
[if exp="f.scn_skip == 0"]
    [call storage="Conversation/episode3/episode3_04.ks" target="*UseCompass"]
[endif]
[iscript]
    f.isCompassGet = -1
    // 押下したボタンの順番を記録する配列を宣言
    f.arrayElementsCount = 0
    f.buttonPushOrder = []
[endscript]
[JumpBedRoom]

*IncorrectItemOfCompass
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [call storage="Conversation/episode3/episode3_04.ks" target="*NotUseCompass"]
[endif]
[JumpBedRoom]

*PushTopButton
[PlayArrowButtonClick]
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'N'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushUnderButton
[PlayArrowButtonClick]
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'S'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushLeftButton
[PlayArrowButtonClick]
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'W'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushRightButton
[PlayArrowButtonClick]
[if exp="f.arrayElementsCount <= 4"]
    [iscript]
        f.buttonPushOrder[f.arrayElementsCount] = 'E'
        f.arrayElementsCount = f.arrayElementsCount + 1
    [endscript]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*BoxUnlock
[wait time="200"]
[if exp="f.arrayElementsCount == 5"]
    [if exp="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
        [if exp="f.scn_skip == 0"]
            [ControlButtons]
            [messageTrue]
            [nolog]
            [call storage="Conversation/episode3/episode3_04.ks" target="*UnlockKey"]
            [endnolog]
            [messageFalse]
            [autostop]
            [cancelskip]
            [clearfix]
            [MenuButton]
        [endif]
        [free layer="1" name="compass_set"]
        *InsideOfBox
        [if exp="tf.boxUnlock == 'true' "]
            [PlayOpenBox]
            [wait time="200"]
        [endif]
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
        ; ベッドの初回クリックフラグをリセットする
        [if exp="f.isClickedBed_first == 'false' "]
            [iscript]
                f.isClickedBed_first = 'true'
            [endscript]
        [endif]
        [iscript]
            delete f.arrayElementsCount;
            delete f.buttonPushOrder;
            delete tf.boxUnlock;
        [endscript]
        [JumpBedRoom]
    [else]
        [if exp="f.scn_skip == 0"]
            [ControlButtons]
            [messageTrue]
            [nolog]
            [call storage="Conversation/episode3/episode3_04.ks" target="*NotUnlockKey"]
            [endnolog]
            [messageFalse]
            [autostop]
            [cancelskip]
            [clearfix]
            [MenuButton]
        [endif]
        [iscript]
            // 押下したボタンの順番を初期化
            f.arrayElementsCount = 0
            f.buttonPushOrder = []
        [endscript]
    [endif]
[endif]
[jump target="*PushBoxKeyButton" cond="f.buttonPushOrder[0] != 'N' && f.buttonPushOrder[1] != 'W' && f.buttonPushOrder[2] != 'E' && f.buttonPushOrder[3] != 'N' && f.buttonPushOrder[4] != 'S' "]
[return]

*BoxUnlock_back
[cm]
[iscript]
    tf.boxUnlock = 'true'
[endscript]
[JumpBedRoom]

*GetCompass
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_01.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[PlayGetItem]
[iscript]
    f.isCompassGet = 1
[endscript]
[JumpBedRoom]

*SearchPoster
[FreeImagesWhenSwitching]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/poster.png" storage_night="episode3/poster_night.png"]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_02.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
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
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_03.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
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
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_05.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[iscript]
    f.isJacketGet = 1 
[endscript]
[free layer="1" name="jacket"]
[MenuButton]
[JumpBedRoom]

*SearchHanger
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_06.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[if exp="f.isClickedHanger_first == 'true' "]
    [iscript]
        f.isClickedHanger_first = 'false'
    [endscript]
[endif]
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
[YesNoButton target_yes="*ValidItemOfJacket" storage_no="Conversation/episode3/episode3_06.ks" target_no="*NotUseHanger"]
[s]

*NotUseJacket
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfJacket" storage_no="Conversation/episode3/episode3_06.ks" target_no="*NotUseHanger"]
[s]

*ValidItemOfJacket
[FreeItemBox]
[free layer="1" name="wallhanger_onhanger"]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_06.ks" target="*UseHanger"]
    [endnolog]
[else]
    [messageFalse]
    [iscript]
        f.itemVisible[0] = 'true'
        f.itemVisible[1] = 'episode3_jacket'
    [endscript]
    [blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
[endif]
[iscript]
    f.isJacketGet = -1   
[endscript]
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
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode3/episode3_07.ks"]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[if exp="f.isClickedSwitch_first == 'true' "]
    [iscript]
        f.isClickedSwitch_first = 'false'
    [endscript]
[endif]
[JumpBedRoom]