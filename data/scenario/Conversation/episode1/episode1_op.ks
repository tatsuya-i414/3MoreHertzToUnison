[DispLocation text="ライブ会場"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `ライブ会場` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[ShowMiyuki_Center face="trouble"]
#深雪
んん...あれ？[rhr]
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
あれ...？[rhr]
おはよう深雪ちゃん...？[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
ふう...ひとまず無事のようね。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
桜良、とりあえず起きて話しましょう。[p]

#深雪
いつの間にか見知らぬ部屋にいるけれど、[rhr]
あなたはここについて何か知っている？[p]

; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
ええ？[rhr]
って、あれ？本当だ！！ここどこ！？[p]

[FreeDispQS]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
その様子だと知らないみたいね。[rhr]
となると、私たち誘拐されたのかしら...[p]

; 深雪漫符：もやもや
[DispFuzzy_Left]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（せめて桜良だけでも逃がせないか...[rhr]
_　いや、そもそもこの部屋、出口らしき扉がない）[p]

[FreeDispFuzzy]
#深雪
（壁を壊せそうなものでもあるかしら？）[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
誘拐にしてはお部屋がかわいらしいね。[rhr]
ステージみたいな感じ。[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
私たちはアイドルだから、[rhr]
自分の好きなように躍らせたいのかもしれないわよ。[p]

; 桜良漫符：ぐるぐる
[DispTrouble_Right]
[ChangeCharaFace name="sakura" face="trouble"]
#桜良
うーん...それは嫌かも...[rhr]
みんなと一緒に歌って踊るから楽しいのにね。[p]

[FreeDispTrouble]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（本当にそのとおり！[rhr]
_　特にステージの上のあなたは最高だもの！）[p]

#深雪
（こんな時にまで私の好感度を上げに来ないで！[rhr]
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
ポケットに何か入ってたみたい。[rhr]
メッセージカード、かな？[p]

#深雪
見せて。[p]

;[autostop]
;[skipstop]
;[ItemDisp storage=""]
#深雪
『仲良く謎解きしないと出られない部屋』？[p]

#桜良
『安全管理は徹底しているのでご安心を！』[rhr]
_　って小さく書いてあるね。[rhr]
_　しっかりしてるなあ。[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
見ず知らずの誰かに感心しなくていいの。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
ということは、これってもしかして撮影なんじゃない？[rhr]
ドッキリ企画ってこと！？[p]

; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
まだそう決めつけるのは早いんじゃ...[rhr]
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
すごい！[rhr]
最新技術なのかなあ！！[rhr]
これってやっぱり脱出ゲームの撮影なんだよ！[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
ねえねえ深雪ちゃん、この部屋を調べてみない？[rhr]
私ずっと脱出ゲームやってみたかったんだ！[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（あああ満面の笑みで私を見つめないで、[rhr]
_　心臓が持たないわ...）[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
（でも、部屋を見ても危ないものはなさそうだし、[rhr]
_　誰かが入ってくる様子もない。[rhr]
_　本当に撮影なのかも。）[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（桜良もすごく楽しそうだし...[rhr]
_　もう少し一緒にいても問題ないわよね？）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
そうね。[rhr]
一旦、さっきのカードの言うとおりにしてみましょう。[rhr]
何かわかるかもしれないしね。[p]

[Jumping name="sakura"]
#桜良
そうだね！[rhr]
じゃあ早速いろいろ調べてみよう！[p]
[HideAll]
[DeleteDispLocation]
[return]