[ShowMiyuki_Center]
#深雪
（触ったことのないカメラだけど、[r]
_　なんとか使えそう）[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right]
#桜良
そういえばカメラを動かすのは大丈夫なんだね？[p]

#深雪
操作するだけなら問題ないのよ。[r]
組み立てやつけはずし、力加減が必須なものが苦手なの。[p]

#深雪
カメラで必要な組み立ては三脚くらいで、[r]
それは趣味で撮る分なら必須じゃないから[p]

#桜良
そっか、なるほどなあ...[p]

#桜良
ねね、深雪ちゃん。[r]
どんなポーズで写真撮る？[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
ポー、ズ...？[p]

#深雪
（か、考えてなかった...[r]
_　二人同じ画角に入っていればそれでいいかと...）[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
考えてみたら、お仕事でもプライベートでも、[r]
二人で写真を撮ったことないでしょ？[p]

#桜良
それならポーズもこだわりたいなーって。[p]

#桜良
深雪ちゃんはどうしたい？[p]

#深雪
ひゃっ！[r]
わ、私！？[p]

#深雪
（よく考えなくても桜良とのツーショットよね！？）[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
二人で映れるならもうそれだけで幸せよ。[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
ええっ、そんなことあるかな！？[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
（しまった、本心がつい口から...）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
ごめんなさい、私はどんなポーズでも構わないわ。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
そっか、うーん...[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
尊敬しているあなたと二人で写真を撮れるだなんて、[r]
それだけでうれしいってことよ。[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
えっ...？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
今だから言えるけれど、[r]
最初私はアイドルをやる気は全くなかったの。[p]

#深雪
やってみようと思ったのは、[r]
桜良、あなたのおかげよ。[p]

; スチル候補、事務所で初めて顔合わせしたときのシーン
#深雪
（事務所のアイドルプロジェクトに選ばれても、[r]
_　当時は興味なんてなくて、絶対に断ろうと思ってた）[p]

#深雪
（頑なな私を見たマネージャーに、[r]
_　メンバーに会うだけはしてほしいといわれて...）[p]

#深雪
（そこで、あなたと出会ったんだわ）[p]

#深雪
初顔合わせの日、あなたを見て驚いたの。[r]
こんなに笑顔が素敵な女の子がいるんだって。[p]

#深雪
てっきりあなたがセンターなのかと思ったら違って、[r]
当時は理解できなかったわね。[p]

; スチルから通常背景に変更
#桜良
そうだったんだ...[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
（正確にはあなたと仲良くなりたくて[r]
_　アイドルやることを決めたんだけど）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
（でも、尊敬しているのは事実よ）[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
えへへ...胸のあたりがくすぐったい。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
私ね、最初は自信なかったんだ。[p]

#桜良
みんなすっごくかわいくて美人で、[r]
歌もダンスも上手で、私足引っ張らないかなって。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
でも、深雪ちゃんがそう考えてくれてたって、[r]
そう思ったらすごくうれしい。[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
あなたは誰よりも魅力的なアイドルよ。[r]
私が保証する。[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
う、うん、ありがとう！[p]

#桜良
...私だって、深雪ちゃんのこと、[r]
誰よりもすごいアイドルって思ってるよ。[p]

[ChangeCharaFace name="miyuki" face="blush"]
#深雪
桜良、い、今なんて？[p]

#桜良
え、えーい！！[p]

[PlayControlPanelButtonClick]
[HideAll]
#深雪
ちょ、ちょっと桜良！？[p]

[PlayPhotographing]
[flasheffect]
[messageFalse]
[wait time="1000"]

; 思い出3に画面遷移する前に、キャラの衣装を私服へ変更
[layer1True]
[return]