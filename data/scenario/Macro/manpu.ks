; ------------------------------------------------------------
; 漫符用マクロ
; ------------------------------------------------------------
; 画面左側のキャラクターに集中線を表示
[macro name="DispSaturatedLine_Left"]
    [playse storage="manpu/saturatedLine.m4a" loop="false"]
    ;[image storage="" layer="3" x="650" y="150" name="saturatedLine"]
[endmacro]

; 画面中央のキャラクターに集中線を表示
[macro name="DispSaturatedLine_Center"]
    [playse storage="manpu/saturatedLine.m4a" loop="false"]  
    ;[image storage="" layer="3" x="1090" y="150" name="saturatedLine"]
[endmacro]

; 画面右側のキャラクターに集中線を表示
[macro name="DispSaturatedLine_Right"]
    [playse storage="manpu/saturatedLine.m4a" loop="false"]
    ;[image storage="" layer="3" x="1500" y="150" name="saturatedLine"]
[endmacro]

; 集中線を削除する
[macro name="FreeDispSaturatedLine"]
    [free layer="3" name="saturatedLine"]
[endmacro]

; 画面左側のキャラクターにびっくりを表示
[macro name="DispSurprised_Left"]
    [playse storage="manpu/surprised.m4a" loop="false"]
    [image storage="../image/manpu/surprised.png" layer="3" x="650" y="150" name="surprised"]
[endmacro]

; 画面中央のキャラクターにびっくりを表示
[macro name="DispSurprised_Center"]
    [playse storage="manpu/surprised.m4a" loop="false"]
    [image storage="../image/manpu/surprised.png" layer="3" x="1090" y="150" name="surprised"]
[endmacro]

; 画面右側のキャラクターにびっくりを表示
[macro name="DispSurprised_Right"]
    [playse storage="manpu/surprised.m4a" loop="false"]
    [image storage="../image/manpu/surprised.png" layer="3" x="1500" y="150" name="surprised"]
[endmacro]

; びっくりを削除する
[macro name="FreeDispSurprised"]
    [free layer="3" name="surprised"]
[endmacro]

; 画面左側のキャラクターにもやもやを表示
[macro name="DispFuzzy_Left"]
    ;[playse storage="" loop="false"] 
    [image storage="../image/manpu/fuzzy.png" layer="3" x="650" y="150" name="fuzzy"]
[endmacro]

; 画面中央のキャラクターにもやもやを表示
[macro name="DispFuzzy_Center"]
    ;[playse storage="" loop="false"]
    [image storage="../image/manpu/fuzzy.png" layer="3" x="1090" y="150" name="fuzzy"]
[endmacro]

; 画面右側のキャラクターにもやもやを表示
[macro name="DispFuzzy_Right"]
    ;[playse storage="" loop="false"]
    [image storage="../image/manpu/fuzzy.png" layer="3" x="1500" y="150" name="fuzzy"]
[endmacro]

; もやもやを削除する
[macro name="FreeDispFuzzy"]
    [free layer="3" name="fuzzy"]
[endmacro]

; 画面左側のキャラクターにキラキラを表示
[macro name="DispSparkle_Left"]
    [playse storage="manpu/sparkle.m4a" loop="false"]
    [image storage="../image/manpu/sparkle.png" layer="3" x="650" y="150" name="sparkle"]
[endmacro]

; 画面中央のキャラクターにキラキラを表示
[macro name="DispSparkle_Center"]
    [playse storage="manpu/sparkle.m4a" loop="false"]
    [image storage="../image/manpu/sparkle.png" layer="3" x="1090" y="150" name="sparkle"]
[endmacro]

; 画面右側のキャラクターキラキラを表示
[macro name="DispSparkle_Right"]
    [playse storage="manpu/sparkle.m4a" loop="false"]
    [image storage="../image/manpu/sparkle.png" layer="3" x="1500" y="150" name="sparkle"]
[endmacro]

; キラキラを削除する
[macro name="FreeDispSparkle"]
    [free layer="3" name="sparkle"]
[endmacro]

; 画面左側のキャラクターにはてなびっくりを表示
[macro name="DispQS_Left"]
    [playse storage="manpu/QS.m4a" loop="false"]
    [image storage="../image/manpu/QS.png" layer="3" x="650" y="150" name="QS"]
[endmacro]

; 画面中央のキャラクターにはてなびっくりを表示
[macro name="DispQS_Center"]
    [playse storage="manpu/QS.m4a" loop="false"]
    [image storage="../image/manpu/QS.png" layer="3" x="1090" y="150" name="QS"]
[endmacro]

; 画面右側のキャラクターにはてなびっくりを表示
[macro name="DispQS_Right"]
    [playse storage="manpu/QS.m4a" loop="false"]
    [image storage="../image/manpu/QS.png" layer="3" x="1500" y="150" name="QS"]
[endmacro]

; はてなびっくりを削除する
[macro name="FreeDispQS"]
    [free layer="3" name="QS"]
[endmacro]

; 画面左側のキャラクターにはてなを表示
[macro name="DispQuestion_Left"]
    [playse storage="manpu/question.m4a" loop="false"]
    [image storage="../image/manpu/question.png" layer="3" x="650" y="150" name="question"]
[endmacro]

; 画面中央のキャラクターにはてなを表示
[macro name="DispQuestion_Center"]
    [playse storage="manpu/question.m4a" loop="false"]
    [image storage="../image/manpu/question.png" layer="3" x="1090" y="150" name="question"]
[endmacro]

; 画面右側のキャラクターにはてなを表示
[macro name="DispQuestion_Right"]
    [playse storage="manpu/question.m4a" loop="false"]
    [image storage="../image/manpu/question.png" layer="3" x="1500" y="150" name="question"]
[endmacro]

; はてなを削除する
[macro name="FreeDispQuestion"]
    [free layer="3" name="question"]
[endmacro]

; 画面左側のキャラクターにぐるぐるを表示
[macro name="DispTrouble_Left"]
    [playse storage="manpu/trouble.m4a" loop="false"]
    [image storage="../image/manpu/trouble.png" layer="3" x="650" y="150" name="trouble"]
[endmacro]

; 画面中央のキャラクターにぐるぐるを表示
[macro name="DispTrouble_Center"]
    [playse storage="manpu/trouble.m4a" loop="false"]
    [image storage="../image/manpu/trouble.png" layer="3" x="1090" y="150" name="trouble"]
[endmacro]

; 画面右側のキャラクターにぐるぐるを表示
[macro name="DispTrouble_Right"]
    [playse storage="manpu/trouble.m4a" loop="false"]
    [image storage="../image/manpu/trouble.png" layer="3" x="1500" y="150" name="trouble"]
[endmacro]

; ぐるぐるを削除する
[macro name="FreeDispTrouble"]
    [free layer="3" name="trouble"]
[endmacro]

; 画面左側のキャラクターにワイワイを表示
[macro name="DispClamorously_Left"]
    [playse storage="manpu/clamorously.m4a" loop="false"] 
    ;[image storage="" layer="3" x="650" y="150" name="clamorously"]
[endmacro]

; 画面中央のキャラクターにワイワイを表示
[macro name="DispClamorously_Center"]
    [playse storage="manpu/clamorously.m4a" loop="false"]
    ;[image storage="" layer="3" x="1090" y="150" name="clamorously"]
[endmacro]

; 画面右側のキャラクターにワイワイを表示
[macro name="DispClamorously_Right"]
    [playse storage="manpu/clamorously.m4a" loop="false"] 
    ;[image storage="" layer="3" x="1500" y="150" name="clamorously"]
[endmacro]

; ワイワイを削除する
[macro name="FreeDispClamorously"]
    [free layer="3" name="clamorously"]
[endmacro]

; 画面左側のキャラクターに汗を表示
[macro name="DispSweat_Left"]
    [playse storage="manpu/sweat.m4a" loop="false"]
    ;[image storage="" layer="3" x="650" y="150" name="sweat"]
[endmacro]

; 画面中央のキャラクターに汗を表示
[macro name="DispSweat_Center"]
    [playse storage="manpu/sweat.m4a" loop="false"] 
    ;[image storage="" layer="3" x="1090" y="150" name="sweat"]
[endmacro]

; 画面右側のキャラクターに汗を表示
[macro name="DispSweat_Right"]
    [playse storage="manpu/sweat.m4a" loop="false"]
    ;[image storage="" layer="3" x="1500" y="150" name="sweat"]
[endmacro]

; 汗を削除する
[macro name="FreeDispSweat"]
    [free layer="3" name="sweat"]
[endmacro]

; 画面左側のキャラクターにぷんぷんを表示
[macro name="DispAngry_Left"]
    [playse storage="manpu/angry.m4a" loop="false"]
    [image storage="../image/manpu/angry.png" layer="3" x="650" y="150" name="angry"]
[endmacro]

; 画面中央のキャラクターにぷんぷんを表示
[macro name="DispAngry_Center"]
    [playse storage="manpu/angry.m4a" loop="false"]
    [image storage="../image/manpu/angry.png" layer="3" x="1090" y="150" name="angry"]
[endmacro]

; 画面右側のキャラクターにぷんぷんを表示
[macro name="DispAngry_Right"]
    [playse storage="manpu/angry.m4a" loop="false"]
    [image storage="../image/manpu/angry.png" layer="3" x="1500" y="150" name="angry"]
[endmacro]

; ぷんぷんを削除する
[macro name="FreeDispAngry"]
    [free layer="3" name="angry"]
[endmacro]

; 画面左側のキャラクターに音符を表示
[macro name="DispMusicalNote_Left"]
    ;[playse storage="" loop="false"]
    [image storage="../image/manpu/musicalNote.png" layer="3" x="650" y="150" name="musicalNote"]
[endmacro]

; 画面中央のキャラクターに音符を表示
[macro name="DispMusicalNote_Center"]
    ;[playse storage="" loop="false"]
    [image storage="../image/manpu/musicalNote.png" layer="3" x="1090" y="150" name="musicalNote"]
[endmacro]

; 画面右側のキャラクターに音符を表示
[macro name="DispMusicalNote_Right"]
    ;[playse storage="" loop="false"]
    [image storage="../image/manpu/musicalNote.png" layer="3" x="1500" y="150" name="musicalNote"]
[endmacro]

; 音符を削除する
[macro name="FreeDispMusicalNote"]
    [free layer="3" name="musicalNote"]
[endmacro]

; 画面左側のキャラクターに電球を表示
[macro name="DispLighBulb_Left"]
    [playse storage="manpu/lighBulb.m4a" loop="false"]
    [image storage="../image/manpu/lighBulb.png" layer="3" x="650" y="150" name="lighBulb"]
[endmacro]

; 画面中央のキャラクターに電球を表示
[macro name="DispLighBulb_Center"]
    [playse storage="manpu/lighBulb.m4a" loop="false"]
    [image storage="../image/manpu/lighBulb.png" layer="3" x="1090" y="150" name="lighBulb"]
[endmacro]

; 画面右側のキャラクターに電球を表示
[macro name="DispLighBulb_Right"]
    [playse storage="manpu/lighBulb.m4a" loop="false"]
    [image storage="../image/manpu/lighBulb.png" layer="3" x="1500" y="150" name="lighBulb"]
[endmacro]

; 電球を削除する
[macro name="FreeDispLighBulb"]
    [free layer="3" name="lighBulb"]
[endmacro]
[return]