*ItemMenu
[cm]
[messageFalse]
[clearfix]
[Freelayer1]
[Freelayer2]
[Freelayer3]
[FreeItemBox]

[layer1True]
[layer2True]

[bg storage="kari/itemmenu.jpg" time="100"]
[button graphic="config/c_btn_back.png" target="*Scenario_Back" x="1680" y="40"]

; 通常アイテム
[image storage="../image/kari/inventory.png" layer="1" x="160" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="310" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="460" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="610" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="760" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="910" y="350" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="1060" y="350" width="140" height="140"]

; 特別アイテム
[image storage="../image/kari/inventory.png" layer="1" x="160" y="680" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="310" y="680" width="140" height="140"]
[image storage="../image/kari/inventory.png" layer="1" x="460" y="680" width="140" height="140"]

; アイテム画像
; 通常アイテム
[layer2True]
[if exp="f.isCableGet == 1"]
    [eval exp="tf.usingItemInventory2 = 1"]
    [image storage="../image/episode1/cable.png" layer="2" x="310" y="350" width="140" height="140" visible="true" name="cable"]
[endif]
[if exp="f.isDriverGet == 1"]
    [eval exp="tf.usingItemInventory1 = 1"]
    [image storage="../image/episode1/driver_item.png" layer="2" x="160" y="350" width="140" height="140" visible="true" name="driver"]
[endif]
[if exp="f.isLightCoverGet == 1"]
    [eval exp="tf.usingItemInventory3 = 1"]
    [image storage="../image/episode1/lightcover_item.png" layer="2" x="460" y="350" width="140" height="140" visible="true" name="lightcover"]
[endif]
[if exp="f.isHungerGet == 1"]
    [eval exp="tf.usingItemInventory2 = 1"]
    [image storage="../image/episode2/hunger.png" layer="2" x="310" y="350" width="140" height="140" visible="true" name="hunger"]
[endif]
[if exp="f.isPencilGet == 1"]
    [eval exp="tf.usingItemInventory3 = 1"]
    [image storage="../image/kari/pencil.png" layer="2" x="460" y="350" width="140" height="140" visible="true" name="pencil"]
[endif]
[if exp="f.isBlueBlockGet== 1"]
    [eval exp="tf.usingItemInventory4 = 1"]
    [image storage="../image/kari/blueblock.png" layer="2" x="610" y="350" width="140" height="140" visible="true" name="blueblock"]
[endif]
[if exp="f.isRedBlockGet == 1"]
    [eval exp="tf.usingItemInventory5 = 1"]
    [image storage="../image/kari/redblock.png" layer="2" x="760" y="350" width="140" height="140" visible="true" name="redblock"]
[endif]
[if exp="f.isGreenBlockGet == 1"]
    [eval exp="tf.usingItemInventory6 = 1"]
    [image storage="../image/kari/greenblock.png" layer="2" x="910" y="350" width="140" height="140" visible="true" name="greenblock"]
[endif]
[if exp="f.isDressGet == 1"]
    [eval exp="tf.usingItemInventory4 = 1"]
    [image storage="../image/kari/dress.png" layer="2" x="610" y="350" width="140" height="140" visible="true" name="dress"]
[endif]
[if exp="f.isCurtainGet == 1"]
    [eval exp="tf.usingItemInventory5 = 1"]
    [image storage="../image/episode2/curtain.png" layer="2" x="760" y="350" width="140" height="140" visible="true" name="curtain"]
[endif]
[if exp="f.isCompassGet == 1"]
    [eval exp="tf.usingItemInventory2 = 1"]
    [image storage="../image/kari/compass.png" layer="2" x="310" y="350" width="140" height="140" visible="true" name="compass"]
[endif]
[if exp="f.isJacketGet == 1"]
    [eval exp="tf.usingItemInventory3 = 1"]
    [image storage="../image/kari/jacket.png" layer="2" x="460" y="350" width="140" height="140" visible="true" name="jacket"]
[endif]
[if exp="f.isFutonGet == 1"]
    [eval exp="tf.usingItemInventory4 = 1"]
    [image storage="../image/kari/futon.png" layer="2" x="610" y="350" width="140" height="128" visible="true" name="futon"]
[endif]
; 特別アイテム
[if exp="f.isMikeGet == 1"]
    [eval exp="tf.usingItemInventory8 = 1"]
    [image storage="../image/kari/mike.png" layer="2" x="160" y="680" width="140" height="140" visible="true" name="mike"]
[endif]
[if exp="f.isDressGet == 1 || f.isDressGet == -1"]
    [eval exp="tf.usingItemInventory9 = 1"]
    [image storage="../image/kari/dress.png" layer="2" x="310" y="680" width="140" height="140" visible="true" name="dress_special"]
[endif]
[s]

*Scenario_Back
[awakegame]