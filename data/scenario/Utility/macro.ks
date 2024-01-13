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
    ; 通常アイテム
    [eval exp="tf.usingItemInventory1 = 0"]
    [eval exp="tf.usingItemInventory2 = 0"]
    [eval exp="tf.usingItemInventory3 = 0"]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="tf.usingItemInventory7 = 0"]
    [eval exp="tf.usingItemInventory8 = 0"]
    [eval exp="tf.usingItemInventory9 = 0"]
    [eval exp="tf.usingItemInventory10 = 0"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="25" name="inventory1"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="100" name="inventory2"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="175" name="inventory3"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="250" name="inventory4"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="325" name="inventory5"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="400" name="inventory6"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="475" name="inventory7"]
    ; 特別アイテム
    [eval exp="tf.usingItemInventory8 = 0"]
    [eval exp="tf.usingItemInventory9 = 0"]
    [eval exp="tf.usingItemInventory10 = 0"]
[endmacro]

; アイテム画像を表示する
[macro name="ItemImage"]
    [layer2True]
    [if exp="f.isCableGet == 1"]
        [eval exp="tf.usingItemInventory1 = 1"]
        [image storage="../image/kari/cable.png" layer="2" x="1770" y="25" visible="true" name="cable"]
    [endif]
    [if exp="f.isDriverGet == 1"]
        [eval exp="tf.usingItemInventory2 = 1"]
        [image storage="../image/kari/driver.png" layer="2" x="1770" y="100" visible="true" name="driver"]
    [endif]
    [if exp="f.isLightCoverGet == 1"]
        [eval exp="tf.usingItemInventory3 = 1"]
        [image storage="../image/kari/lightcover.png" layer="2" x="1770" y="175" visible="true" name="lightcover"]
    [endif]
    [if exp="f.isHungerGet == 1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [image storage="../image/kari/hunger.png" layer="2" x="1770" y="250" visible="true" name="hunger"]
    [endif]
    [if exp="f.isMikeGet == 1"]
        [eval exp="tf.usingItemInventory8 = 1"]
        [image storage="../image/kari/mike.png" layer="2" x="1770" y="250" visible="true" name="mike"]
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
    [free layer="1" name="inventory1"]
    [free layer="1" name="inventory2"]
    [free layer="1" name="inventory3"]
    [free layer="1" name="inventory4"]
    [free layer="1" name="inventory5"]
    [free layer="1" name="inventory6"]
    [free layer="1" name="inventory7"]
    [free layer="2" name="cable"]
    [free layer="2" name="driver"]
    [free layer="2" name="lightcover"]
    [free layer="2" name="mike"]
[endmacro]

; アイテム使用時の確認メッセージ
[macro name="ConfirmUseItem"]
    #
    このアイテムを使用しますか？
[endmacro]

; ステージルームへ移動する
[macro name="JumpStageRoom"]
    [jump storage="Gimmick/episode1.ks" target="*StageRoom"]
[endmacro]

; スタジオルームへ移動する
[macro name="JumpStudioRoom"]
    [jump storage="Gimmick/episode2.ks" target="*StudioRoom"]
[endmacro]

[return]