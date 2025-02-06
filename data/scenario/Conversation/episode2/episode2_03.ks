;-------------------------------------------------------
; 簡易更衣室
;-------------------------------------------------------
; カーテン未所持
; 初回調査時
[if exp="f.isCurtainGet == 0 && f.isClickedFittingRoom_first == 'true' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    これって簡易更衣室かな？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    カーテンがないことを除けば、そうでしょうね。[p]

    #桜良
    このままだと筒抜けだもんね。[r]
    でもこんなところに置いてあるのちょっと変だよね。[p]

    #桜良
    スタジオで衣装替えなんてしないもの。[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    普通に考えればそうでしょうけど...[p]

    #深雪
    更衣室があるのは、[r]
    そうする必要性があるということだと思うわ。[p]

    ; 桜良漫符：電球
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    ここで着替えてくださいね、ってことだね！[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    いくら深雪ちゃんと二人きりとはいえ、[r]
    隠しカメラがあるならそのあたりで着替えるのはダメだよね！[p]

    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    そうね。どこから撮られてるかわからない以上、、ここを使いましょう。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    お洋服もカーテンも、どこかで見つけなきゃだね。[r]
    ひとまず探しに行こう！[p]
    [if exp="f.isClickedFittingRoom_first == 'true' "]
        [iscript]
            f.isClickedFittingRoom_first = 'false'
        [endscript]
    [endif]
    [HideAll]
    [JumpStudioRoom]
; カーテン未所持
; 二回目以降
[elsif exp="f.isCurtainGet == 0 && f.isClickedFittingRoom_first == 'false' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    深雪ちゃんって普段のお洋服もクールでかっこいいよね。[p]

    ; 桜良漫符：はてな
    #桜良
    普段お洋服を買うときってどうしてるの？[r]
    一人でじっくり悩んだり、お友達と買いに行ったり？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    最近はネットで済ませることも多いわ。[r]
    もともとあまり服を持たない主義なの。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    少ない服で着回しで工夫するタイプなんだ！[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    私はかわいい！って思ったらつい買っちゃうの。[r]
    クローゼットパンパンなのに～！[p]

    #桜良
    もう少し控えないとな、とは思ってるんだけど～！[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    片付けが大変ならいつでも言って。[r]
    手伝うわ。[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    さすがにそれはちょっと...[p]

    [ChangeCharaFace name="miyuki" face="impatience"]
    #深雪
    そ、そうよね。不躾だったわ、ごめ...[p]

    ; 桜良漫符：汗
    [ChangeCharaFace name="sakura" face="blush"]
    #桜良
    私の方が歳上なのに、[r]
    お部屋の片付けまで手伝ってもらうのは申し訳なさすぎるよ！！[p]

    #深雪
    あっ、そういう意味...[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    ...気にしなくていいのに。[p]

    ; 桜良漫符：ぷんぷん
    #桜良
    私が気にするのー！！[p]
    [HideAll]
    [JumpStudioRoom]
; カーテン所持
; 初回調査時
[elsif exp="f.isCurtainGet == 1 && f.isClickedFittingRoom_first == 'true' "]
    [ShowMiyuki_Center]
    #深雪
    カーテンをつけなおせば更衣室として使えそうね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="close_mouth"]
    #桜良
    そういえばアイドル衣装って一人で着たことないかも。[p]

    #桜良
    いつも誰かに手伝ってもらうよね？[r]
    ちゃんと着られるかな。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    ......[p]

    #深雪
    （そういえばそうだ、[r]
    _　いつもスタッフさんに手伝ってもらっていて...）[p]

    #深雪
    （私、この繊細な装飾を無事につけられるかしら...）[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    でも深雪ちゃんと協力すれば大丈夫だね！[p]

    ; 深雪漫符：びっくり
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    えっ。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あっ、深雪ちゃん先お着替えする？[r]
    手伝うよー！[p]

    ; 深雪漫符：はてなびっくり
    ; 深雪漫符：集中線
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    えっ！？[p]

    #深雪
    ちょ、ちょっと待って心の準備が！[p]

    ; 桜良漫符：はてな
    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    心の準備？[r]
    でも衣装って一人できるのすごく大変だよ？[p]

    #深雪
    それはそうなんだけど...[p]

    ; 深雪漫符：もやもや
    #深雪
    （あなたに密着されるほうに準備が必要なのよ！）[p]

    #深雪
    （うう、でも私ひとりじゃ無理だし...[r]
    _　覚悟を決めないと...）[p]
; カーテン所持
; 二回目以降
[elsif exp="f.isCurtainGet == 1 && f.isClickedFittingRoom_first == 'false' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    どう？準備できた？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    ううん...[p]
[endif]
[HideAll]
[return]

*UseCurtain
[nolog]
; 衣装を所持していない場合
[if exp="f.isDressGet == 0"]
    [ShowMiyuki_Center face="seriously"]
    #深雪
    き、着替える前に衣装をとってきましょう！[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="surprise"]
    #桜良
    そうだった、置いたままだった！[p]

    #桜良
    じゃあ急いで取りに行こう！[p]

    [HideSakura]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'center'
    [endscript]
    [ChangeCharaPosition]
    [DarkenBackground]
    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    （今のうちに冷静になるしかないわね）[p]

    #深雪
    （素数でも数えましょう。[r]
    _　1、3、5、7、11，13...）[p]

    #桜良
    深雪ちゃーん？[r]
    なにしてるのー？[p]

    [free_filter]
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    はっ、い、今行くわ！[p]
    [HideAll]
    [JumpStudioRoom]
; 衣装を所持している場合
[elsif exp="f.isDressGet == 1"]
    [ShowMiyuki_Center]
    #深雪
    あ、あの...[r]
    お手柔らかにお願いします...[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="smile"]
    #桜良
    もう、どうしてそんなに恥ずかしがるの～！[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    じゃあカーテン先につけちゃって、[r]
    さっと着替えちゃおう！[p]

    #深雪
    はい。[p]

    ; キャラの立ち絵は暗転状態の時に入れ替え
    ; 衣装交換後の立ち絵は通常時のものではなく、
    ; 明転した際のセリフにそのまま続けられるよう指定の表情に設定
    ; このイベント後、立ち絵はアイドル衣装で固定（思い出2の間のみ）
    [messageFalse]
    [iscript]
        f.itemVisible[0] = 'true'
        f.itemVisible[1] = 'episode2_dress'
    [endscript]
    [PlayRustlingClothes]
    [blackout exp="f.isTentDown == 1" storage_1="episode2/studioroom_tentdown.png" storage_2="episode2/studioroom.png"]
    [messageTrue]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    ふう、やっぱりちょっと大変だったね。[r]
    衣装さんって本当にすごいなあ。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    そうね...[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    大丈夫？[r]
    確かにちょっと疲れたけど...[p]

    #深雪
    大丈夫よ。[r]
    寧ろエネルギー満タン。[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    えねるぎーまんたん？[p]

    ; 深雪漫符：キラキラ
    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    はあ、今日が命日でもいい...[p]

    #桜良
    本当にエネルギー満タンなのかなそれ！？[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    当たり前でしょ。[r]
    ほら、部屋の探索に戻りましょ。[p]

    #桜良
    え、ええ...？[p]

    [HideSakura]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'center'
    [endscript]
    [ChangeCharaPosition]
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    （すこしだけ触れた桜良の手、あたたかかったな...）[p]
[endif]
[HideAll]
[return]

*NotUseCurtain
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center]
    #深雪
    もうちょっと、もうちょっとだけ待って。[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    心頭滅却するまで待ってほしい...[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    ; 桜良漫符：はてなびっくり
    [ShowSakura_Right face="surprise"]
    #桜良
    お着替えするだけなのに！？[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    そ、そこまで言うなら待ってるね。[r]
    準備ができたら言って！[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    ありがとう、すぐ済むから[p]

    [DarkenBackground]
    #深雪
    （うう、ごめんなさい桜良。[r]
    _　今の私絶対変よね...）[p]
    [endnolog]
    [free_filter]
[endif]
[HideAll]
[JumpStudioRoom]