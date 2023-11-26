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
; 背景
[if exp="f.isStageStatusGreen == 0"]
  [bg storage="episode1/stageroom.png" time="100"]
[elsif exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0"]
  [bg storage="episode1/stageroom_stagerise_withdriver.png" time="100"]
[elsif exp="f.isStageStatusGreen == 1 && f.isDriverGet == 1"]
  [bg storage="episode1/stageroom_stagerise_driverget.png" time="100"]
[endif]

; クリック判定
; 制御盤
[clickable x="30" y="635" width="120" height="120" target="*ControlPanel" opacity="30" mouseopacity="50" color="0x505050"]
; 配線扉
[if exp="f.isStageStatusGreen == 0"]
  [clickable x="1570" y="770" width="100" height="50" target="*WiringDoor" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 道具箱
[if exp="f.isCableGet == 0"]
  [clickable x="1700" y="610" width="200" height="200" target="*ToolBox" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ドライバー
[if exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0""]
  [clickable x="770" y="410" width="150" height="100" target="*GetDriver" vopacity="30" mouseopacity="50" color="0x505050"]
[endif]

; アイテム欄
[layer1True]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="25"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="100"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="175"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="250"]

; アイテム画像
[layer2True]
[if exp="f.isCableGet == 1"]
  [image storage="../image/kari/cable.png" layer="2" x="1770" y="25" visible="true"]
[endif]
[if exp="f.isDriverGet == 1"]
  [image storage="../image/kari/driver.png" layer="2" x="1770" y="100" visible="true"]
[endif]
[s]

*ControlPanel
[bg storage="episode1/controlpane_allred.png" time="100"]
; 素材未完成のため、一時的な処理
[layer3True]
[if exp="f.isStageStatusGreen == 1"]
  [ptext layer="3" x="1190" y="80" size="40" text="「舞台」は緑に変更済み" color="0x4caf50" name="test"]
[endif]

[clickable x="460" y="725" width="360" height="240" target="*ControlPanel_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[clickable x="910" y="1015" width="100" height="50" target="*ControlPanel_back" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*ControlPanel_Decision
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
  [messageTrue]
  #
  クリア後の処理[p]
  [jump target="*StageRoom"]
[else]
  [messageTrue]
  #
  この3つを何とかしないといけない[p]
  [layer3False]
  [jump target="*StageRoom"]
[endif]

*ControlPanel_back
[layer3False]
[jump target="*StageRoom"]

*WiringDoor
[bg storage="episode1/disconnectedwiring.png" time="100"]
[clickable x="760" y="380" width="350" height="150" target="*WiringDoor_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*WiringDoor_Decision
[if exp="f.isCableGet == 0"]
  [messageTrue]
  #
  修理をしないといけないね[p]
  [jump target="*StageRoom"]
[else]
  [messageTrue]
  #
  あの配線を使えばいいんじゃない？[p]
  #
  先ほど手に入れた配線でちぎれた配線を直す[p]
  [bg storage="episode1/connectedwiring.png" time="100"]
  ; 舞台がせり上がる効果音
  [eval exp="f.isStageStatusGreen = 1"]
  ; 制御盤の「舞台」の欄が緑になったことを知らせる効果音
  #
  クリアしたね[p]
  [jump target="*StageRoom"]
[endif]

*ToolBox
[bg storage="episode1/dial.png" time="100"]
[button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 0" fix="true" target="*LeftDialTurn"]
[button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 0" fix="true" target="*CenterDialTurn"]
[button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 0" fix="true" target="*RightDialTurn"]
[s]

*LeftDialTurn
[if exp="tf.leftNum == 0"]
  [eval exp="tf.leftNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 1" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 1"]
  [eval exp="tf.leftNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 2" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 2"]
  [eval exp="tf.leftNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 3" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 3"]
  [eval exp="tf.leftNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 4" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 4"]
  [eval exp="tf.leftNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 5" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 5"]
  [eval exp="tf.leftNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 6" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 6"]
  [eval exp="tf.leftNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 7" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 7"]
  [eval exp="tf.leftNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 8" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 8"]
  [eval exp="tf.leftNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 9" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 9"]
  [eval exp="tf.leftNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 0" fix="true" target="*LeftDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*CenterDialTurn
[if exp="tf.centerNum == 0"]
  [eval exp="tf.centerNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 1" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 1"]
  [eval exp="tf.centerNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 2" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 2"]
  [eval exp="tf.centerNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 3" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 3"]
  [eval exp="tf.centerNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 4" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 4"]
  [eval exp="tf.centerNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 5" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 5"]
  [eval exp="tf.centerNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 6" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 6"]
  [eval exp="tf.centerNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 7" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 7"]
  [eval exp="tf.centerNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 8" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 8"]
  [eval exp="tf.centerNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 9" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 9"]
  [eval exp="tf.centerNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 0" fix="true" target="*CenterDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*RightDialTurn
[if exp="tf.rightNum == 0"]
  [eval exp="tf.rightNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 1" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 1"]
  [eval exp="tf.rightNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 2" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 2"]
  [eval exp="tf.rightNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 3" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 3"]
  [eval exp="tf.rightNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 4" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 4"]
  [eval exp="tf.rightNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 5" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 5"]
  [eval exp="tf.rightNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 6" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 6"]
  [eval exp="tf.rightNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 7" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 7"]
  [eval exp="tf.rightNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 8" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 8"]
  [eval exp="tf.rightNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 9" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 9"]
  [eval exp="tf.rightNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 0" fix="true" target="*RightDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*DialUnlock
[if exp="tf.leftNum == 4 && tf.centerNum == 5 && tf.rightNum == 6"]
  [iscript] 
    delete tf.leftNum;
    delete tf.centerNum;
    delete tf.rightNum;
  [endscript]

  [clearfix]
  [bg storage="episode1/cable.png" time="100"]
  [clickable x="820" y="390" width="300" height="300" target="*GetCable" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

[return]

*GetCable
[eval exp="f.isCableGet = 1"]
[jump target="*StageRoom"]

*GetDriver
[eval exp="f.isDriverGet = 1"]
[jump target="*StageRoom"]