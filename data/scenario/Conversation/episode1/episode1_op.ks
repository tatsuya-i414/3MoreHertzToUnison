[DispLocation text="ライブ会場"]
[ShowMiyuki_Center face="trouble"]
#深雪
んん...あれ？[r]
私、寝てた...？[p]

#深雪
確か雑誌の撮影が終わって帰る途中だったはず...[p]

; 深雪漫符：はてな
[DispQuestion_Center]
[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
そもそも、ここはどこなの？[p]

[FreeDispQuestion]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="trouble"]
#桜良
うーん...[p]

[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
桜良！！[p]

[PlayGosoGoso]
#桜良
あれ...？[r]
おはよう深雪ちゃん...？[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
ふう...ひとまず無事のようね。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
桜良、とりあえず起きて話しましょう。[p]

#深雪
いつの間にか見知らぬ部屋にいるけれど、[r]
あなたはここについて何か知っている？[p]

; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
ええ？[r]
って、あれ？本当だ！！ここどこ！？[p]

[FreeDispQS]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
その様子だと知らないみたいね。[r]
となると、私たち誘拐されたのかしら...[p]

; 深雪漫符：もやもや
[DispFuzzy_Left]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（せめて桜良だけでも逃がせないか...[r]
_　いや、そもそもこの部屋、出口らしき扉がない）[p]

[FreeDispFuzzy]
#深雪
（壁を壊せそうなものでもあるかしら？）[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
誘拐にしてはお部屋がかわいらしいね。[r]
ステージみたいな感じ。[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
私たちはアイドルだから、[r]
自分の好きなように躍らせたいのかもしれないわよ。[p]

; 桜良漫符：ぐるぐる
[DispTrouble_Right]
[ChangeCharaFace name="sakura" face="trouble"]
#桜良
うーん...それは嫌かも...[r]
みんなと一緒に歌って踊るから楽しいのにね。[p]

[FreeDispTrouble]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（本当にそのとおり！[r]
_　特にステージの上のあなたは最高だもの！）[p]

#深雪
（こんな時にまで私の好感度を上げに来ないで！[r]
_　きゅんきゅんしちゃうじゃない！）[p]

; 桜良漫符：はてな
[DispQuestion_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
それなら脱出しないとだよね...あれ？[p]

[FreeDispQuestion]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
どうしたの？[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
ポケットに何か入ってたみたい。[r]
メッセージカード、かな？[p]

#深雪
見せて。[p]

;[autostop]
;[skipstop]
;[ItemDisp storage=""]
#深雪
『仲良く謎解きしないと出られない部屋』？[p]

#桜良
『安全管理は徹底しているのでご安心を！』[r]
_　って小さく書いてあるね。[r]
_　しっかりしてるなあ。[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
見ず知らずの誰かに感心しなくていいの。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
ということは、これってもしかして撮影なんじゃない？[r]
ドッキリ企画ってこと！？[p]

; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
まだそう決めつけるのは早いんじゃ...[r]
あっ！[p]

[FreeDispSurprised]
;[autostop]
;[skipstop]
;[FreeItemDisp]
; 桜良漫符：びっくり
[DispSurprised_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
カード、消えちゃった！[p]

[FreeDispSurprised]
#深雪
（なにこれ、どんな技術？）[p]

#桜良
すごい！[r]
最新技術なのかなあ！！[r]
これってやっぱり脱出ゲームの撮影なんだよ！[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
ねえねえ深雪ちゃん、この部屋を調べてみない？[r]
私ずっと脱出ゲームやってみたかったんだ！[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（あああ満面の笑みで私を見つめないで、[r]
_　心臓が持たないわ...）[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
（でも、部屋を見ても危ないものはなさそうだし、[r]
_　誰かが入ってくる様子もない。[r]
_　本当に撮影なのかも。）[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（桜良もすごく楽しそうだし...[r]
_　もう少し一緒にいても問題ないわよね？）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
そうね。[r]
一旦、さっきのカードの言うとおりにしてみましょう。[r]
何かわかるかもしれないしね。[p]

[Jumping name="sakura"]
#桜良
そうだね！[r]
じゃあ早速いろいろ調べてみよう！[p]
[HideAll]
[DeleteDispLocation]
[return]