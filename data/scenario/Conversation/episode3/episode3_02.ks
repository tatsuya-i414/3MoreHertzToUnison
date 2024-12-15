;-------------------------------------------------------
; 張り紙
;-------------------------------------------------------
; 布団未所持
; 初回調査時
[if exp="f.isFutonGet == 0 && f.isClickedPoster_first == 'true' "]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    張り紙...？[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="trouble"]
    #桜良
    なんだろう、記号と矢印？[p]

    #深雪
    脱出のヒントだとは思うけれど...[r]
    桜良、何か心当たりはある？[p]

    #桜良
    まる、さんかく、しかく...？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    ......[p]

    #深雪
    この張り紙だけでは不十分ね。[r]
    他の場所も調べてみましょう。[p]

    [HideMiyuki]
    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'center'
    [endscript]
    [ChangeCharaPosition]
    #桜良
    ごろ合わせとかかな...？[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    あれ、深雪ちゃんいつのまにそっちに！？[r]
    待ってー！[p]
; 布団未所持
; 二回目以降
[elsif exp="f.isFutonGet == 0 && f.isClickedPoster_first == 'false' "]
    [ShowSakura_Center face="trouble"]
    #桜良
    なんで最後だけ「S」が入ってるのかな？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    確かに、他は図形だけなのに、[r]
    一つだけ文字が入っているのも不自然ね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    この「S」の意味って何だろう。[r]
    星の形だからスターの頭文字とか？[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    なるほど、そうかもしれないわ。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    問題はほかの図形に何も文字がないことだけれど。[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    そうだった...[r]
    うう～～どうして文字が入ってないんだ～[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    （もしかしたら、図形に関するヒントがあるのかも。[r]
    _　もう一度部屋をよく見てみようかしら...）[p]
; 布団所持
[elsif exp="f.isFutonGet == 1"]
    [ShowSakura_Center]
    #桜良
    これってボタンを押す順番を示してたんだね！[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    部屋のあちこちにヒントを隠すなんて、[r]
    手の込んだことをするものね。[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    コンパスがなかったら、[r]
    どれがどれだかわからなくなるところだったよ～[p]

    #桜良
    方角の英語なんて覚えてないし...[p]

    #深雪
    そうは言うけれど、[r]
    桜良って方向音痴ではないわよね？[p]

    #深雪
    登山ロケの時、コンパス無しで方角を当てて、[r]
    ガイドさんを驚かせていたじゃない。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あれはたまたまだよ～！[r]
    ぜんぶ勘で言ったら当たっただけ！[p]

    #桜良
    深雪ちゃんだって、私がけがをしたとき、[r]
    すごい速さで手当てしてくれたよね！[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    あれも手際が良すぎるってガイドさんびっくりしてたよ！[p]

    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    あれはたくさん練習したから...[p]

    #深雪
    （桜良の綺麗な肌に傷が残ってほしくないもの...）[p]

    #桜良
    深雪ちゃんと一緒だったら、[r]
    もし遭難してもなんとかなるかも？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    まず遭難なんて絶対させないけれど...[r]
    でも、そうね。[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    そうなったらあなたの方向感覚も役に立ちそう。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    えへへ、そういうことなら、[r]
    これから方向感覚も鍛えてみたり？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    歌やダンスのレッスン最優先。[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    そうだよねえ～...[p]
[endif]
[HideAll]
[return]