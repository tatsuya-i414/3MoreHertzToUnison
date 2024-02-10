; メッセージレイヤーを表示にする
[macro name="messageTrue"]
    @layopt layer="message0" visible="true"
[endmacro]

; メッセージレイヤーを非表示にする
[macro name="messageFalse"]
    @layopt layer="message0" visible="false"
[endmacro]

; レイヤー0に設定した画像を表示にする
[macro name="layer0True"]
    @layopt layer="0" visible="true"
[endmacro]

; レイヤー0に設定した画像を非表示にする
[macro name="layer0False"]
    @layopt layer="0" visible="false"
[endmacro]

; レイヤー1に設定した画像を表示にする
[macro name="layer1True"]
    @layopt layer="1" visible="true"
[endmacro]

; レイヤー1に設定した画像を非表示にする
[macro name="layer1False"]
    @layopt layer="1" visible="false"
[endmacro]

; レイヤー2に設定した画像を表示にする
[macro name="layer2True"]
    @layopt layer="2" visible="true"
[endmacro]

; レイヤー2に設定した画像を非表示にする
[macro name="layer2False"]
    @layopt layer="2" visible="false"
[endmacro]

; レイヤー3に設定した画像を表示にする
[macro name="layer3True"]
    @layopt layer="3" visible="true"
[endmacro]

; レイヤー3に設定した画像を非表示にする
[macro name="layer3False"]
    @layopt layer="3" visible="false"
[endmacro]

; レイヤー0に設定した画像を削除する
[macro name="Freelayer0"]
    [freeimage layer="0"]
[endmacro]

; レイヤー1に設定した画像を削除する
[macro name="Freelayer1"]
    [freeimage layer="1"]
[endmacro]

; レイヤー2に設定した画像を削除する
[macro name="Freelayer2"]
    [freeimage layer="2"]
[endmacro]

; レイヤー3に設定した画像を削除する
[macro name="Freelayer3"]
    [freeimage layer="3"]
[endmacro]

; 暗転
[macro name="blackout"]
    [mask effect="fadeIn" time="%time_1|3000"]
    [if exp="%exp"]
        [bg storage="%storage_1" time="%time_2|100"]
    [else]
        [bg storage="%storage_2" time="%time_3|100"]
    [endif]
    [mask_off time="2000"]
[endmacro]

; 桜良(通常)を画面右手に表示する
[macro name="ShowNormalSakuraOnRight"]
    [chara_show name="sakura" time="500" layer="3" width="730" height="1990" left="960" top="20"]
[endmacro]

; 桜良(通常)を画面中央に表示する
[macro name="ShowNormalSakuraOnCenter"]
    [chara_show name="sakura" time="500" layer="3" width="730" height="1990" left="550" top="20"]
[endmacro]

; 深雪(通常)を画面左手に表示する
[macro name="ShowNormalMiyukiOnLeft"]
    [chara_show name="miyuki" time="500" layer="3" width="730" height="1990" left="160" top="20"]
[endmacro]

; 深雪(通常)を画面中央に表示する
[macro name="ShowNormalMiyukiOnCenter"]
    [chara_show name="miyuki" time="500" layer="3" width="730" height="1990" left="550" top="20"]
[endmacro]

; 桜良(通常)と深雪(通常)を表示する
[macro name="ShowNormalSakuraAndMiyuki"]
    [ShowNormalSakuraOnRight]
    [ShowNormalMiyukiOnLeft]
[endmacro]

; レイヤー3に設定した桜良の画像を削除する
[macro name="FreeSakura"]
    [freeimage layer="3" name="sakura"]
[endmacro]

; レイヤー3に設定した深雪の画像を削除する
[macro name="FreeMiyuki"]
    [freeimage layer="3" name="miyuki"]
[endmacro]

; アイテムインベントリを表示する
[macro name="ItemInventory"]
    ; 通常アイテム用
    [eval exp="tf.usingItemInventory1 = 0"]
    [eval exp="tf.usingItemInventory2 = 0"]
    [eval exp="tf.usingItemInventory3 = 0"]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="tf.usingItemInventory7 = 0"]
    ; 特別アイテム用
    [eval exp="tf.usingItemInventory8 = 0"]
    [eval exp="tf.usingItemInventory9 = 0"]
    [eval exp="tf.usingItemInventory10 = 0"]
    ; インベントリ画像
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="25" name="inventory1"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="100" name="inventory2"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="175" name="inventory3"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="250" name="inventory4"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="325" name="inventory5"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="400" name="inventory6"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="475" name="inventory7"]
[endmacro]

; アイテム画像を表示する
[macro name="ItemImage"]
    [layer2True]
    [if exp="f.isCableGet == 1"]
        [eval exp="tf.usingItemInventory2 = 1"]
        [image storage="../image/kari/cable.png" layer="2" x="1770" y="100" visible="true" name="cable"]
    [endif]
    [if exp="f.isDriverGet == 1"]
        [eval exp="tf.usingItemInventory1 = 1"]
        [image storage="../image/episode1/driver.png" layer="2" x="1770" y="25" width="70" height="70" visible="true" name="driver"]
    [endif]
    [if exp="f.isLightCoverGet == 1"]
        [eval exp="tf.usingItemInventory3 = 1"]
        [image storage="../image/episode1/lightcover_item.png" layer="2" x="1770" y="175" width="70" height="70" visible="true" name="lightcover"]
    [endif]
    [if exp="f.isHungerGet == 1"]
        [eval exp="tf.usingItemInventory2 = 1"]
        [image storage="../image/kari/hunger.png" layer="2" x="1770" y="100" visible="true" name="hunger"]
    [endif]
    [if exp="f.isPencilGet == 1"]
        [eval exp="tf.usingItemInventory3 = 1"]
        [image storage="../image/kari/pencil.png" layer="2" x="1770" y="175" visible="true" name="pencil"]
    [endif]
    [if exp="f.isBlueBlockGet == 1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [image storage="../image/kari/blueblock.png" layer="2" x="1770" y="250" visible="true" name="blueblock"]
    [endif]
    [if exp="f.isRedBlockGet == 1"]
        [eval exp="tf.usingItemInventory5 = 1"]
        [image storage="../image/kari/redblock.png" layer="2" x="1770" y="325" visible="true" name="redblock"]
    [endif]
    [if exp="f.isGreenBlockGet == 1"]
        [eval exp="tf.usingItemInventory6 = 1"]
        [image storage="../image/kari/greenblock.png" layer="2" x="1770" y="400" visible="true" name="greenblock"]
    [endif]
    [if exp="f.isDressGet == 1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [image storage="../image/kari/dress.png" layer="2" x="1770" y="250" visible="true" name="dress"]
    [endif]
    [if exp="f.isCurtainGet == 1"]
        [eval exp="tf.usingItemInventory5 = 1"]
        [image storage="../image/kari/curtain.png" layer="2" x="1770" y="325" visible="true" name="curtain"]
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
    [eval exp="f.isUsing = 0"]
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
    [free layer="2" name="hunger"]
    [free layer="2" name="pencil"]
    [free layer="2" name="blueblock"]
    [free layer="2" name="redblock"]
    [free layer="2" name="greenblock"]
    [free layer="2" name="dress"]
    [free layer="2" name="curtain"]
[endmacro]

; アイテム使用時の確認メッセージ
[macro name="ConfirmUseItem"]
    [nolog]
    #
    このアイテムを使用しますか？
    [endnolog]
[endmacro]

; アイテム使用時の「はい」「いいえ」ボタン
[macro name="YesNoButton"]
    [glink color="btn_29_red" target="%target_yes" width="200" x="250" y="930" text="はい"]
    [glink color="btn_29_blue" target="%target_no" width="200" x="550" y="930" text="いいえ"]
[endmacro]

; アイテム使用時のクリック判定
[macro name="SelectItemClickable"]
    [if exp="tf.usingItemInventory1 == 1"]
        [clickable x="1770" y="25" width="70" height="70" target="%target_1" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
        [clickable x="1770" y="100" width="70" height="70" target="%target_2" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
        [clickable x="1770" y="175" width="70" height="70" target="%target_3" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
        [clickable x="1770" y="250" width="70" height="70" target="%target_4" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
        [clickable x="1770" y="325" width="70" height="70" target="%target_5" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
        [clickable x="1770" y="400" width="70" height="70" target="%target_6" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
        [clickable x="1770" y="475" width="70" height="70" target="%target_7" opacity="30" mouseopacity="50" color="0x505050"]
    [endif]
[endmacro]

; 通常のクリック判定
[macro name="clickJudgment"]
    [clickable x="%x" y="%y" width="%width" height="%height" target="%target" opacity="30" mouseopacity="50" color="0x505050"]
[endmacro]

; 背景を変更する
[macro name="ChangeBackGround"]
    [bg storage="%storage" time="%time|100" method="%method"]
[endmacro]

; アイテムメニューボタン
[macro name="ItemMenuButton"]
    [button graphic="kari/itemmenu_icon.png" storage="Gimmick/itemmenu.ks" target="*ItemMenu" x="1850" y="930" fix="true" role="sleepgame"]
[endmacro]

; 拡大マップからの戻るボタン
[macro name="BackFromEnlargedMap"]
    [clickable x="910" y="1015" width="100" height="50" target="%target" opacity="30" mouseopacity="50" color="0x505050"]
[endmacro]

; ステージルームへ移動する
[macro name="JumpStageRoom"]
    [jump storage="Gimmick/episode1.ks" target="*StageRoom"]
[endmacro]

; スタジオルームへ移動する
[macro name="JumpStudioRoom"]
    [jump storage="Gimmick/episode2.ks" target="*StudioRoom"]
[endmacro]

; ベッドルームへ移動する
[macro name="JumpBedRoom"]
    [jump storage="Gimmick/episode3.ks" target="*BedRoom"]
[endmacro]

[return]