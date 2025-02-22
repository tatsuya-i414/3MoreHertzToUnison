;-------------------------------------------------------
; 道具箱
;-------------------------------------------------------
; 箱未開封時
[if exp="f.isClickedToolBox_first == 'true' && f.leftNum != 4 && f.centerNum != 5 && f.rightNum != 6"]
    ; 桜良漫符：はてな
    [DispQuestion_Center]
    [ShowSakura_Center face="surprise"]
    #桜良
    ダイヤル...？[r]
    数字なんてあったかな？[p]

    [FreeDispQuestion]
    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    今のところ見てはいないわね。[r]
    でも見て、何かマークが描いてあるわ。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    これがヒントなのかも？[p]

    #深雪
    数字の手がかりになりそうなものを探してみましょう。[p]
; 箱開封時
[elsif exp="f.leftNum == 4 && f.centerNum == 5 && f.rightNum == 6"]
    [ShowMiyuki_Center]
    #深雪
    箱が空いたようね。[r]
    中身は...ケーブルかしら。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    ; 桜良漫符：キラキラ
    [DispSparkle_Right]
    [ShowSakura_Right face="smile"]
    ;[autostop]
    ;[skipstop]
    ;[ItemDisp storage="../image/episode1/cable.png"]
    #桜良
    深雪ちゃん、すごい！[r]
    ステージの装飾がヒントだったなんて、[r]
    私全然気づかなかった！[p]

    [FreeDispSparkle]
    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    ……大したことじゃないわ。[p]

    ; 深雪漫符：集中線
    [DispSaturatedLine_Left]
    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （...明日槍でも降るのかしら！？）[p]

    [FreeDispSaturatedLine]
    #深雪
    （いえ、槍なんか降ったら桜良が危ないから、[r]
    _　そんなことは起きなくていいんだけれど）[p]

    #桜良
    謙遜しなくてもいいのにー！[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    そういえば、この場所って[r]
    私たちのファーストライブ会場に似てるような気がしない？[p]

    ; 深雪漫符：びっくり
    [DispSurprised_Left]
    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    言われてみればそうね。[r]
    この安っぽい装飾とか、いかにも初期の予算のなさを思い出すわ。[p]

    [FreeDispSurprised]
    #桜良
    あはは、小さいハコだったもんね。[r]
    あれでもマネージャーさん苦労したんだーって言ってたよ？[p]

    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    ステージの演出にこだわりが強いことだけは認めてあげるわ。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    もう！[r]
    素直じゃないなあ！[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    （私たちのファーストライブ。[r]
    _　ステージは小さくて、今考えればクオリティも低いけれど）[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （桜良モチーフのヤドカリと私モチーフのクリオネが、[r]
    _　かわいらしく隣同士に装飾されていたのだけは、最高だったわね...）[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    ...ふふ。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    ん？どうしたの？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    なんでもないわ。[r]
    他を調べましょう。[p]
[endif]
[HideAll]
[return]