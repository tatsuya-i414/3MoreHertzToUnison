;-------------------------------------------------------
; 鞄
;-------------------------------------------------------
[ShowMiyuki_Center]
#深雪
私がロケのとき使っていた鞄ね。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="close_eye"]
#桜良
なつかしいなあ。[r]
もう一年くらい前だっけ...[p]

#深雪
正確には一年と二か月と三日前よ。[p]

; 桜良漫符：はてな
[DispQuestion_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
覚えてるの！？[p]

[FreeDispQuestion]
[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
（やばっ、つい毎日数えている弊害が...）[p]

#深雪
き、昨日たまたまスケジュールを見返していただけ。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
そっか、私もたまにやるな～。[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
振り返りも時には大切だものね。[r]
...ん？[p]

[PlayGosoGoso2]
; 深雪漫符：ぐるぐる
[DispTrouble_Left]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
コンパスしか入ってない...[p]

[FreeDispTrouble]
; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
ええっ！山小屋に置いてある鞄なのに！？[p]

[FreeDispQS]
#深雪
用意不十分にもほどがあるわね。[r]
ひとまずこれはもらっておきましょう。[p]
[HideAll]
[return]