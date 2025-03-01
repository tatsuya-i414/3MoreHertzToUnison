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

[bg storage="share/itemmenu.png" time="100"]
[button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Scenario_Back" x="1680" y="60" clickse="../sound/se/cancel.m4a"]

; ------------------------------------------------------------
; 通常アイテム
; ------------------------------------------------------------
[image storage="../image/share/inventory.png" layer="1" x="560" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="710" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="860" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="1010" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="1160" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="1310" y="350" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="1460" y="350" width="140" height="140"]

; ------------------------------------------------------------
; 特別アイテム
; ------------------------------------------------------------
[image storage="../image/share/inventory.png" layer="1" x="560" y="680" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="710" y="680" width="140" height="140"]
[image storage="../image/share/inventory.png" layer="1" x="860" y="680" width="140" height="140"]

; ------------------------------------------------------------
; アイテム画像（通常アイテム）
; ------------------------------------------------------------
[layer2True]
[if exp="f.isCableGet == 1"]
    [iscript]
        tf.usingItemInventory2 = 1
    [endscript]
    [image storage="../image/episode1/cable.png" layer="2" x="710" y="350" width="140" height="140" visible="true" name="cable"]
[endif]
[if exp="f.isDriverGet == 1"]
    [iscript]
        tf.usingItemInventory1 = 1
    [endscript]
    [image storage="../image/episode1/driver_item.png" layer="2" x="560" y="350" visible="true" name="driver"]
[endif]
[if exp="f.isLightCoverGet == 1"]
    [iscript]
        tf.usingItemInventory3 = 1
    [endscript]
    [image storage="../image/episode1/lightcover_item.png" layer="2" x="860" y="350" visible="true" name="lightcover"]
[endif]
[if exp="f.isHangerGet == 1"]
    [iscript]
        tf.usingItemInventory2 = 1
    [endscript]
    [image storage="../image/episode2/hanger_item.png" layer="2" x="710" y="350" width="140" height="140" visible="true" name="hanger"]
[endif]
[if exp="f.isPencilGet == 1"]
    [iscript]
        tf.usingItemInventory3 = 1
    [endscript]
    [image storage="../image/episode2/pencil.png" layer="2" x="860" y="350" visible="true" name="pencil"]
[endif]
[if exp="f.isBlueBlockGet== 1"]
    [iscript]
        tf.usingItemInventory4 = 1
    [endscript]
    [image storage="../image/episode2/blueblock_item.png" layer="2" x="1010" y="350" visible="true" name="blueblock"]
[endif]
[if exp="f.isRedBlockGet == 1"]
    [iscript]
        tf.usingItemInventory5 = 1
    [endscript]
    [image storage="../image/episode2/redblock_item.png" layer="2" x="1160" y="350" visible="true" name="redblock"]
[endif]
[if exp="f.isGreenBlockGet == 1"]
    [iscript]
        tf.usingItemInventory6 = 1
    [endscript]
    [image storage="../image/episode2/greenblock_item.png" layer="2" x="1310" y="350" visible="true" name="greenblock"]
[endif]
[if exp="f.isDressGet == 1"]
    [iscript]
        tf.usingItemInventory4 = 1
    [endscript]
    [image storage="../image/episode2/dress.png" layer="2" x="1010" y="350" visible="true" name="dress"]
[endif]
[if exp="f.isCurtainGet == 1"]
    [iscript]
        tf.usingItemInventory5 = 1
    [endscript]
    [image storage="../image/episode2/curtain_item.png" layer="2" x="1160" y="350" width="140" height="140" visible="true" name="curtain"]
[endif]
[if exp="f.isCompassGet == 1"]
    [iscript]
        tf.usingItemInventory2 = 1
    [endscript]
    [image storage="../image/episode3/compass.png" layer="2" x="710" y="350" width="136" height="140" visible="true" name="compass"]
[endif]
[if exp="f.isJacketGet == 1"]
    [iscript]
        tf.usingItemInventory3 = 1
    [endscript]
    [image storage="../image/episode3/jacket_item.png" layer="2" x="860" y="350" visible="true" name="jacket"]
[endif]
[if exp="f.isFutonGet == 1"]
    [iscript]
        tf.usingItemInventory4 = 1
    [endscript]
    [image storage="../image/episode3/futon.png" layer="2" x="1010" y="350" width="140" height="127" visible="true" name="futon"]
[endif]

; ------------------------------------------------------------
; アイテム画像（特別アイテム）
; ------------------------------------------------------------
[if exp="f.isMikeGet == 1"]
    [iscript]
        tf.usingItemInventory8 = 1
    [endscript]
    [image storage="../image/episode1/mike.png" layer="2" x="560" y="680" width="140" height="140" visible="true" name="mike"]
[endif]
[if exp="f.isDressGet == 1 || f.isDressGet == -1"]
    [iscript]
        tf.usingItemInventory9 = 1
    [endscript]
    [image storage="../image/episode2/dress.png" layer="2" x="710" y="680" width="140" height="140" visible="true" name="dress_special"]
[endif]
[if exp="f.isYoukanGet == 1"]
    [iscript]
        tf.usingItemInventory10 = 1
    [endscript]
    [image storage="../image/episode3/youkan.png" layer="2" x="860" y="680" width="140" height="140" visible="true" name="youkan"]
[endif]
[s]

*Scenario_Back
[awakegame]