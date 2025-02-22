;-------------------------------------------------------
; 紙
;-------------------------------------------------------
; アイブロウペンシル未所持
; 初回調査時
[if exp="f.isPencilGet == 0 && f.isClickedPaper_first == 'true' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    深雪ちゃん、バックスクリーンをおろしたときに、[r]
    何か紙が落ちたみたい。[p]

    #桜良
    白紙みたいだけど...[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    これは、メモ帳？[p]

    #深雪
    表面が少しだけぼこぼこしているみたいね。[r]
    何か書かれていたのかも。[p]

    ; 桜良漫符：ぐるぐる
    [DispTrouble_Right]
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    何とかして読めないかな。[r]
    う～～～～～ん...[p]

    [FreeDispTrouble]
    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    そんなに目を凝らしても見えないと思うわよ。[p]

    #深雪
    （しかめ面をしている桜良もいいわね。[r]
    _　レアだわ...）[p]

    #桜良
    なんとかしてわからないかなあ。[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    使えそうな道具がないか、探してみましょう。[p]
    [if exp="f.isClickedPaper_first == 'true' "]
        [iscript]
            f.isClickedPaper_first = 'false'
        [endscript]
    [endif]
    [HideAll]
    [JumpStudioRoom]
; アイブロウペンシル未所持
; 二回目以降
[elsif exp="f.isPencilGet == 0 && f.isClickedPaper_first == 'false' "]
    [ShowSakura_Center face="seriously"]
    #桜良
    ......[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    どうして、紙をなでてるの。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    触ってわからないかなあ、と思って、[r]
    一生懸命なぞってました！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    かわッ...[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    かわ？[p]

    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    んんっ、なんでもない。[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    あなたが解読を試みている間、[r]
    私も別の方法を考えるわね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    わかった、頑張ってみるね！[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    ええ、お願い。[p]
    [HideAll]
    [JumpStudioRoom]
; アイブロウペンシル所持
; 二回目以降
[elsif exp="f.isPencilGet == 1 && f.isClickedSpeaker_first_whenPencilGetting == 'false' "]
    ; 深雪漫符：もやもや
    [DispFuzzy_Center]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    ......[p]

    [FreeDispFuzzy]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="close_mouth"]
    #桜良
    深雪ちゃん、[r]
    そんなに紙を見つめてどうしたの？[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    というか、もはやにらみつけてるよね！？[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    あ、ああ、ごめんなさい。[p]

    #深雪
    私がやったら先をつぶしそうで...[p]

    ; 桜良漫符：汗
    [DispSweat_Right]
    #桜良
    そ、そんなに覚悟を決めてたんだね...[p]

    [FreeDispSweat]
    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    私、やるね。[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    お願い。[p]
; アイブロウペンシル所持
; 初回調査時（ペンシル未所持の時に調べていない場合）
[elsif exp="f.isPencilGet == 1 && f.isClickedPaper_first == 'true' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    深雪ちゃん、バックスクリーンをおろしたときに、[r]
    何か紙が落ちたみたい。[p]

    #桜良
    白紙みたいだけど...[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    表面が少しだけぼこぼこしているみたいね。[r]
    何か書かれていたのかも。[p]

    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    なんとかしてわからないかなあ。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    あっ！[r]
    深雪ちゃん、さっきの道具使えないかな？[p]

    #桜良
    ほら、紙に寝かせて使って...[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    そうね、つい先入観でそういう使い方はしないと思っていたけど...[p]

    #深雪
    見方によっては筆記具にもなるわ。[r]
    早速試してみましょう。[p]
    [if exp="f.isClickedSpeaker_first_whenPencilGetting == 'true' "]
        [iscript]
            f.isClickedSpeaker_first_whenPencilGetting = 'false'
        [endscript]
    [endif]
; アイブロウペンシル所持
; 初回調査時（ペンシル未所持の時に一度調べている場合）
[elsif exp="f.isPencilGet == 1 && f.isClickedPaper_first == 'false' "]
    [ShowSakura_Center face="surprise"]
    #桜良
    あっ！[r]
    深雪ちゃん、さっきの道具使えないかな？[p]

    #桜良
    ほら、紙に寝かせて使って...[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="surprise"]
    #深雪
    そうね、つい先入観でそういう使い方はしないと思っていたけど...[p]

    #深雪
    見方によっては筆記具にもなるわ。[r]
    早速試してみましょう。[p]
    [if exp="f.isClickedSpeaker_first_whenPencilGetting == 'true' "]
        [iscript]
            f.isClickedSpeaker_first_whenPencilGetting = 'false'
        [endscript]
    [endif]
[endif]
[HideAll]
[return]

*UsePencil
[nolog]
[PlayScrubPencil]
[ChangeBackGround storage="episode2/paperletter.png" time="2000" method="fadeIn"]
; 先にタンスを開錠していた場合
[if exp="f.isKeyOpen == 1"]
    [ShowSakura_Center face="smile"]
    #桜良
    なにか浮かび上がってきたよ！[p]

    ; 桜良漫符：はてな
    [DispQuestion_Center]
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    「かおり」...？[r]
    この部屋に何か香りのするものってあったかな？[p]

    [FreeDispQuestion]
    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    特になかったように思うけれど...[p]

    ; 深雪漫符：電球
    [DispLighBulb_Left]
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    ...あ。[p]

    [FreeDispLighBulb]
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    何か思いついたの！？[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    さっきブロックをはめてタンスを開けたでしょう？[r]
    その色の並びって覚えてる？[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    確か左から赤、青、緑の順だったよね。[p]

    #深雪
    そう。そして、各色の最後の言葉だけ取ると、[r]
    あ｢か｣、あ「お」、みど「り」になる...[p]

    ; 桜良漫符：びっくり
    [DispSurprised_Right]
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    「かおり」って、そういうこと！？[p]

    [FreeDispSurprised]
    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    恐らくね。[p]

    ; 桜良漫符：汗
    [DispSweat_Right]
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    私たち、ヒント見ずに開けちゃったね。[p]

    [FreeDispSweat]
    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    運も実力のうち、ということにしておきましょう。[p]
[else]
    [ShowSakura_Center face="smile"]
    #桜良
    なにか浮かび上がってきたよ！[p]

    ; 桜良漫符：はてな
    [DispQuestion_Center]
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    「かおり」...？[r]
    この部屋に何か香りのするものってあったかな？[p]

    [FreeDispQuestion]
    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    特になかったように思うけれど...[r]
    この部屋のことだから、何かのヒントかも。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    それなら覚えておかなくちゃね！[p]

    #深雪
    それにしても、アイブロウペンシルが使えるなんてね。[p]

    #桜良
    メイクボックスに入っているのを見て、[r]
    もしかしたら使えるかな～って。[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    さすがね。私じゃ思いつかなかったかも。[r]
    メイク道具は顔に使うもの、と思い込んでたから。[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    そ、そうかなあ...[r]
    メイクするの好きだから、たまたまだよ。[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    桜良はメイクもいつも上手よね。[r]
    季節や服装に合わせて変えているのはすごい努力だと思う。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    深雪ちゃん、見ててくれてたの！？[p]

    #深雪
    なかなか伝える機会がなくて、伝えていなかったけれど...[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    いつも似合っていてとても素敵よ。[p]

    #桜良
    あ、えと...[p]

    ; 桜良漫符：キラキラ
    [DispSparkle_Right]
    [ChangeCharaFace name="sakura" face="blush"]
    #桜良
    ほ、ほめてくれてありがとう！！[r]
    すっごく嬉しい！！[p]

    [FreeDispSparkle]
    [PlayRun]
    [HideSakura]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'center'
    [endscript]
    [ChangeCharaPosition]
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    あっ、ちょっと桜良！？[r]
    どうして部屋の隅っこに...[r]
    私変なこといったかしら！？[p]
[endif]
[endnolog]
[HideAll]
[return]

*NotUsePencil
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center]
    #深雪
    もう少し待って。[r]
    先に見ておきたい場所があるの。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="close_mouth"]
    #桜良
    わかった！[r]
    準備ができたら言ってね！[p]
    [endnolog]
[endif]
[HideAll]
[JumpStudioRoom]