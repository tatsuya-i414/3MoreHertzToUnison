;-------------------------------------------------------
; 簡易更衣室
;-------------------------------------------------------
; カーテン未所持
; 初回調査時
[if exp="f.isCurtainGet == 0 && f.isClickedFittingRoom_first == 'true' "]
    ; 桜良表情：通常
    #桜良
    これって簡易更衣室かな？[p]

    ; 深雪表情：通常
    #深雪
    カーテンがないことを除けば、そうでしょうね。[p]

    #桜良
    このままだと筒抜けだもんね。[r]
    でもこんなところに置いてあるのちょっと変だよね。[p]

    #桜良
    スタジオで着替えるなんてしないもの。[p]

    #深雪
    普通に考えればそうでしょうけど...[p]

    #深雪
    更衣室があるのは、[r]
    着替える必要性があるということだと思うわ。[p]

    #桜良
    なるほど、ここで着替えてくださいね、ってことだね！[p]

    ; 桜良表情：笑顔
    #桜良
    いくら深雪ちゃんと二人きりとはいえ、[r]
    隠しカメラがあるならそのあたりで着替えるのはダメだよね！[p]

    #深雪
    そうね。どこから撮られてるかわからない以上、[r]
    着替えるならここでやりましょう。[p]

    ; 桜良表情：通常
    #桜良
    お洋服もカーテンも、どこかで見つけなきゃだね。[r]
    ひとまず探しに行こう！[p]
    [if exp="f.isClickedFittingRoom_first == 'true' "]
        [iscript]
            f.isClickedFittingRoom_first = 'false'
        [endscript]
    [endif]
    [layer3False]
    [JumpStudioRoom]
; カーテン未所持
; 二回目以降
[elsif exp="f.isCurtainGet == 0 && f.isClickedFittingRoom_first == 'false' "]
    ; 桜良表情：通常
    #桜良
    深雪ちゃんって普段お洋服もクールでかっこいいよね。[p]

    #桜良
    普段お洋服を買うときってどうしてるの？[r]
    一人でじっくり悩んだり、お友達と買いに行ったり？[p]

    ; 深雪表情：通常
    #深雪
    最近はネットで済ませることも多いわ。[r]
    もともとあまり服を持たない主義なの。[p]

    ; 桜良表情：驚き
    #桜良
    少ない服で着回しで工夫するタイプなんだ！[p]

    #桜良
    私はかわいい！って思ったらつい買っちゃって、[r]
    いつもクローゼットパンパンなのに～！[p]

    ; 桜良表情：困り
    #桜良
    もう少し控えないとな、とは思ってるんだけど～！[p]

    #深雪
    片付けが大変ならいつでも言って。[r]
    手伝うわ。[p]

    #桜良
    さ、流石にそれは申し訳ないです...[r]
    自分で頑張ってみるよ...[p]

    ; 深雪表情：困り
    #深雪
    （遊びに行くのは、まだダメね...[r]
    　それはそうよね...残念...）[p]
    [layer3False]
    [JumpStudioRoom]
; カーテン所持
; 二回目以降
[elsif exp="f.isCurtainGet == 1 && f.isClickedFittingRoom_first_whenCurtainGetting == 'false' "]
    #
    【カーテン所持/二回目以降】のセリフを追加予定[p]
; カーテン所持（カーテン未所持の時に一度調べていない場合）
; 初回調査時
[elsif exp="f.isCurtainGet == 1 && f.isClickedFittingRoom_first == 'true' "]
    #
    【カーテン所持/初回調査時（一度も調べていない）】のセリフを追加予定[p]
    [if exp="f.isClickedFittingRoom_first_whenCurtainGetting == 'true' "]
        [iscript]
            f.isClickedFittingRoom_first_whenCurtainGetting = 'false'
        [endscript]
    [endif]
; カーテン所持（カーテン未所持の時に一度調べている場合）
; 初回調査時
[elsif exp="f.isCurtainGet == 1 && f.isClickedFittingRoom_first == 'false'"]
    #
    【カーテン所持/初回調査時（一度調べている）】のセリフを追加予定[p]
    [if exp="f.isClickedFittingRoom_first_whenCurtainGetting == 'true' "]
        [iscript]
            f.isClickedFittingRoom_first_whenCurtainGetting = 'false'
        [endscript]
    [endif]
[endif]
[return]

*UseCurtain
[nolog]
#
カーテン使用時のセリフを追加予定[p]
[endnolog]
[return]

*NotUseCurtain
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    #
    アイテム使用キャンセル時のセリフを追加予定[p]
    [endnolog]
    [layer3False]
[endif]
[JumpStudioRoom]