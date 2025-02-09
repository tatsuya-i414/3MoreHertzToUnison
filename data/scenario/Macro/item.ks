; ------------------------------------------------------------
; アイテム用マクロ
; ------------------------------------------------------------
; アイテムインベントリを表示する
[macro name="ItemInventory"]
    ; 通常アイテム用
    [iscript]
        tf.usingItemInventory1 = 0
        tf.usingItemInventory2 = 0
        tf.usingItemInventory3 = 0
        tf.usingItemInventory4 = 0
        tf.usingItemInventory5 = 0
        tf.usingItemInventory6 = 0
        tf.usingItemInventory7 = 0
    [endscript]
    ; 特別アイテム用
    [iscript]
        tf.usingItemInventory8 = 0
        tf.usingItemInventory9 = 0
        tf.usingItemInventory10 = 0
    [endscript]
    ; インベントリ画像
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="150" name="inventory1"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="250" name="inventory2"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="350" name="inventory3"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="450" name="inventory4"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="550" name="inventory5"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="650" name="inventory6"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="750" name="inventory7"]
[endmacro]

; アイテム画像を表示する
[macro name="ItemImage"]
    [layer2True]
    [if exp="f.isCableGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode1/cable.png" layer="2" x="1780" y="250" width="100" height="100" visible="true" name="cable"]
    [endif]
    [if exp="f.isDriverGet == 1"]
        [iscript]
            tf.usingItemInventory1 = 1
        [endscript]
        [image storage="../image/episode1/driver_item.png" layer="2" x="1780" y="150" width="100" height="100" visible="true" name="driver"]
    [endif]
    [if exp="f.isLightCoverGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode1/lightcover_item.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="lightcover"]
    [endif]
    [if exp="f.isHangerGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode2/hanger_item.png" layer="2" x="1780" y="250" width="100" height="100" visible="true" name="hanger"]
    [endif]
    [if exp="f.isPencilGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode2/pencil.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="pencil"]
    [endif]
    [if exp="f.isBlueBlockGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode2/blueblock_item.png" layer="2" x="1780" y="450" width="100" height="100" visible="true" name="blueblock"]
    [endif]
    [if exp="f.isRedBlockGet == 1"]
        [iscript]
            tf.usingItemInventory5 = 1
        [endscript]
        [image storage="../image/episode2/redblock_item.png" layer="2" x="1780" y="550" width="100" height="100" visible="true" name="redblock"]
    [endif]
    [if exp="f.isGreenBlockGet == 1"]
        [iscript]
            tf.usingItemInventory6 = 1
        [endscript]
        [image storage="../image/episode2/greenblock_item.png" layer="2" x="1780" y="650" width="100" height="100" visible="true" name="greenblock"]
    [endif]
    [if exp="f.isDressGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode2/dress.png" layer="2" x="1780" y="450" width="100" height="100" visible="true" name="dress"]
    [endif]
    [if exp="f.isCurtainGet == 1"]
        [iscript]
            tf.usingItemInventory5 = 1
        [endscript]
        [image storage="../image/episode2/curtain_item.png" layer="2" x="1780" y="550" width="100" height="100" visible="true" name="curtain"]
    [endif]
    [if exp="f.isCompassGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode3/compass.png" layer="2" x="1780" y="250" width="97" height="100" visible="true" name="compass"]
    [endif]
    [if exp="f.isJacketGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode3/jacket_item.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="jacket"]
    [endif]
    [if exp="f.isFutonGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode3/futon.png" layer="2" x="1780" y="450" width="100" height="91" visible="true" name="futon"]
    [endif]
[endmacro]

; 画面右上のアイテムボックスを表示する
[macro name="ItemBox"]
    [layer1True]
    [ItemInventory]
    [ItemImage]
[endmacro]

; 画面右上のアイテムボックスを非表示にする
[macro name="FreeItemBox"]
    [iscript]
        f.isUsing = 0
    [endscript]
    ; インベントリ画像
    [free layer="1" name="inventory1"]
    [free layer="1" name="inventory2"]
    [free layer="1" name="inventory3"]
    [free layer="1" name="inventory4"]
    [free layer="1" name="inventory5"]
    [free layer="1" name="inventory6"]
    [free layer="1" name="inventory7"]
    ;　アイテム画像
    [free layer="2" name="cable"]
    [free layer="2" name="driver"]
    [free layer="2" name="lightcover"]
    [free layer="2" name="hanger"]
    [free layer="2" name="pencil"]
    [free layer="2" name="blueblock"]
    [free layer="2" name="redblock"]
    [free layer="2" name="greenblock"]
    [free layer="2" name="dress"]
    [free layer="2" name="curtain"]
    [free layer="2" name="compass"]
    [free layer="2" name="jacket"]
    [free layer="2" name="futon"]
[endmacro]

; アイテム使用時のクリック判定
[macro name="SelectItemClickable"]
    [if exp="tf.usingItemInventory1 == 1"]
        [clickable x="1780" y="150" width="100" height="100" target="%target_1" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
        [clickable x="1780" y="250" width="100" height="100" target="%target_2" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
        [clickable x="1780" y="350" width="100" height="100" target="%target_3" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
        [clickable x="1780" y="450" width="100" height="100" target="%target_4" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
        [clickable x="1780" y="550" width="100" height="100" target="%target_5" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
        [clickable x="1780" y="650" width="100" height="100" target="%target_6" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
        [clickable x="1780" y="750" width="100" height="100" target="%target_7" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
[endmacro]

; アイテム使用時の確認メッセージ
[macro name="ConfirmUseItem"]
    [PlayUsingItemDecision]
    [nolog]
    #
    このアイテムを使用しますか？
    [endnolog]
[endmacro]

; アイテム使用時の「はい」「いいえ」ボタン
[macro name="YesNoButton"]
    [glink color="bth06" storage="%storage_yes" target="%target_yes" width="%width_yes|80" x="%x_yes|240" y="%y_yes|960" size="24" text="%text_yes|はい" clickse="../sound/se/decision.m4a" exp="%exp_yes|"]
    [glink color="bth06" storage="%storage_no" target="%target_no" width="%width_no|80" x="%x_no|470" y="%y_no|960" size="24" text="%text_no|いいえ" clickse="../sound/se/cancel.m4a" exp="%exp_no|"]
[endmacro]

; 正しくないアイテムを使用した時のメッセージ
[macro name="MessageToUsingWrongItem"]
    [nolog]
    #
    このアイテムは違うようだ。[p]
    [endnolog]
[endmacro]
[return]