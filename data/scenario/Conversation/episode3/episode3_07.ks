;-------------------------------------------------------
; 昼夜切り替えスイッチ
;-------------------------------------------------------
[ShowSakura_Center face="surprise"]
#桜良
深雪ちゃん見て！[r]
窓の外が！[p]

[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
[ShowMiyuki_Left face="surprise"]
#深雪
夜になった...？[r]
電気を消しただけなのに...[p]

#桜良
すごい、外はどう見ても普通の風景なのに、[r]
一瞬で夜になっちゃった！[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（スタジオ内で人工的に風景を再現しているにしては、[r]
_　窓の外の風景がリアルすぎるわ。）[p]

#深雪
（これ、本当に撮影なの？）[p]

[ChangeCharaFace name="miyuki" face="smile"]
#桜良
最新技術なのかな！？[r]
すごいね深雪ちゃん！[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
（でも、下手に指摘して怖がらせたくない）[p]

#深雪
昼夜が切り替えられるなら、何か意味があるのかも。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
じゃあ暗い状態で部屋を見てみる？[p]

#深雪
そうしましょう。[p]

#深雪
（危険がない限りは黙っていましょう）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（にしてもこの部屋はいったい...）[p]
[HideAll]
[return]