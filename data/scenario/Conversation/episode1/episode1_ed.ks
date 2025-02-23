[PlayTurnOffLight]

[image storage="../image/episode1/mikestand.png" layer="1" name="mikestand"]
[ChangeBackGround storage="episode1/spotlight.png"]
[wait time="500"]
[PlaySpotLightOn]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
きゃっ、いきなり暗くなった！[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
停電？[r]
いや、一か所だけスポットライトが当たってる...？[p]

#桜良
あれっ、スタンドマイクなんてあったっけ？[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
いつの間にかせりも下がってるわね。[r]
何か見覚えがあるような...[p]

; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
...あっ。[p]

[FreeDispSurprised]
[ChangeCharaFace name="sakura" face="seriously"]
#桜良
どうしたの？[r]
何かわかったの？[p]

#深雪
これ、トラブルだらけで大変だったライブの時のマイク...[p]

; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
ああっ、本当だ！[r]
このリボン、あの時の！[p]

[FreeDispQS]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（正直あのライブはあんまり思い出したくない）[p]

#深雪
（前日のリハの時からスタッフ間でもめたり、[r]
_　メンバーが転んで捻挫になりかかったり）[p]

; 深雪漫符：ぐるぐる
[DispTrouble_Left]
[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
（挙句の果てには本番機材トラブルで停電なんて、[r]
_　もう一生思い出したくもないわね...）[p]

[FreeDispTrouble]
[ChangeCharaFace name="sakura" face="trouble"]
#桜良
あのライブ、本当に大変だったよねえ...[p]

#深雪
悪夢だったわ。[r]
いまだに夢に見て冷や汗ものよ。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
あの時の再現をしてくるなんて、[r]
この部屋に放り込んだ人はよっぽど悪趣味ね。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
...私は、嫌な思い出だけじゃない、かな。[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
どういうこと？[p]

#桜良
停電でライトがつかなくなっちゃったとき、[r]
お客さんも私たちも混乱してたよね。[p]

#桜良
私もどうしたらいいかわかんなくて、[r]
頭の中真っ白で...[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
仕方ないわ。[r]
あの時の私たちはまだ場数も少なかったもの。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
でも、深雪ちゃんはすっごく冷静だったよ！[p]

; 深雪漫符：はてな
[DispQuestion_Left]
#深雪
そうかしら？[p]

[FreeDispQuestion]
#桜良
「私がなんとかします！」って言ったと思ったら、[r]
突然ステージに飛び出して行っちゃって！[p]

[messageFalse]
[HideAll]
; 画面演出：スチル表示
[wait time="2000"]
[messageTrue]
[ShowMiyuki_Left face="seriously"]
; 桜良漫符：キラキラ
[DispSparkle_Right]
[ShowSakura_Right face="smile"]
#桜良
たった一人で音楽もない中歌い始めて、[r]
すっごくカッコよかったんだよ！！[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
あ、あれはただ、場をつなぐために必要だったから。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
今だったら私もそうしたかもしれないけど、[r]
でもあの時誰よりも勇気があったのは深雪ちゃんだったよ。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
深雪ちゃんの後ろ姿がすごく大きくて、[r]
輝いてるみたいだったんだ。[p]

; 深雪漫符：汗
[DispSweat_Left]
[ChangeCharaFace name="miyuki" face="blush"]
#深雪
（え、何かしらこれは。[r]
_　私、褒められてるの？桜良本人から？なんで？）[p]

[FreeDispSweat]
#深雪
（私、一生分の運を今日使ってるのかしら？？？）[p]

[ChangeCharaFace name="sakura" face="close_eye"]
#桜良
深雪ちゃんのあの姿が見られたのはよかったなって、[r]
不謹慎かもしれないけど思っちゃった。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
だから、私の中だと悪いばっかりじゃないんだ。[p]

#桜良
深雪ちゃんからしたら、思い出したくないかもだけど...[p]

; 画面演出解除：スチル表示
; 深雪漫符：キラキラ
[DispSparkle_Left]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
いえ、たった今人生で二番目くらいに[r]
いい思い出にランクアップしたから、心配しないで。[p]

[FreeDispSparkle]
#深雪
（一番は今、目の前で褒めてもらっていることだわ）[r]
_　え、なんで私録音してなかったのかしら？）[p]

#桜良
そうなの？[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
褒めてくれてありがとう。[r]
あなたがそう言ってくれるなら、[r]
今後もかっこよくいないといけないわね。[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
...今も十分、かっこいいと思うけどな。[p]

; 深雪漫符：はてな
[DispQuestion_Left]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
今、何か言っていた？[r]
ごめんなさい、よく聞こえなくて...[p]

[FreeDispQuestion]
; 桜良漫符：はてなびっくり
[DispQS_Right]
[Jumping name="sakura"]
#桜良
う、ううん！[r]
なんでもない！[p]

[FreeDispQS]
#深雪
そう？なら話を戻すわよ。[r]
ひとまずこのマイクをどうにかすればよいのかしら。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
そ、そうだね。[r]
あの時みたいに、スポットライトの下に立ってみたらどうかな？[p]

#深雪
あの時の再現ということね。[r]
わかったわ[p]

[messageFalse]
[chara_move name="miyuki" left="550" anim="true" time="4000" wait="false"]
[wait time="100"]
[chara_move name="sakura" left="1100" anim="true" time="4000" wait="false"]
[PlayFootStep]
[wait time="4500"]
[messageTrue]
[autostop]
[cancelskip]

#深雪
立つだけじゃダメみたいね。[r]
マイクに触れてみるわ。[p]

[PlayBell]
[flasheffect]
[messageFalse]
[Freelayer1]
[HideAll time="100"]
[bg storage="episode1/white.png" time="100"]
[wait time="500"]
[messageTrue]
[autostop]
[cancelskip]
 
#桜良
キャッ！！[p]

#深雪
桜良！[p]
[messageFalse]
[free layer="1" name="mikestand"]
[return]