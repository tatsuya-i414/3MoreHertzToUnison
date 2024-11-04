[cm]
[clearfix]
[clearstack]
[start_keyconfig]

[if exp="sf.scn_episodeOP_Skip == 'true' "]
    [FadeoutBGM]
[endif]

; シナリオ_導入パート
[if exp="f.scn_skip == 0 && sf.scn_episodeOP_Skip == 'false' "]
    [blackout exp="f.scn_skip == 0" storage_1="episode1/omoide1_introduction.jpg" storage_2="share/top.png"]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisodeOpBGM]
    [endif]
    [messageTrue]
    [call storage="Conversation/episode_op.ks"]
    [messageFalse]
[endif]

[if exp="sf.scn_episode1OP_Skip == 'true' "]
    [FadeoutBGM]
[endif]

; シナリオ_思い出1序盤
[if exp="f.scn_skip == 0 && sf.scn_episode1OP_Skip == 'false' && f.scn_episode1_OP == 'false' "]
    [cm]
    [iscript]
        f.itemVisible[0] = 'true'
        f.itemVisible[1] = 'episode1'
    [endscript]
    [blackout exp="f.scn_skip == 0" storage_1="episode1/stageroom.png" storage_2="episode1/omoide1_introduction.jpg"]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisode1_OpBGM]
    [endif]
    [messageTrue]
    [call storage="Conversation/episode1/episode1_op.ks"]
    [iscript]
        f.scn_episode1_OP = 'true'
        f.itemVisible[0] = 'false'
    [endscript]
    [clearfix]
    [messageFalse]
    [MenuButton]
    [ItemMenuButton]
    [FadeoutBGM]
    [JumpStageRoom]
[endif]

*StageRoom
[clearfix]
[messageFalse]
[layer1True]
[layer2True]
[MenuButton]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayEpisode1BGM]
[endif]

; 背景
[if exp="f.isStageStatusGreen == 1"]
    ; ステージせり上がり後
    [ChangeBackGround storage="episode1/stageroom_stagerise.png"]
[else]
    [ChangeBackGround storage="episode1/stageroom.png"]
[endif]

; 背景パーツ
; ライト
[if exp="f.isLightStatusGreen == 1"]
    [image storage="../image/episode1/lightcover_mount.png" layer="1" x="695" y="20" name="light"]
[endif]
; スピーカー
[if exp="f.isSpeakerStatusGreen == 1"]
    [image storage="../image/episode1/speaker_afterrepair.png" layer="1" x="1" y="125" name="speaker"]
[else]
    [image storage="../image/episode1/speaker_beforerepair.png" layer="1" x="1" y="110" name="speaker"]
[endif]

; クリック判定
; 制御盤
[if exp="f.isEpisode1Clear == 0 && f.isUsing == 0"]
    [clickJudgment x="210" y="530" width="150" height="130" target="*SearchControlPanel"]
[endif]
; 配線扉
[if exp="f.isStageStatusGreen == 0"]
    [clickJudgment x="1640" y="990" width="155" height="90" target="*SearchWiringDoor"]
[endif]
; 道具箱
[if exp="f.isCableGet == 0"]
    [clickJudgment x="1630" y="630" width="165" height="130" target="*SearchToolBox"]
[endif]
; ドライバー
[if exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0 && f.isUsing == 0"]
    [image storage="../image/episode1/driver_stage.png" layer="2" x="740" y="520" name="driver"]
    [clickJudgment x="740" y="520" width="185" height="50" target="*GetDriver"]
[endif]
; ライト
[if exp="f.isLightStatusGreen == 0 && f.isUsing == 0"]
    [clickJudgment x="733" y="40" width="60" height="60" target="*SearchLight"]
[endif]
; ライトカバー
[if exp="f.isLightCoverGet == 0 && f.isUsing == 0"]
    [image storage="../image/episode1/lightcover_item.png" layer="1" x="450" y="770" name="lightcover"]
    [clickJudgment x="440" y="770" width="150" height="150" target="*GetLightCover"]
[endif]
; スピーカー
[if exp="f.isSpeakerStatusGreen == 0 && f.isUsing == 0"]
    [clickJudgment x="20" y="120" width="220" height="320" target="*SearchSpeaker"]
[endif]

; アイテムメニュー
[ItemMenuButton]
[s]

*SearchControlPanel
[Freelayer1]
[Freelayer2]
[ChangeBackGround  storage="episode1/controlpanel.png"]

; ボタン
[clickJudgment target="*SearchControlPanel_Decision" x="700" y="810" width="170" height="140"]
[image storage="../image/episode1/controlpanel/controlpanel_button_push.png" layer="1" x="690" y="800" name="controlpanel_button"]

; 準備完了ランプ
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_complete.png" layer="1" x="950" y="850" name="controlpanel_lamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_incomplete.png" layer="1" x="950" y="850" name="controlpanel_lamp"]
[endif]

; ランプ（赤or緑）
[if exp="f.isStageStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="840" y="245" name="stage_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="840" y="245" name="stage_greenlamp"]
[endif]
[if exp="f.isLightStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="840" y="335" name="light_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="840" y="335" name="light_greenlamp"]
[endif]
[if exp="f.isSpeakerStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="840" y="425" name="speaker_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="840" y="425" name="speaker_greenlamp"]
[endif]

; 戻るボタン
[BackFromEnlargedMap target="*SearchControlPanel_back"]
[s]

*SearchControlPanel_Decision
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_01.ks"]
    [endnolog]
    [layer3False]
    [messageFalse]
    [cancelskip]
    [MenuButton]
[endif]
[if exp="f.isClickedControlPanel_first == 'true' "]
    [iscript]
        f.isClickedControlPanel_first = 'false'
    [endscript]
[endif]
; 画像を削除する
[free layer="1" name="controlpanel_button"]
[free layer="1" name="controlpanel_lamp"]
[free layer="1" name="stage_greenlamp"]
[free layer="1" name="stage_redlamp"]
[free layer="1" name="light_greenlamp"]
[free layer="1" name="light_redlamp"]
[free layer="1" name="speaker_greenlamp"]
[free layer="1" name="speaker_redlamp"]
; シナリオ_思い出1終盤
[if exp="f.scn_skip == 0 && sf.scn_episode1ED_Skip == 'false' "]
    [ControlButtons]
    [FadeoutBGM fadeoutTime="500" waitTime="500"]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisode1_EdBGM]
    [endif]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_ed.ks"]
    [endnolog]
    [layer3False]
    [cancelskip]
    [ItemMenuButton]
    [MenuButton]
[endif]
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isMikeGet = 1
    [endscript]
[endif]
; 思い出2へ移動する
[jump storage="Gimmick/episode2.ks" cond="f.isEpisode1Clear == 1"]
[JumpStageRoom]

*SearchControlPanel_back
; 画像を削除する
[free layer="1" name="controlpanel_button"]
[free layer="1" name="controlpanel_lamp"]
[free layer="1" name="stage_greenlamp"]
[free layer="1" name="stage_redlamp"]
[free layer="1" name="light_greenlamp"]
[free layer="1" name="light_redlamp"]
[free layer="1" name="speaker_greenlamp"]
[free layer="1" name="speaker_redlamp"]
[cm]
[JumpStageRoom]

*SearchWiringDoor
[Freelayer1]
[Freelayer2]
[PlayOpenDoor]
[if exp="f.isUsing == 1"]
    [FreeItemBox]
    [messageFalse]
[endif]
[ChangeBackGround storage="episode1/disconnectedwiring.png"]
[clickJudgment width="1920" height="1080" target="*SearchWiringDoor_Decision"]
; 戻るボタン
[BackFromEnlargedMap target="*SearchWiringDoor_back"]
[s]

*SearchWiringDoor_Decision
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_02.ks"]
    [endnolog]
    [layer3False]
    [messageFalse]
    [clearfix cond="f.isCableGet == 1"]
    [MenuButton]
[endif]
[if exp="f.isClickedWiringDoor_first == 'true' "]
    [iscript]
        f.isClickedWiringDoor_first = 'false'
    [endscript]
[endif]
[ItemMenuButton cond="f.isCableGet == 1"]
[JumpStageRoom cond="f.isCableGet == 0"]
*SelectItemOfCable
[messageFalse]
[iscript]
    f.isUsing = 1
[endscript]
[if exp="f.isUsing == 1"]
    [ItemBox]
    [SelectItemClickable target_1="*NotUseCable" target_2="*UseCable" target_3="*NotUseCable" target_4="*NotUseCable" target_5="*NotUseCable" target_6="*NotUseCable" target_7="*NotUseCable"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchWiringDoor_back"]
[endif]
[s]

*UseCable
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfCable" storage_no="Conversation/episode1/episode1_02.ks" target_no="*NotUseCable"]
[s]

*NotUseCable
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfCable" storage_no="Conversation/episode1/episode1_02.ks" target_no="*NotUseCable"]
[s]

*SearchWiringDoor_back
[cm]
[FreeItemBox]
[JumpStageRoom]

*ValidItemOfCable
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_02.ks" target="*UseCable"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
[endif]
[iscript]
    f.isCableGet = -1
    f.isStageStatusGreen = 1
[endscript]
[free layer="2" name="cable"]
; ライトの初回クリックフラグをリセットする
[if exp="f.isClickedLight_first == 'false' "]
    [iscript]
        f.isClickedLight_first = 'true'
    [endscript]
[endif]
[JumpStageRoom]

*IncorrectItemOfCable
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpStageRoom]

*SearchToolBox
[clearstack]
[Freelayer1]
[Freelayer2]
[if exp="f.leftNum != 4 && f.centerNum != 5 && f.rightNum != 6"]
    [ChangeBackGround storage="episode1/dial.png"]
    ; ダイヤル（画像で表示）
    [image storage="../image/episode1/dial/dialnumber_0.png" layer="1" x="440" y="400" width="200" height="400" name="leftdial"]
    [image storage="../image/episode1/dial/dialnumber_0.png" layer="1" x="850" y="400" width="200" height="400" name="centerdial"]
    [image storage="../image/episode1/dial/dialnumber_0.png" layer="1" x="1250" y="400" width="200" height="400" name="rightdial"]
    [if exp="f.scn_skip == 0"]
        [ControlButtons]
        [layer3True]
        [ShowNormalSakuraAndMiyuki]
        [messageTrue]
        [nolog]
        [call storage="Conversation/episode1/episode1_04.ks"]
        [endnolog]
        [messageFalse]
        [layer3False]
        [cancelskip]
        [clearfix]
        [ItemMenuButton]
        [MenuButton]
    [endif]
    [if exp="f.isClickedToolBox_first == 'true' "]
        [iscript]
            f.isClickedToolBox_first = 'false'
        [endscript]
    [endif]
    [free layer="1" name="leftdial"]
    [free layer="1" name="centerdial"]
    [free layer="1" name="rightdial"]
    ; ダイヤル（ボタンで表示）
    [button graphic="episode1/dial/dialnumber_0.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
    [button graphic="episode1/dial/dialnumber_0.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
    [button graphic="episode1/dial/dialnumber_0.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchToolBox_back"]
[endif]
[call target="*DialUnlock" cond="f.leftNum == 4 && f.centerNum == 5 && f.rightNum == 6"]
[s]

*SearchToolBox_back
[iscript]
    delete f.leftNum;
    delete f.centerNum;
    delete f.rightNum;
[endscript]
[cm]
[clearfix]
[JumpStageRoom]

*LeftDialTurn
[if exp="f.leftNum == 0"]
    [iscript]
        f.leftNum = 1
    [endscript]
    [button graphic="episode1/dial/dialnumber_1.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 1" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 1"]
    [iscript]
        f.leftNum = 2
    [endscript]
    [button graphic="episode1/dial/dialnumber_2.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 2" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 2"]
    [iscript]
        f.leftNum = 3
    [endscript]
    [button graphic="episode1/dial/dialnumber_3.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 3" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 3"]
    [iscript]
        f.leftNum = 4
    [endscript]
    [button graphic="episode1/dial/dialnumber_4.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 4" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 4"]
    [iscript]
        f.leftNum = 5
    [endscript]
    [button graphic="episode1/dial/dialnumber_5.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 5" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 5"]
    [iscript]
        f.leftNum = 6
    [endscript]
    [button graphic="episode1/dial/dialnumber_6.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 6" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 6"]
    [iscript]
        f.leftNum = 7
    [endscript]
    [button graphic="episode1/dial/dialnumber_7.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 7" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 7"]
    [iscript]
        f.leftNum = 8
    [endscript]
    [button graphic="episode1/dial/dialnumber_8.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 8" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 8"]
    [iscript]
        f.leftNum = 9
    [endscript]
    [button graphic="episode1/dial/dialnumber_9.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 9" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 9"]
    [iscript]
        f.leftNum = 0
    [endscript]
    [button graphic="episode1/dial/dialnumber_0.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
[endif]
[PlayTurnDial]
[call target="*DialUnlock"]
[return]

*CenterDialTurn
[if exp="f.centerNum == 0"]
    [iscript]
        f.centerNum = 1
    [endscript]
    [button graphic="episode1/dial/dialnumber_1.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 1" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 1"]
    [iscript]
        f.centerNum = 2
    [endscript]
    [button graphic="episode1/dial/dialnumber_2.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 2" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 2"]
    [iscript]
        f.centerNum = 3
    [endscript]
    [button graphic="episode1/dial/dialnumber_3.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 3" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 3"]
    [iscript]
        f.centerNum = 4
    [endscript]
    [button graphic="episode1/dial/dialnumber_4.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 4" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 4"]
    [iscript]
        f.centerNum = 5
    [endscript]
    [button graphic="episode1/dial/dialnumber_5.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 5" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 5"]
    [iscript]
        f.centerNum = 6
    [endscript]
    [button graphic="episode1/dial/dialnumber_6.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 6" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 6"]
    [iscript]
        f.centerNum = 7
    [endscript]
    [button graphic="episode1/dial/dialnumber_7.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 7" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 7"]
    [iscript]
        f.centerNum = 8
    [endscript]
    [button graphic="episode1/dial/dialnumber_8.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 8" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 8"]
    [iscript]
        f.centerNum = 9
    [endscript]
    [button graphic="episode1/dial/dialnumber_9.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 9" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 9"]
    [iscript]
       f.centerNum = 0 
    [endscript]
    [button graphic="episode1/dial/dialnumber_0.png" x="860" y="400" width="200" height="400" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
[endif]
[PlayTurnDial]
[call target="*DialUnlock"]
[return]

*RightDialTurn
[if exp="f.rightNum == 0"]
    [iscript]
        f.rightNum = 1
    [endscript]
    [button graphic="episode1/dial/dialnumber_1.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 1" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 1"]
    [iscript]
        f.rightNum = 2
    [endscript]
    [button graphic="episode1/dial/dialnumber_2.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 2" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 2"]
    [iscript]
        f.rightNum = 3
    [endscript]
    [button graphic="episode1/dial/dialnumber_3.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 3" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 3"]
    [iscript]
        f.rightNum = 4
    [endscript]
    [button graphic="episode1/dial/dialnumber_4.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 4" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 4"]
    [iscript]
        f.rightNum = 5
    [endscript]
    [button graphic="episode1/dial/dialnumber_5.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 5" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 5"]
    [iscript]
        f.rightNum = 6
    [endscript]
    [button graphic="episode1/dial/dialnumber_6.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 6" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 6"]
    [iscript]
        f.rightNum = 7
    [endscript]
    [button graphic="episode1/dial/dialnumber_7.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 7" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 7"]
    [iscript]
        f.rightNum = 8
    [endscript]
    [button graphic="episode1/dial/dialnumber_8.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 8" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 8"]
    [iscript]
        f.rightNum =9
    [endscript]
    [button graphic="episode1/dial/dialnumber_9.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 9" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 9"]
    [iscript]
        f.rightNum = 0
    [endscript]
    [button graphic="episode1/dial/dialnumber_0.png" x="1270" y="400" width="200" height="400" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
[endif]
[PlayTurnDial]
[call target="*DialUnlock"]
[return]

*DialUnlock
[if exp="f.leftNum == 4 && f.centerNum == 5 && f.rightNum == 6"]
    [wait time="100"]
    [if exp="tf.dialUnlock != 'true' "]
        [PlayUnlockKey]
        [wait time="500"]
    [endif]
    [PlayOpenBox]
    [wait time="1000"]
    [clearfix]
    ; アイテムメニューボタンを再度表示する
    [ItemMenuButton]
    [ChangeBackGround storage="episode1/cablebundle.png"]
    [image storage="../image/episode1/cable.png" layer="1" x="500" y="115" width="800" height="800" name="cable"]
    [clickJudgment x="500" y="115" width="800" height="800" target="*GetCable"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*DialUnlock_back"]
[endif]
[return]

*GetCable
[free layer="1" name="cable"]
[PlayGetItem]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_04.ks"]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[if exp="f.isClickedToolBox_first == 'true' "]
    [iscript]
        f.isClickedToolBox_first = 'false'
    [endscript]
[endif]
[iscript]
    f.isCableGet = 1
[endscript]
[iscript]
    delete f.leftNum;
    delete f.centerNum;
    delete f.rightNum;
    delete tf.dialUnlock;
[endscript]
; 制御盤の初回クリックフラグをリセットする
[if exp="f.isClickedWiringDoor_first == 'false' "]
    [iscript]
        f.isClickedWiringDoor_first = 'true'
    [endscript]
[endif]
[JumpStageRoom]

*DialUnlock_back
[cm]
[clearfix]
[iscript]
    tf.dialUnlock = 'true'
[endscript]
[free layer="1" name="cable"]
[JumpStageRoom]

*GetDriver
[PlayGetItem]
[iscript]
    f.isDriverGet = 1
[endscript]
[free layer="2" name="driver"]
[JumpStageRoom]

*SearchLight
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_05.ks"]
    [endnolog]
    [layer3False]
[endif]
[if exp="f.isClickedLight_first == 'true' "]
    [iscript]
        f.isClickedLight_first = 'false'
    [endscript]
[endif]
[if exp="f.isStageStatusGreen == 0 || f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
    [JumpStageRoom]
[elsif exp="f.isStageStatusGreen == 1"]
    *SelectItemOfLightCover
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
        [SelectItemClickable target_1="*NotUseLightCover" target_2="*NotUseLightCover" target_3="*UseLightCover" target_4="*NotUseLightCover" target_5="*NotUseLightCover" target_6="*NotUseLightCover" target_7="*NotUseLightCover"]
    [endif]
    [JumpStageRoom]
[endif]

*UseLightCover
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfLightCover" storage_no="Conversation/episode1/episode1_05.ks" target_no="*NotUseLightCover"]
[s]

*NotUseLightCover
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfLightCover" storage_no="Conversation/episode1/episode1_05.ks" target_no="*NotUseLightCover"]
[s]

*ValidItemOfLightCover
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_05.ks" target="*UseLightCover"]
    [endnolog]
    [layer3False]
[endif]
[if exp="f.isClickedLight_first == 'true' "]
    [iscript]
        f.isClickedLight_first = 'false'
    [endscript]
[endif]
[iscript]
    f.isLightCoverGet = -1
[endscript]
[free layer="2" name="lightcover"]
[iscript]
    f.isLightStatusGreen = 1
[endscript]
[JumpStageRoom]

*IncorrectItemOfLightCover
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpStageRoom]

*GetLightCover
[PlayGetItem]
[iscript]
    f.isLightCoverGet = 1
[endscript]
[free layer="1" name="lightcover"]
; ライトの初回クリックフラグをリセットする
[if exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1"]
    [iscript]
        f.isClickedLight_first = 'true'
    [endscript]
[endif]
[JumpStageRoom]

*SearchSpeaker
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_03.ks"]
    [endnolog]
    [layer3False]
[endif]
[if exp="f.isClickedSpeaker_first == 'true' "]
    [iscript]
        f.isClickedSpeaker_first = 'false'
    [endscript]
[endif]
[JumpStageRoom cond="f.isDriverGet == 0"]
*SelectItemOfDriver
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
    [SelectItemClickable target_1="*UseDriver" target_2="*NotUseDriver" target_3="*NotUseDriver" target_4="*NotUseDriver" target_5="*NotUseDriver" target_6="*NotUseDriver" target_7="*NotUseDriver"]
[endif]
[JumpStageRoom]

*UseDriver
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfDriver" storage_no="Conversation/episode1/episode1_03.ks" target_no="*NotUseDriver"]
[s]

*NotUseDriver
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfDriver" storage_no="Conversation/episode1/episode1_03.ks" target_no="*NotUseDriver"]
[s]

*ValidItemOfDriver
[FreeItemBox]
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    [call storage="Conversation/episode1/episode1_03.ks" target="*UseDriver"]
    [endnolog]
    [layer3False]
[endif]
[iscript]
    f.isSpeakerStatusGreen = 1
[endscript]
[free layer="1" name="speaker"]
[JumpStageRoom]

*IncorrectItemOfDriver
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpStageRoom]