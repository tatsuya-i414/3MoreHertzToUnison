*start
[cm]
[clearfix]
[start_keyconfig]

[bg storage="kari/omoide1_introduction.jpg" time="100"]
[screen_full]

@showmenubutton

; メッセージウィンドウの設定
[position layer="message0" left="160" top="800" width="1600" height="250" page="fore" visible="true"]

; 文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]

; キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size="28" bold="true" x="180" y="810"]

; 上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

; 登場するキャラクターを設定
;[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"]
;[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと"]

; キャラクターの表情登録
;[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
;[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
;[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
;[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;マクロの読み込み
[messageTrue]

#思い出1導入
ステージの隅にあるコンセントと抜けたプラグを差し直す[p]

#思い出1導入
電源が入り、あかりが一部復旧する[p]

*StageRoom
[messageFalse]
[layer1True]
[layer2True]

; 背景
[bg storage="episode1/stageroom.png" time="100"]

; 背景パーツ
; ステージ
[if exp="f.isStageStatusGreen == 1"]
  [image storage="../image/episode1/stage.png" layer="1" x="600" y="170" name="stage"]
[endif]
; ライト
[if exp="f.isLightStatusGreen == 1"]
  [image storage="../image/episode1/light.png" layer="1" x="550" y="170" name="light"]
[endif]
; スピーカー
[if exp="f.isSpeakerStatusGreen == 1"]
  [image storage="../image/episode1/speaker.png" layer="1" x="220" y="110" name="speaker"]
[endif]

; クリック判定
; 制御盤
[if exp="f.isEpisode1Clear == 0"]
  [clickable x="30" y="635" width="120" height="120" target="*SearchControlPanel" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 配線扉
[if exp="f.isStageStatusGreen == 0"]
  [clickable x="1570" y="770" width="100" height="50" target="*SearchWiringDoor" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 道具箱
[if exp="f.isCableGet == 0"]
  [clickable x="1700" y="610" width="200" height="200" target="*SearchToolBox" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ドライバー
[if exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0""]
  [image storage="../image/episode1/driver.png" layer="2" x="770" y="340" name="driver"]
  [clickable x="770" y="360" width="150" height="100" target="*GetDriver" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ライト
[if exp="f.isLightStatusGreen == 0 && f.isUsing == 0"]
  [clickable x="620" y="180" width="100" height="100" target="*SearchLight" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ライトカバー
[if exp="f.isLightCoverGet == 0"]
  [image storage="../image/episode1/lightcover.png" layer="1" x="620" y="790" name="lightcover"]
  [clickable x="620" y="790" width="100" height="100" target="*GetLightCover" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; スピーカー
[if exp="f.isSpeakerStatusGreen == 0 && f.isUsing == 0"]
  [clickable x="290" y="140" width="220" height="270" target="*SearchSpeaker" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

; アイテム一覧
[button graphic="kari/itemmenu_icon.png" storage="itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"]
[s]

*SearchControlPanel
[Freelayer1]
[Freelayer2]
[if exp="f.isStageStatusGreen == 0 || f.isLightStatusGreen == 0 || f.isSpeakerStatusGreen == 0"]
  [bg storage="episode1/controlpane_allred.png" time="100"]
[else]
  [bg storage="episode1/controlpane_allgreen.png" time="100"]
[endif]

; 素材未完成のため、一時的な処理
[if exp="f.isStageStatusGreen == 0 || f.isLightStatusGreen == 0 || f.isSpeakerStatusGreen == 0"]
  [layer3True]
  [if exp="f.isStageStatusGreen == 1"]
    [ptext layer="3" x="1190" y="80" size="40" text="「舞台」は緑に変更済み" color="0x4caf50"]
  [endif]
  [if exp="f.isLightStatusGreen == 1"]
    [ptext layer="3" x="1190" y="280" size="40" text="「ライト」は緑に変更済み" color="0x4caf50"]
  [endif]
  [if exp="f.isSpeakerStatusGreen == 1"]
    [ptext layer="3" x="1190" y="480" size="40" text="「スピーカー」は緑に変更済み" color="0x4caf50"]
  [endif]
[else]
  [layer3False]
[endif]

[clickable x="460" y="725" width="360" height="240" target="*SearchControlPanel_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[clickable x="910" y="1015" width="100" height="50" target="*SearchControlPanel_back" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*SearchControlPanel_Decision
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
  [messageTrue]
  ; 思い出1の会話パートを追加する
  #
  思い出1の会話パート[p]
  [eval exp="f.isMikeGet = 1"]
  [eval exp="f.isEpisode1Clear = 1"]
  ; 素材未完成のため、一時的な処理
  [layer3False]
  ; 思い出2の画面に遷移する

  ; 思い出2未実装のため、一時的な処理
  #
  思い出1クリア[p]
  [JumpStageRoom]
[else]
  [messageTrue]
  #
  この3つを何とかしないといけない[p]
  ; 素材未完成のため、一時的な処理
  [layer3False]
  [JumpStageRoom]
[endif]

*SearchControlPanel_back
; 素材未完成のため、一時的な処理
[layer3False]
[JumpStageRoom]

*SearchWiringDoor
[Freelayer1]
[Freelayer2]
[if exp="f.isUsing == 1"]
  [FreeItemBox]
  [messageFalse]
[endif]
[bg storage="episode1/disconnectedwiring.png" time="100"]
[clickable x="760" y="380" width="350" height="150" target="*SearchWiringDoor_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[clickable x="910" y="1015" width="100" height="50" target="*SearchWiringDoor_back" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*SearchWiringDoor_Decision
[if exp="f.isCableGet == 0"]
  [messageTrue]
  #
  修理をしないといけないね[p]
  [JumpStageRoom]
[else]
  [messageTrue]
  #
  あの配線を使えばいいんじゃない？[p]
  *SelectItemOfCable
  [messageFalse]
  [eval exp="f.isUsing = 1"]
  [if exp="f.isUsing == 1"]
    [ItemBox]
    [if exp="tf.usingItemInventory1 == 1"]
      [clickable x="1770" y="25" width="70"  height="70"  target="*UseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
      [clickable x="1770" y="100" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
      [clickable x="1770" y="175" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
      [clickable x="1770" y="250" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
      [clickable x="1770" y="325" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
      [clickable x="1770" y="400" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
      [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [clickable x="910" y="1015" width="100" height="50" target="*SearchWiringDoor_back" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
[endif]
[s]

*UseCable
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*ValidItemOfCable" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SearchWiringDoor" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseCable
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*IncorrectItemOfCable" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SearchWiringDoor" width="200" x="550" y="930" text="いいえ"]
[s]

*SearchWiringDoor_back
[FreeItemBox]
[JumpStageRoom]

*ValidItemOfCable
[FreeItemBox]
[eval exp="f.isCableGet = -1"]
[layer="2" name="cable"]
#
先ほど手に入れた配線でちぎれた配線を直す[p]
[bg storage="episode1/connectedwiring.png" time="100"]
; 舞台がせり上がる効果音
[eval exp="f.isStageStatusGreen = 1"]
; 制御盤の「舞台」の欄が緑になったことを知らせる効果音
#
クリアしたね[p]
[JumpStageRoom]

*IncorrectItemOfCable
[FreeItemBox]
#
このアイテムは違うようだ。[p]
[jump target="*SelectItemOfCable"]

*SearchToolBox
[Freelayer1]
[Freelayer2]
[if exp="f.leftNum != 4 && f.centerNum != 5 && f.rightNum != 6"]
  [bg storage="episode1/dial.png" time="100"]
  [clickable x="910" y="1015" width="100" height="50" target="*SearchToolBox_back" opacity="30" mouseopacity="50" color="0x505050"]
  [button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
  [button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
  [button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
[else]
  [call target="*DialUnlock"]
[endif]
[s]

*SearchToolBox_back
[iscript]
  delete f.leftNum;
  delete f.centerNum;
  delete f.rightNum;
[endscript]
[clearfix]
[JumpStageRoom]

*LeftDialTurn
[if exp="f.leftNum == 0"]
  [eval exp="f.leftNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 1" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 1"]
  [eval exp="f.leftNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 2" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 2"]
  [eval exp="f.leftNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 3" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 3"]
  [eval exp="f.leftNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 4" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 4"]
  [eval exp="f.leftNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 5" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 5"]
  [eval exp="f.leftNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 6" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 6"]
  [eval exp="f.leftNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 7" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 7"]
  [eval exp="f.leftNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 8" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 8"]
  [eval exp="f.leftNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 9" fix="true" target="*LeftDialTurn"]
[elsif exp="f.leftNum == 9"]
  [eval exp="f.leftNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="f.leftNum = 0" fix="true" target="*LeftDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*CenterDialTurn
[if exp="f.centerNum == 0"]
  [eval exp="f.centerNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 1" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 1"]
  [eval exp="f.centerNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 2" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 2"]
  [eval exp="f.centerNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 3" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 3"]
  [eval exp="f.centerNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 4" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 4"]
  [eval exp="f.centerNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 5" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 5"]
  [eval exp="f.centerNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 6" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 6"]
  [eval exp="f.centerNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 7" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 7"]
  [eval exp="f.centerNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 8" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 8"]
  [eval exp="f.centerNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 9" fix="true" target="*CenterDialTurn"]
[elsif exp="f.centerNum == 9"]
  [eval exp="f.centerNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="f.centerNum = 0" fix="true" target="*CenterDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*RightDialTurn
[if exp="f.rightNum == 0"]
  [eval exp="f.rightNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 1" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 1"]
  [eval exp="f.rightNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 2" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 2"]
  [eval exp="f.rightNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 3" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 3"]
  [eval exp="f.rightNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 4" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 4"]
  [eval exp="f.rightNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 5" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 5"]
  [eval exp="f.rightNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 6" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 6"]
  [eval exp="f.rightNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 7" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 7"]
  [eval exp="f.rightNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 8" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 8"]
  [eval exp="f.rightNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 9" fix="true" target="*RightDialTurn"]
[elsif exp="f.rightNum == 9"]
  [eval exp="f.rightNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="f.rightNum = 0" fix="true" target="*RightDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*DialUnlock
[if exp="f.leftNum == 4 && f.centerNum == 5 && f.rightNum == 6"]
  [clearfix]
  ; アイテムボタンを再度表示する
  [button graphic="kari/itemmenu_icon.png" storage="itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"] 
  [bg storage="episode1/cable.png" time="100"]
  [clickable x="820" y="390" width="300" height="300" target="*GetCable" opacity="30" mouseopacity="50" color="0x505050"]
  [clickable x="910" y="1015" width="100" height="50" target="*DialUnlock_back" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

[return]

*GetCable
[iscript]
  delete f.leftNum;
  delete f.centerNum;
  delete f.rightNum;
[endscript]
[eval exp="f.isCableGet = 1"]
[JumpStageRoom]

*DialUnlock_back
[clearfix]
[JumpStageRoom]

*GetDriver
[eval exp="f.isDriverGet = 1"]
[free layer="2" name="driver"]
[JumpStageRoom]

*SearchLight
[if exp="f.isStageStatusGreen == 0"]
  [messageTrue]
  #
  高すぎて調べられないね[p]
  [JumpStageRoom]
[elsif exp="f.isStageStatusGreen == 1"]
  [messageTrue]
  #
  舞台が上がったおかげで調べられるね！[p]
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
    [if exp="tf.usingItemInventory1 == 1"]
      [clickable x="1770" y="25" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
      [clickable x="1770" y="100" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
      [clickable x="1770" y="175" width="70"  height="70"  target="*UseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
      [clickable x="1770" y="250" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
      [clickable x="1770" y="325" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
      [clickable x="1770" y="400" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
      [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
  [endif]
  [JumpStageRoom]
[endif]

*UseLightCover
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*ValidItemOfLightCover" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfLightCover" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseLightCover
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*IncorrectItemOfLightCover" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfLightCover" width="200" x="550" y="930" text="いいえ"]
[s]

*ValidItemOfLightCover
[FreeItemBox]
[eval exp="f.isLightCoverGet = -1"]
[free layer="2" name="lightcover"]
[messageTrue]
#
先ほど手に入れたライトカバーをライトにはめる[p]
[eval exp="f.isLightStatusGreen = 1"]
; 制御盤の「照明」の欄が緑になったことを知らせる効果音
#
クリアしたね[p]
[JumpStageRoom]

*IncorrectItemOfLightCover
[FreeItemBox]
[messageTrue]
#
このアイテムは違うようだ。[p]
[jump target="*SelectItemOfLightCover"]

*GetLightCover
[eval exp="f.isLightCoverGet = 1"]
[free layer="1" name="lightcover"]
[JumpStageRoom]

*SearchSpeaker
[if exp="f.isDriverGet == 0"]
  [messageTrue]
  #
  ネジが緩んでいるみたいだね[p]
  [JumpStageRoom]
[elsif exp="f.isDriverGet == 1"]
  [messageTrue]
  #
  さっきの道具が使えないかな[p]
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
    [if exp="tf.usingItemInventory1 == 1"]
      [clickable x="1770" y="25" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
      [clickable x="1770" y="100" width="70"  height="70"  target="*UseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
      [clickable x="1770" y="175" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
      [clickable x="1770" y="250" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
      [clickable x="1770" y="325" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
      [clickable x="1770" y="400" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
      [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseDriver" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
  [endif]
  [JumpStageRoom]
[endif]

*UseDriver
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*ValidItemOfDriver" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfDriver" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseDriver
[messageTrue]
[ConfirmUseItem]
[glink color="btn_29_red" target="*IncorrectItemOfDriver" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfDriver" width="200" x="550" y="930" text="いいえ"]
[s]

*ValidItemOfDriver
[FreeItemBox]
[messageTrue]
#
先ほど手に入れたドライバーを使用してスピーカーの傾きを直す[p]
; 背景を変更する
[eval exp="f.isSpeakerStatusGreen = 1"]
; 制御盤の「スピーカー」の欄が緑になったことを知らせる効果音
#
クリアしたね[p]
[JumpStageRoom]

*IncorrectItemOfDriver
[FreeItemBox]
[messageTrue]
#
このアイテムは違うようだ。[p]
[jump target="*SelectItemOfDriver"]