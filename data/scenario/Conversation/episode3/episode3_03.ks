;-------------------------------------------------------
; 帽子
;-------------------------------------------------------
; 初回調査時
[if exp="f.isClickedHat_first == 'true' "]
    [ShowMiyuki_Center]
    #深雪
    いたって普通の登山用帽子ね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    ロケの時はすっごくお世話になったよね。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    帽子をかぶって日焼け止めをあれだけ塗っても、[r]
    顔が真っ赤になるとは思わなかったけれどね...[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    深雪ちゃん、顔赤くて痛そうだった...[p]

    #深雪
    山の紫外線をなめてたわ。[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    そもそも、富士山ロケなんて企画したのは誰なのかしら？[p]

    #深雪
    危険で、日焼けもして、高山病にもなって、[r]
    デビュー直後のアイドルがやるには過酷すぎるわよ。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あれ、深雪ちゃん聞いてない？[r]
    これって帆南ちゃん企画したんだって話。[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    ...帆南？[p]

    #桜良
    もともとはアウトドア系の企画やりたいね、[r]
    って言ってたみたいなんだけど...[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    どんどん盛り上がって富士山登ろう！って。[r]
    マネージャーもそれに乗っちゃったみたい。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    なんでそこで誰も止めないのよ...[p]

    #深雪
    いざ計画を立てたら直前に仕事が入っていけなくなって、[r]
    代打で私たちが行くことになったのね...[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    あのセンター、次会ったときしばく。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    で、でも楽しかったから結果オーライじゃない！？[p]

    #深雪
    ......[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    否定できないから、デコピンくらいにしておくわ。[p]
; 二回目以降
[elsif exp="f.isClickedHat_first == 'false' "]
    [ShowSakura_Center]
    #桜良
    富士山ロケ、私実はすごく楽しみだったんだ。[p]

    #桜良
    一人だったら絶対登ろうって思わないし、[r]
    思っていたよりずっと大変だったけど...[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    でもね、山小屋で朝ご飯を食べながら見た朝焼けが忘れられないんだ。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="surprise"]
    #深雪
    意外ね。[r]
    てっきり頂上が印象に残っていると思ったのに。[p]

    #桜良
    山小屋を出て初めて見る景色だったからかも！[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    深雪ちゃんは、登ってみてどうだった？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    達成感は確かにあったわ。[p]
    まあ、結果的にはよい思い出かしらね。[p]

    #桜良
    じゃあほかの山も登ってみない！？[p]

    #深雪
    それは勘弁して。[p]

    #桜良
    ええ～！薄情な～！[p]
[endif]
[HideAll]
[return]