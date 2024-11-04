;-------------------------------------------------------
; ベッド
;-------------------------------------------------------
; 布団未所持
; 初回調査時
[if exp="f.isFutonGet == 0 && f.isClickedBed_first == 'true' "]
    ; 深雪表情：通常
    #深雪
    改めて見ると本当に狭く感じる...[p]

    ; 桜良表情：笑顔
    #桜良
    疲れきってると天国に見えるんだけどね〜！[p]

    #深雪
    そう言って山小屋の寝台に寝転ぼうとして、[r]
    思いっきり頭打ってたわよね。[p]

    ; 桜良表情：困り
    #桜良
    あれは疲れてて体が上手く動かなかっただけ！[p]

    ; 桜良表情：通常
    #桜良
    そういう深雪ちゃんこそ、[r]
    ご飯食べながら寝落ちしてたよ！[p]

    ; 深雪表情：通常
    #深雪
    あれは忘れて。[p]

    ; 桜良表情：笑顔
    #桜良
    忘れません！！[r]
    ちょっと白目むいてるうとうと深雪ちゃん、[r]
    とっても可愛かったよ！[p]

    ; 深雪表情：照れ
    #深雪
    〜〜ッ！[r]
    わ、忘れなさいってば！！[p]

    ; 深雪が桜良にヒュっと近づくが、触れる寸前で桜良が右に避ける
    #桜良
    うふふ、いやでーす！[p]

    ; 桜良は右に避けた位置からさらに右にズレていき、足音とともにそのまま画面外に消えていく
    ; 深雪は画面中央あたりに残ったまま
    [messageFalse]
    [PlayRun]
    [wait time="5000"]
    [messageTrue]
    [cancelskip]

    ; 深雪表情：困り
    #深雪
    もう...登山ロケなんて絶対行かない...[p]
    [if exp="f.isClickedBed_first == 'true' "]
        [iscript]
            f.isClickedBed_first = 'false'
        [endscript]
    [endif]
; 布団未所持
; 二回目以降
[elsif exp="f.isFutonGet == 0 && f.isClickedBed_first == 'false' "]
    ; 桜良表情：通常
    #桜良
    深雪ちゃんをからかうのはおいといて、[r]
    寝台のことだけど。[p]

    #桜良
    普通はお布団とかシーツとか置いてあるのに、[r]
    何にもないね。[p]

    ; 深雪表情：通常
    #深雪
    この謎解きをしないと出られない部屋において、[r]
    何も無いということはないはずよ。[p]

    ; 桜良表情：困り
    #桜良
    そうだよね。[r]
    でも、この部屋ってここだけぽっかり物が無いし...[p]

    #深雪
    物が無いことに意味があるともとれるわ。[p]

    ; 桜良表情：驚き
    #桜良
    他の場所から物を持ってきたり？[p]

    #深雪
    それは探索してみないと分からないわね。[r]
    色々と探してみましょう。[p]
; 布団所持
; 初回調査時
[elsif exp="f.isFutonGet == 1 && f.isClickedBed_first == 'true' "]
    ; 深雪のみ表示、最初は中央に表示
    ; 深雪表情：困り
    #深雪
    （布団が見つかった上に、[r]
    これを使えそうな場所はここだけ）[p]

    #深雪
    （つまり、この部屋の脱出条件は...）[p]

    ; 桜良の台詞のみ、立ち絵なし
    #桜良
    深雪ちゃん！[p]

    ; 深雪表情：驚き
    #深雪
    ひゃい！？[p]

    ; 深雪が左に移動し、桜良の立ち絵が右側に登場
    ; 桜良表情：通常
    #桜良
    お布団が引けそうなのってここだけだよね？[r]
    早速引いてみようよ！[p]

    #桜良
    ...あれ、深雪ちゃん？[r]
    おーい！[p]

    #深雪
    ...はっ。[p]

    ; 深雪表情：通常
    #深雪
    ごめんなさい、雑念が混じってしまって。[p]

    #桜良
    ざつねん？[p]

    #深雪
    気にしないで大丈夫。[r]
    そうね、試してみましょう。[p]

    [messageFalse]
    [PlayGosoGoso]
    [blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
    [iscript]
        f.isFutonGet = -1
        tf.usingItemInventory4 = 0
    [endscript]
    [cancelskip]
    [messageTrue]

    ; 深雪表情：困り
    #深雪
    何も起きない...[r]
    まだ満たしていない条件が...？[p]

    ; 桜良表情：通常
    #桜良
    あ、あの、深雪ちゃん。[r]
    もしかしてなんだけど...[p]

    #桜良
    布団は二組あったでしょ、[r]
    それにこのお部屋って電気を消すと夜になるから...[p]

    #桜良
    このお布団で一緒に寝てみる、とかどうかな？[p]

    ; 深雪表情：驚き
    #深雪
    えっ！！お布団横に並べて添い寝を！？[p]

    ; 桜良表情：驚き
    #桜良
    そ、そうなるのかな！？[p]

    #深雪
    ......[p]

    ; 深雪表情：尊い
    #深雪
    ......ッ！[p]

    ; 深雪表情：困り
    #深雪
    ぅ......[p]

    ; 桜良表情：困り
    #桜良
    深雪ちゃん、顔色が赤くなったり青くなったり、[r]
    凄いけれど大丈夫...？[p]

    ; 深雪表情：通常
    #深雪
    全く大丈夫ではないけど案はいいと思うわ一旦心の準備をさせて[p]

    ; 桜良表情：通常
    #桜良
    え、えと...待ってるね？[p]
    [if exp="f.isClickedBed_first == 'true' "]
        [iscript]
            f.isClickedBed_first = 'false'
        [endscript]
    [endif]
    [iscript]
        tf.selectOfSleeporNot = 'true'
    [endscript]
; 布団所持
; 二回目以降
[elsif exp="f.isFutonGet == -1 && f.isClickedBed_first == 'false' "]
    ; 桜良表情：通常
    #桜良
    ど、どうする？[r]
    電気を消して寝てみる？[p]
    [iscript]
        tf.selectOfSleeporNot = 'true'
    [endscript]
[endif]
[layer3False]
[clearstack]
[JumpBedRoom]

*Sleep
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    ; 深雪表情：照れ
    #深雪
    よろしくおねがいします。[p]

    ; 桜良表情：笑顔
    #桜良
    もう！！なんでそんなに照れてるの〜！[r]
    お泊まり会みたいなものだよ！[p]

    ; 深雪表情：通常
    #深雪
    そ、うよね、[r]
    緊張し過ぎてた。[p]

    #深雪
    じゃあ電気、消すわね。[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [cancelskip]
[endif]
[PlaySwitching]
[iscript]
    f.isRoomLightNight = 1
    f.itemVisible[0] = 'true'
    f.itemVisible[1] = 'episode3_bed'
[endscript]
[blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
[jump storage="Gimmick/episode3.ks" target="*TurnOffTheLightAndSleep"]

*NotSleep
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    ; 深雪表情：照れ
    #深雪
    深呼吸...深呼吸...[p]

    #桜良
    えーと...[p]

    ; 桜良表情：照れ
    #桜良
    ま、まだダメそうだね！！[p]
    [endnolog]
    [layer3False]
[endif]
[iscript]
    tf.selectOfSleeporNot = 'false'
[endscript]
[JumpBedRoom]