;-------------------------------------------------------
; 導入パート
;-------------------------------------------------------
[DispLocation text="楽屋"]
[ShowSakura_Center]
#桜良
ようやく収録おわった～！[r]
お疲れ様でした！[p]

#マネージャー
「Aquarium」のお二人とも、収録お疲れ様です。[r]
少し長引いたから疲れたでしょう？[p]

; 桜良漫符：キラキラ
#桜良
大丈夫ですよ！[r]
まだまだ元気いっぱいですから！[p]

[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
[ShowMiyuki_Left]
#深雪
そうは言うけど、あれだけ喉を酷使したんだから、[r]
休めるときに休んでおくことも重要よ。[p]

#深雪
あなた、気が付くとずっとおしゃべりしてるんだから。[r]
これでも口に入れて静かにしておきなさい。[p]

[ChangeCharaFace name="sakura" face="smile"]
[Jumping name="sakura"]
#桜良
これは...のど飴？[r]
わあ、ありがとう深雪ちゃん！[p]

#深雪
......[p]

; 深雪漫符：集中線
[DarkenBackground]
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（くぅっ、不意打ちで浴びる桜良の笑顔、[r]
_　疲れた体にダイレクトアタックだわ...[r]
_　うっかり昇天するかと思った...）[p]

#深雪
（さっきまで完璧な桜良の美声に[r]
_　ケチばかりつけていたプロデューサーに[r]
_　腹が立って仕方なかったけれど）[p]

#深雪
（彼女が笑顔なら何でもいいか。[r]
_　あのプロデューサーは今後一切出禁で済ませてあげましょう）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（はあ、ボツにした桜良の音声ファイル、[r]
_　捨てるくらいなら私にくれないかしら？[r]
_　永久保存版として目覚ましにするのに...）[p]

[free_filter]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
大したことじゃないわよ、大げさね。[r]
それよりマネージャー、[r]
今回の収録でメンバー全員録り終わったんでしょう？[p]

#マネージャー
そうですね。[r]
他の三人もばっちりでしたよ！[p]

; 桜良漫符：もやもや
[ChangeCharaFace name="sakura" face="trouble"]
#桜良
前みたいにメンバー全員で録れたらいいのになあ。[p]

#桜良
柚乃ちゃんに朱理ちゃん、帆南ちゃん...[r]
みんなで歌うとあんなに楽しいのに。[p]

#マネージャー
私もそうしたいですが、[r]
皆さんスケジュールがパンパンですから...[p]

[ChangeCharaFace name="miyuki" face="close_eye"]
#深雪
それだけ必要としてもらえているのだから、[r]
ありがたいことだわ。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
それもそっか。[r]
それならみんなで集まれる時間は大切にしようね！[p]

#深雪
...そうね。[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（私は珍しくあなたと二人きりの仕事で、[r]
_　うれしくて仕方なかった、[r]
_　なんてとても言えないわね）[p]

#マネージャー
それじゃあ、次の移動時間まで[r]
この後のスケジュールを再確認しましょうか。[p]

#マネージャー
桜良さんの次の仕事は...[r]
公式チャンネルのVlog撮影ですね。[p]

#マネージャー
今日は新しくできた複合型娯楽施設に行ってもらいます。[r]
大きなボウリング施設があるらしく、[r]
先方からぜひ来てほしいと。[p]

; 桜良漫符：はてなびっくり
[ChangeCharaFace name="sakura" face="surprise"]
[Jumping name="sakura"]
#桜良
もしかして私のボウリング好きを知っていて！？[p]

#マネージャー
そのとおりです。[r]
ぜひ腕前を披露してほしいとのことですよ。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
わあ！楽しみです！[r]
頑張っちゃいますよ！[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（ボウリングしているときの表情、[r]
_　いつだって真剣なのがいいのよね）[p]

#深雪
（私はなぜメンバーなのに、[r]
_　まだ生で見たことがないのかしら？）[p]

#深雪
（ああ、私も一緒にVlog撮影についていきたい...）[p]

#マネージャー
深雪さんは雑誌の撮影ですね。[r]
朱理さんと合流して撮影を終えた後、インタビューがあります。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
新曲とライブの宣伝、でしょう？[p]

#マネージャー
はい。[r]
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
（自分の求められているキャラはわかっている。[r]
_　クールでかっこよく、涼しげな姿が求められていることも）[p]

#深雪
（でも、それでも...）[p]

; 深雪漫符：集中線
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（桜良の歌と笑顔に惹かれてこの業界に飛び込んだ以上、[r]
_　もっと彼女と仕事がしたい...！）[p]

[camera zoom="1.5" x="" y="50" time="1000" wait="true"]
#深雪
（なかなか近づく機会が少なくて[r]
_　まだ一緒にプライベートで遊びに行ったこともないし！）[p]

[camera zoom="2.5" x="" y="200" time="1000" wait="true"]
#深雪
（二人きりのロケも一回しかないし！[r]
_　デュエット曲もないし！）[p]

[reset_camera]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
（キャラが正反対なのはわかっているけど、[r]
_　ここまで一緒の仕事が少ないなんて誰が思うの！？）[p]

#深雪
（せっかく同じメンバーなのに、[r]
_　どうしてちょっと距離を感じるの！）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（まさか嫌われてる...までいかなくても、[r]
_　苦手意識を持たれてるのかしら...）[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
（愛想がないことは自覚しているけれど...[r]
_　帆南みたいに、もっとフランクになるべき...？[r]
_　いやでも、あのコミュ力の天才をどう見習えばいいのよ！）[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right]
[free_filter]
#マネージャー
そろそろ時間ですし、移動しましょう。[r]
桜良さんは事務所から車が来ます。[r]
途中まで一緒に行きましょう。[p]

#桜良
わかりました！[p]

#深雪
......[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
あれ、深雪ちゃん？[p]

; 深雪漫符：びっくり
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
はっ。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
ごめんなさい。少し考え事をしてて。[r]
行きましょうか。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
あ...うん。大丈夫ならいいんだ！[r]
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