; ------------------------------------------------------------
; レイヤー切り替え用マクロ
; ------------------------------------------------------------
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
[return]