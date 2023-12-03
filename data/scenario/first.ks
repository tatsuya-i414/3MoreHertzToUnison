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

[macro name="ItemInventory"]
    [eval exp="tf.usingItemInventory1 = 0"]
    [eval exp="tf.usingItemInventory2 = 0"]
    [eval exp="tf.usingItemInventory3 = 0"]
    [eval exp="tf.usingItemInventory4 = 0"]
    [eval exp="tf.usingItemInventory5 = 0"]
    [eval exp="tf.usingItemInventory6 = 0"]
    [eval exp="tf.usingItemInventory7 = 0"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="25"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="100"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="175"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="250"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="325"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="400"]
    [image storage="../image/kari/inventory.png" layer="1" x="1770" y="475"]
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