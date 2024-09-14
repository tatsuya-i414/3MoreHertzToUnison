[title name="&f.gameTitle + '｜思い出1' "]
[cm]
[clearfix]
[clearstack]
[start_keyconfig]

; シナリオ_導入パート
[if exp="f.scn_skip == 0"]
    [blackout exp="f.scn_skip == 0" storage_1="episode1/omoide1_introduction.jpg" storage_2="share/top.png"]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisodeOpBGM]
    [endif]
    [messageTrue]
    [call storage="Conversation/episode_op.ks"]
[else]
    [FadeoutBGM]
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

; シナリオ_思い出1序盤
[if exp="f.scn_skip == 0 && f.scn_episode1_OP == 'false' "]
    [cm]
    [eval exp="f.itemVisible[0] = 'true' "]
    [eval exp="f.itemVisible[1] = 'episode1' "]
    [blackout exp="f.scn_skip == 0" storage_1="episode1/stageroom.png" storage_2="episode1/omoide1_introduction.jpg"]
    [ControlButtons]
    [FadeoutBGM]
    [if exp="f.isPlayingBGM == 'false' "]
        [PlayEpisode1_OpBGM]
    [endif]
    [messageTrue]
    [call storage="Conversation/episode1/episode1_op.ks"]
    [eval exp="f.scn_episode1_OP = 'true' "]
    [eval exp="f.itemVisible[0] = 'false' "]
    [clearfix]
    [messageFalse]
    [MenuButton]
    [ItemMenuButton]
    [FadeoutBGM]
    [jump target="*StageRoom"]
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
    [image storage="../image/episode1/lightcover_mount.png" layer="1" x="670" y="20" name="light"]
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
    [clickJudgment x="200" y="530" width="140" height="130" target="*SearchControlPanel"]
[endif]
; 配線扉
[if exp="f.isStageStatusGreen == 0"]
    [clickJudgment x="1590" y="990" width="150" height="90" target="*SearchWiringDoor"]
[endif]
; 道具箱
[if exp="f.isCableGet == 0"]
    [clickJudgment x="1580" y="630" width="160" height="130" target="*SearchToolBox"]
[endif]
; ドライバー
[if exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0 && f.isUsing == 0"]
    [image storage="../image/episode1/driver_stage.png" layer="2" x="740" y="520" name="driver"]
    [clickJudgment x="740" y="520" width="185" height="50" target="*GetDriver"]
[endif]
; ライト
[if exp="f.isLightStatusGreen == 0 && f.isUsing == 0"]
    [clickJudgment x="710" y="40" width="60" height="60" target="*SearchLight"]
[endif]
; ライトカバー
[if exp="f.isLightCoverGet == 0 && f.isUsing == 0"]
    [image storage="../image/episode1/lightcover_item.png" layer="1" x="450" y="770" name="lightcover"]
    [clickJudgment x="450" y="770" width="150" height="150" target="*GetLightCover"]
[endif]
; スピーカー
[if exp="f.isSpeakerStatusGreen == 0 && f.isUsing == 0"]
    [clickJudgment x="10" y="120" width="220" height="320" target="*SearchSpeaker"]
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
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="780" y="245" name="stage_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="780" y="245" name="stage_greenlamp"]
[endif]
[if exp="f.isLightStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="780" y="335" name="light_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="780" y="335" name="light_greenlamp"]
[endif]
[if exp="f.isSpeakerStatusGreen == 1"]
    [image storage="../image/episode1/controlpanel/controlpanel_green_lamp.png" layer="1" x="780" y="425" name="speaker_redlamp"]
[else]
    [image storage="../image/episode1/controlpanel/controlpanel_red_lamp.png" layer="1" x="780" y="425" name="speaker_greenlamp"]
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
    [eval exp="f.isClickedControlPanel_first = 'false' "]
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
[if exp="f.scn_skip == 0"]
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
[eval exp="f.isEpisode1Clear = 1" cond="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
    [eval exp="f.isMikeGet = 1"]
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
[clickJudgment x="575" y="485" width="745" height="105" target="*SearchWiringDoor_Decision"]
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
    [eval exp="f.isClickedWiringDoor_first = 'false' "]
[endif]
[ItemMenuButton cond="f.isCableGet == 1"]
[JumpStageRoom cond="f.isCableGet == 0"]
*SelectItemOfCable
[messageFalse]
[eval exp="f.isUsing = 1"]
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
[eval exp="f.isCableGet = -1"]
[eval exp="f.isStageStatusGreen = 1"]
[free layer="2" name="cable"]
; ライトの初回クリックフラグをリセットする
[if exp="f.isClickedLight_first == 'false' "]
    [eval exp="f.isClickedLight_first = 'true' "]
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
        [eval exp="f.isClickedToolBox_first = 'false' "]
    [endif]
    [free layer="1" name="leftdial"]
    [free layer="1" name="centerdial"]
    [free layer="1" name="rightdial"]
    ; ダイヤル（ボタンで表示）
    [button graphic="episode1/dial/dialnumber_0.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
    [button graphic="episode1/dial/dialnumber_0.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
    [button graphic="episode1/dial/dialnumber_0.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
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
    [eval exp="f.leftNum = 1"]
    [button graphic="episode1/dial/dialnumber_1.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 1" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 1"]
    [eval exp="f.leftNum = 2"]
    [button graphic="episode1/dial/dialnumber_2.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 2" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 2"]
    [eval exp="f.leftNum = 3"]
    [button graphic="episode1/dial/dialnumber_3.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 3" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 3"]
    [eval exp="f.leftNum = 4"]
    [button graphic="episode1/dial/dialnumber_4.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 4" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 4"]
    [eval exp="f.leftNum = 5"]
    [button graphic="episode1/dial/dialnumber_5.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 5" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 5"]
    [eval exp="f.leftNum = 6"]
    [button graphic="episode1/dial/dialnumber_6.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 6" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 6"]
    [eval exp="f.leftNum = 7"]
    [button graphic="episode1/dial/dialnumber_7.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 7" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 7"]
    [eval exp="f.leftNum = 8"]
    [button graphic="episode1/dial/dialnumber_8.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 8" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 8"]
    [eval exp="f.leftNum = 9"]
    [button graphic="episode1/dial/dialnumber_9.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 9" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 9"]
    [eval exp="f.leftNum = 0"]
    [button graphic="episode1/dial/dialnumber_0.png" x="440" y="400" width="200" height="400" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
[endif]
[PlayTurnDial]
[call target="*DialUnlock"]
[return]

*CenterDialTurn
[if exp="f.centerNum == 0"]
    [eval exp="f.centerNum = 1"]
    [button graphic="episode1/dial/dialnumber_1.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 1" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 1"]
    [eval exp="f.centerNum = 2"]
    [button graphic="episode1/dial/dialnumber_2.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 2" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 2"]
    [eval exp="f.centerNum = 3"]
    [button graphic="episode1/dial/dialnumber_3.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 3" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 3"]
    [eval exp="f.centerNum = 4"]
    [button graphic="episode1/dial/dialnumber_4.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 4" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 4"]
    [eval exp="f.centerNum = 5"]
    [button graphic="episode1/dial/dialnumber_5.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 5" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 5"]
    [eval exp="f.centerNum = 6"]
    [button graphic="episode1/dial/dialnumber_6.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 6" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 6"]
    [eval exp="f.centerNum = 7"]
    [button graphic="episode1/dial/dialnumber_7.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 7" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 7"]
    [eval exp="f.centerNum = 8"]
    [button graphic="episode1/dial/dialnumber_8.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 8" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 8"]
    [eval exp="f.centerNum = 9"]
    [button graphic="episode1/dial/dialnumber_9.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 9" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 9"]
    [eval exp="f.centerNum = 0"]
    [button graphic="episode1/dial/dialnumber_0.png" x="850" y="400" width="200" height="400" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
[endif]
[PlayTurnDial]
[call target="*DialUnlock"]
[return]

*RightDialTurn
[if exp="f.rightNum == 0"]
    [eval exp="f.rightNum = 1"]
    [button graphic="episode1/dial/dialnumber_1.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 1" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 1"]
    [eval exp="f.rightNum = 2"]
    [button graphic="episode1/dial/dialnumber_2.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 2" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 2"]
    [eval exp="f.rightNum = 3"]
    [button graphic="episode1/dial/dialnumber_3.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 3" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 3"]
    [eval exp="f.rightNum = 4"]
    [button graphic="episode1/dial/dialnumber_4.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 4" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 4"]
    [eval exp="f.rightNum = 5"]
    [button graphic="episode1/dial/dialnumber_5.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 5" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 5"]
    [eval exp="f.rightNum = 6"]
    [button graphic="episode1/dial/dialnumber_6.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 6" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 6"]
    [eval exp="f.rightNum = 7"]
    [button graphic="episode1/dial/dialnumber_7.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 7" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 7"]
    [eval exp="f.rightNum = 8"]
    [button graphic="episode1/dial/dialnumber_8.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 8" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 8"]
    [eval exp="f.rightNum = 9"]
    [button graphic="episode1/dial/dialnumber_9.png" x="1250" y="400" width="200" height="400" exp="f.rightNum = 9" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 9"]
    [eval exp="f.rightNum = 0"]
    [button graphic="episode1/dial/dialnumber_0.png" x="1250" y="40 0" width="200" height="400" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
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
    [eval exp="f.isClickedToolBox_first = 'false' "]
[endif]
[eval exp="f.isCableGet = 1"]
[iscript]
    delete f.leftNum;
    delete f.centerNum;
    delete f.rightNum;
    delete tf.dialUnlock;
[endscript]
; 制御盤の初回クリックフラグをリセットする
[if exp="f.isClickedWiringDoor_first == 'false' "]
    [eval exp="f.isClickedWiringDoor_first = 'true' "]
[endif]
[JumpStageRoom]

*DialUnlock_back
[cm]
[clearfix]
[eval exp="tf.dialUnlock = 'true' "]
[free layer="1" name="cable"]
[JumpStageRoom]

*GetDriver
[PlayGetItem]
[eval exp="f.isDriverGet = 1"]
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
    [eval exp="f.isClickedLight_first = 'false' "]
[endif]
[if exp="f.isStageStatusGreen == 0 || f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
    [JumpStageRoom]
[elsif exp="f.isStageStatusGreen == 1"]
    *SelectItemOfLightCover
    [messageFalse]
    [if exp="f.isUsing == 0"]
        [eval exp="f.isUsing = 1"]
    [else]
        [eval exp="f.isUsing = 0"]
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
    [eval exp="f.isClickedLight_first = 'false' "]
[endif]
[eval exp="f.isLightCoverGet = -1"]
[free layer="2" name="lightcover"]
[eval exp="f.isLightStatusGreen = 1"]
[JumpStageRoom]

*IncorrectItemOfLightCover
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpStageRoom]

*GetLightCover
[PlayGetItem]
[eval exp="f.isLightCoverGet = 1"]
[free layer="1" name="lightcover"]
; ライトの初回クリックフラグをリセットする
[if exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1"]
    [eval exp="f.isClickedLight_first = 'true' "]
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
    [eval exp="f.isClickedSpeaker_first = 'false' "]
[endif]
[JumpStageRoom cond="f.isDriverGet == 0"]
*SelectItemOfDriver
[messageFalse]
[if exp="f.isUsing == 0"]
    [eval exp="f.isUsing = 1"]
[else]
    [eval exp="f.isUsing = 0"]
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
[eval exp="f.isSpeakerStatusGreen = 1"]
[free layer="1" name="speaker"]
[JumpStageRoom]

*IncorrectItemOfDriver
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpStageRoom]