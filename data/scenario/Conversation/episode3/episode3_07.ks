;-------------------------------------------------------
; 昼夜切り替えスイッチ
;-------------------------------------------------------
; 桜良漫符：はてなびっくり
[ShowSakura_Center face="surprise"]
#桜良
深雪ちゃん見て！[r]
窓の外が！[p]

[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
; 深雪漫符：はてなびっくり
[ShowMiyuki_Left face="impatience"]
#深雪
夜になった...？[r]
電気を消しただけなのに...[p]

[DarkenBackground brightness="50"]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（スタジオ内で人工的に風景を再現しているにしては、[r]
_　窓の外の風景がリアルすぎるわ。）[p]

#深雪
（これ、本当に撮影なの？）[p]

[free_filter]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
最新技術なのかな！？[r]
すごいね深雪ちゃん！[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
（でも、下手に指摘して怖がらせるのは...）[p]

#深雪
昼夜が切り替えられるなら、[r]
これを活かす必要があるのかもしれないわ。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
じゃあ暗い状態で部屋を見てみる？[p]

#深雪
そうしましょう。[p]

#深雪
（危険がない限りは黙っていましょう）[p]

; 深雪漫符：もやもや
[ChangeCharaFace name="miyuki" face="close_eye"]
#深雪
（にしてもこの部屋はいったい...）[p]
[HideAll]
[return]