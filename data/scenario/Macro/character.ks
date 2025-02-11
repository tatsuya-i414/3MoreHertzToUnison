; ------------------------------------------------------------
; キャラクター用マクロ
; ------------------------------------------------------------
; 桜良を画面右側に表示する
[macro name="ShowSakura_Right"]
    [chara_show name="sakura" time="1000" layer="3" wait="true" face="%face|normal" width="737" height="1990" left="960" top="%top|120"]
[endmacro]

; 桜良を画面中央に表示する
[macro name="ShowSakura_Center"]
    [chara_show name="sakura" time="1000" layer="3" wait="true" face="%face|normal" width="737" height="1990" left="550" top="%top|120"]
[endmacro]

; 深雪を画面左側に表示する
[macro name="ShowMiyuki_Left"]
    [chara_show name="miyuki" time="1000" layer="3" wait="true" face="%face|normal" width="737" height="1990" left="160" top="%top|120"]
[endmacro]

; 深雪を画面中央に表示する
[macro name="ShowMiyuki_Center"]
    [chara_show name="miyuki" time="1000" layer="3" wait="true" face="%face|normal" width="737" height="1990" left="550" top="%top|120"]
[endmacro]

; キャラクターの表情を切り替える
[macro name="ChangeCharaFace"]
    [chara_mod name="%name" face="%face" time="500" wait="true"]
[endmacro]

; キャラクターの立ち位置を移動する
[macro name="ChangeCharaPosition"]
    [if exp="f.charaPosition[1] == 'left' "]
        [chara_move name="&f.charaPosition[0]" left="160" anim="true"]
    [elsif exp="f.charaPosition[1] == 'center' "]
        [chara_move name="&f.charaPosition[0]" left="550" anim="true"]
    [elsif exp="f.charaPosition[1] == 'right' "]
        [chara_move name="&f.charaPosition[0]" left="960" anim="true"]
    [endif]
[endmacro]

; 桜良を退場させる
[macro name="HideSakura"]
    [chara_hide name="sakura" time="%time|500" wait="true" layer="3"]
[endmacro]

; 深雪を退場させる
[macro name="HideMiyuki"]
    [chara_hide name="miyuki" time="%time|500" wait="true" layer="3"]
[endmacro]

; キャラクターを全員退場させる
[macro name="HideAll"]
    [chara_hide_all time="%time|500" wait="true" layer="3"]
[endmacro]

; ジャンプ
[macro name="Jumping"]
    [keyframe name="jump"]
        [frame p="20%" y="-100"]
        [frame p="40%" y="100"]
        [frame p="60%" y="-100"]
        [frame p="80%" y="100"]
        [frame p="100%" y="-20"]
    [endkeyframe]
    [messageFalse]
    [kanim name="%name" keyframe="jump" time="2000"]
    [wa]
    [messageTrue]
[endmacro]
[return]