[title name="novel-escape"]
[stop_keyconfig]

;標準ライブラリ群
@call storage="tyrano.ks"

; フラグ初期化
[eval exp="f.isEpisode1Clear = 0"]
[eval exp="f.isStageStatusGreen = 0"]
[eval exp="f.isLightStatusGreen = 0"]
[eval exp="f.isSpeakerStatusGreen = 0"]
[eval exp="f.isCableGet = 0"]
[eval exp="f.isLightCoverGet = 0"]
[eval exp="f.isDriverGet = 0"]
[eval exp="f.isMikeGet = 0"]
[eval exp="f.isEpisode2Clear = 0"]
[eval exp="f.isTentDown = 0"]
[eval exp="f.isDressGet = 0"]
[eval exp="f.isHungerGet = 0"]
[eval exp="f.isPaperDown = 0"]
[eval exp="f.isPencilGet = 0"]
[eval exp="f.isRedBlockGet = 0"]
[eval exp="f.isBlueBlockGet = 0"]
[eval exp="f.isYellowBlockGet = 0"]
[eval exp="f.isKeyOpen = 0"]
[eval exp="f.isCurtainGet = 0"]
[eval exp="f.isEpisode3Clear = 0"]
[eval exp="f.isFutonGet = 0"]
[eval exp="f.isCompassGet = 0"]
[eval exp="f.isJumperGet = 0"]
[eval exp="f.isJutanOpen = 0"]
[eval exp="f.isRoomLightNight = 0"]
; デバッグページで編集不可
[eval exp="f.isUsing = 0"]

; マクロ
[macro name="messageTrue"]
    @layopt layer="message0" visible="true"
[endmacro]

[macro name="messageFalse"]
    @layopt layer="message0" visible="false"
[endmacro]

[macro name="layer0True"]
    @layopt layer="0" visible="true"
[endmacro]

[macro name="layer0False"]
    @layopt layer="0" visible="false"
[endmacro]

[macro name="layer1True"]
    @layopt layer="1" visible="true"
[endmacro]

[macro name="layer1False"]
    @layopt layer="1" visible="false"
[endmacro]

[macro name="layer2True"]
    @layopt layer="2" visible="true"
[endmacro]

[macro name="layer2False"]
    @layopt layer="2" visible="false"
[endmacro]

[macro name="layer3True"]
    @layopt layer="3" visible="true"
[endmacro]

[macro name="layer3False"]
    @layopt layer="3" visible="false"
[endmacro]

[macro name="Freelayer1"]
    [freeimage layer="1"]
[endmacro]

[macro name="Freelayer2"]
    [freeimage layer="2"]
[endmacro]

[macro name="Freelayer3"]
    [freeimage layer="3"]
[endmacro]

[macro name="ItemInventory"]
    ; 通常アイテム
    [eval exp="tf.usingItemInventory1 = 0"]
    [eval exp="tf.usingItemInventory2 = 0"]
    [eval exp="tf.usingItemInventory3 = 0"]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="tf.usingItemInventory7 = 0"]
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
    [if exp="f.isMikeGet == 1"]
        [eval exp="tf.usingItemInventory4 = 1"]
        [image storage="../image/kari/mike.png" layer="2" x="1770" y="250" visible="true" name="mike"]
    [endif]
[endmacro]

[macro name="ItemBox"]
    [layer1True]
    [ItemInventory]
    [ItemImage]
[endmacro]

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

[macro name="ConfirmUseItem"]
    #
    このアイテムを使用しますか？
[endmacro]

[macro name="JumpStageRoom"]
    [jump storage="episode1.ks" target="*StageRoom"]
[endmacro]

@layopt layer="message" visible=false

; 最初は右下のメニューボタンを非表示にする
[hidemenubutton]

; タイトル画面へ移動
@jump storage="title.ks"

[s]