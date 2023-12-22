*ItemMenu
[cm]
[messageFalse]
[clearfix]
[Freelayer1]
[Freelayer2]
[Freelayer3]
[FreeItemBox]

[screen_full]
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
[layer2True]
[if exp="f.isCableGet == 1"]
    [eval exp="tf.usingItemInventory1 = 1"]
    [image storage="../image/kari/cable.png" layer="2" x="160" y="350" width="140" height="140" visible="true" name="cable"]
[endif]
[if exp="f.isDriverGet == 1"]
    [eval exp="tf.usingItemInventory2 = 1"]
    [image storage="../image/kari/driver.png" layer="2" x="310" y="350" width="140" height="140" visible="true" name="driver"]
[endif]
[if exp="f.isLightCoverGet == 1"]
    [eval exp="tf.usingItemInventory3 = 1"]
    [image storage="../image/kari/lightcover.png" layer="2" x="460" y="350" width="140" height="140" visible="true" name="lightcover"]
[endif]
[if exp="f.isMikeGet == 1"]
    [eval exp="tf.usingItemInventory8 = 1"]
    [image storage="../image/kari/mike.png" layer="2" x="160" y="680" width="140" height="140" visible="true" name="mike"]
[endif]
[s]

*Scenario_Back
[awakegame]