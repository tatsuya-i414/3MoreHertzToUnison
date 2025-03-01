;-------------------------------------------------------
; 導入パート
;-------------------------------------------------------
[DispLocation text="楽屋"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `楽屋` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[ShowSakura_Center]
#桜良
ようやく収録おわった～！[rhr]
お疲れ様でした！[p]

#マネージャー
「Aquarium」のお二人とも、収録お疲れ様です。[rhr]
少し長引いたから疲れたでしょう？[p]

; 桜良漫符：キラキラ
[DispSparkle_Center]
#桜良
大丈夫ですよ！[rhr]
まだまだ元気いっぱいですから！[p]

[FreeDispSparkle]
[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
[ShowMiyuki_Left]
#深雪
そうは言うけど、あれだけ喉を酷使したんだから、[rhr]
休めるときに休んでおくことも重要よ。[p]

#深雪
あなた、気が付くとずっとおしゃべりしてるんだから。[rhr]
これでも口に入れて静かにしておきなさい。[p]

[ChangeCharaFace name="sakura" face="smile"]
[Jumping name="sakura"]
#桜良
これは...のど飴？[rhr]
わあ、ありがとう深雪ちゃん！[p]

#深雪
......[p]

; 深雪漫符：集中線
[DispSaturatedLine_Left]
[DarkenBackground]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（くぅっ、不意打ちで浴びる桜良の笑顔、[rhr]
_　疲れた体にダイレクトアタックだわ...[rhr]
_　うっかり昇天するかと思った...）[p]

[FreeDispSaturatedLine]
#深雪
（さっきまで完璧な桜良の美声に[rhr]
_　ケチばかりつけていたプロデューサーに[rhr]
_　腹が立って仕方なかったけれど）[p]

#深雪
（彼女が笑顔なら何でもいいか。[rhr]
_　あのプロデューサーは今後一切出禁で済ませてあげましょう）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（はあ、ボツにした桜良の音声ファイル、[rhr]
_　捨てるくらいなら私にくれないかしら？[rhr]
_　永久保存版として目覚ましにするのに...）[p]

[free_filter]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
大したことじゃないわよ、大げさね。[rhr]
それよりマネージャー、[rhr]
今回の収録でメンバー全員録り終わったんでしょう？[p]

#マネージャー
そうですね。[rhr]
他の三人もばっちりでしたよ！[p]

; 桜良漫符：もやもや
[DispFuzzy_Right]
[ChangeCharaFace name="sakura" face="trouble"]
#桜良
前みたいにメンバー全員で録れたらいいのになあ。[p]

[FreeDispFuzzy]
#桜良
柚乃ちゃんに朱理ちゃん、帆南ちゃん...[rhr]
みんなで歌うとあんなに楽しいのに。[p]

#マネージャー
私もそうしたいですが、[rhr]
皆さんスケジュールがパンパンですから...[p]

[ChangeCharaFace name="miyuki" face="close_eye"]
#深雪
それだけ必要としてもらえているのだから、[rhr]
ありがたいことだわ。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
それもそっか。[rhr]
それならみんなで集まれる時間は大切にしようね！[p]

#深雪
...そうね。[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（私は珍しくあなたと二人きりの仕事で、[rhr]
_　うれしくて仕方なかった、[rhr]
_　なんてとても言えないわね）[p]

#マネージャー
それじゃあ、次の移動時間まで[rhr]
この後のスケジュールを再確認しましょうか。[p]

#マネージャー
桜良さんの次の仕事は...[rhr]
公式チャンネルのVlog撮影ですね。[p]

#マネージャー
今日は新しくできた複合型娯楽施設に行ってもらいます。[rhr]
大きなボウリング施設があるらしく、[rhr]
先方からぜひ来てほしいと。[p]

; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
[Jumping name="sakura"]
#桜良
もしかして私のボウリング好きを知っていて！？[p]

[FreeDispQS]
#マネージャー
そのとおりです。[rhr]
ぜひ腕前を披露してほしいとのことですよ。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
わあ！楽しみです！[rhr]
頑張っちゃいますよ！[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（ボウリングしているときの表情、[rhr]
_　いつだって真剣なのがいいのよね）[p]

#深雪
（私はなぜメンバーなのに、[rhr]
_　まだ生で見たことがないのかしら？）[p]

#深雪
（ああ、私も一緒にVlog撮影についていきたい...）[p]

#マネージャー
深雪さんは雑誌の撮影ですね。[rhr]
朱理さんと合流して撮影を終えた後、インタビューがあります。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
新曲とライブの宣伝、でしょう？[p]

#マネージャー
はい。[rhr]
お疲れの中すみませんが、よろしくお願いしますね。[p]

#深雪
わかったわ。[p]

[HideSakura]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'center'
[endscript]
[ChangeCharaPosition]
[DarkenBackground]
#深雪
（自分の求められているキャラはわかっている。[rhr]
_　クールでかっこよく、涼しげな姿が求められていることも）[p]

#深雪
（でも、それでも...）[p]

; 深雪漫符：集中線
[DispSaturatedLine_Center]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（桜良の歌と笑顔に惹かれてこの業界に飛び込んだ以上、[rhr]
_　もっと彼女と仕事がしたい...！）[p]

[FreeDispSaturatedLine]
[camera zoom="1.5" x="" y="50" time="1000" wait="true"]
#深雪
（なかなか近づく機会が少なくて[rhr]
_　まだ一緒にプライベートで遊びに行ったこともないし！）[p]

[camera zoom="2.5" x="" y="200" time="1000" wait="true"]
#深雪
（二人きりのロケも一回しかないし！[rhr]
_　デュエット曲もないし！）[p]

[reset_camera]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
（キャラが正反対なのはわかっているけど、[rhr]
_　ここまで一緒の仕事が少ないなんて誰が思うの！？）[p]

#深雪
（せっかく同じメンバーなのに、[rhr]
_　どうしてちょっと距離を感じるの！）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（まさか嫌われてる...までいかなくても、[rhr]
_　苦手意識を持たれてるのかしら...）[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
（愛想がないことは自覚しているけれど...[rhr]
_　帆南みたいに、もっとフランクになるべき...？[rhr]
_　いやでも、あのコミュ力の天才をどう見習えばいいのよ！）[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right]
[free_filter]
#マネージャー
そろそろ時間ですし、移動しましょう。[rhr]
桜良さんは事務所から車が来ます。[rhr]
途中まで一緒に行きましょう。[p]

#桜良
わかりました！[p]

#深雪
......[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
あれ、深雪ちゃん？[p]

; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
はっ。[p]

[FreeDispSurprised]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
ごめんなさい。少し考え事をしてて。[rhr]
行きましょうか。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
あ...うん。大丈夫ならいいんだ！[rhr]
じゃあ、先行ってるね。[p]

[PlayFootStep]
[HideSakura]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'center'
[endscript]
[ChangeCharaPosition]
[messageFalse]
[wait time="2000"]
[ChangeCharaFace name="miyuki" face="trouble"]
[messageTrue]
#深雪
...はぁ。[p]

#深雪
（もっと桜良と一緒にいられたらいいのに...）[p]
[PlayFootStep]
[HideAll]
[DeleteDispLocation]
[return]