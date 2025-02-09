;-------------------------------------------------------
; 寝台
;-------------------------------------------------------
; 布団未所持
; 初回調査時
[if exp="f.isFutonGet == 0 && f.isClickedBed_first == 'true' "]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    改めて見ると本当に狭く感じる...[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    ; 桜良漫符：汗
    [ShowSakura_Right face="smile"]
    #桜良
    疲れきってると天国に見えるんだけどね！[p]

    [ChangeCharaFace name="miyuki" face="amazed"]
    #深雪
    そう言って布団に寝転ぼうとして、[r]
    思いっきり頭打ってたわよね。[p]

    [Jumping name="sakura"]
    [ChangeCharaFace name="sakura" face="blush"]
    #桜良
    あれは疲れてて体が上手く動かなかっただけ！[p]

    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    そういう深雪ちゃんこそ、[r]
    ご飯食べながら寝落ちしてたよ！[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    あれは忘れて。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    忘れません！！[r]
    ちょっと白目むいてるうとうと深雪ちゃん、[r]
    とっても可愛かったよ！[p]

    ; 深雪漫符：ぷんぷん
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    〜〜ッ！[r]
    わ、忘れなさいってば！！[p]

    [chara_move name="miyuki" left="550" anim="true" time="500" wait="true"]
    [wait time="100"]
    [chara_move name="sakura" left="1100" anim="true" time="500" wait="true"]
    #桜良
    うふふ、いやでーす！[p]

    [chara_move name="sakura" left="2000" anim="true" time="5000" wait="false"]
    [messageFalse]
    [PlayRun]
    [wait time="5000"]
    [HideSakura]
    [messageTrue]
    [autostop]
    [cancelskip]
    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （桜良にはだらしないところを見せたくないのに...!）[p]

    #深雪
    （どうして覚えてるのよ、もう！[r]
    _　ああ、穴があったら入りたい...）[p]
    [if exp="f.isClickedBed_first == 'true' "]
        [iscript]
            f.isClickedBed_first = 'false'
        [endscript]
    [endif]
; 布団未所持
; 二回目以降
[elsif exp="f.isFutonGet == 0 && f.isClickedBed_first == 'false' "]
    [ShowSakura_Center]
    #桜良
    深雪ちゃんをからかうのはおいといて、[r]
    ベッドのことだけど。[p]

    #桜良
    普通はお布団とかシーツとか置いてあるのに、[r]
    何にもないね。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    この謎解きをしないと出られない部屋において、[r]
    何も無いということはないはずよ。[p]

    ; 桜良表情：もやもや
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    そうだよね。[r]
    でも、この部屋ってここだけぽっかり物が無いし...[p]

    #深雪
    物が無いことに意味があるともとれるわ。[p]

    ; 桜良漫符：電球
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    他の場所から物を持ってきたり？[p]

    #深雪
    それは探索してみないと分からないわね。[r]
    色々と探してみましょう。[p]
; 布団所持
; 初回調査時
[elsif exp="f.isFutonGet == 1 && f.isClickedBed_first == 'true' "]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    （布団が見つかった上に、[r]
    _　これを使えそうな場所はここだけ）[p]

    #深雪
    （もしかして、脱出に必要なのって...）[p]

    #桜良
    深雪ちゃん！[p]

    [Jumping name="miyuki"]
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    ひゃい！？[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    お布団が引けそうなのってここだけだよね？[r]
    早速引いてみようよ！[p]

    #桜良
    ...あれ、深雪ちゃん？[r]
    おーい！[p]

    ; 深雪漫符：びっくり
    #深雪
    ...はっ。[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    ごめんなさい、雑念が混じってしまって。[p]

    ; 桜良漫符：はてな
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
    [autostop]
    [cancelskip]
    [messageTrue]
    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    何も起きない...[r]
    まだ満たしていない条件が...？[p]

    #深雪
    （これまでの部屋は準備を整えたあと、[r]
    _　二人で何か行動する必要があった。ということは...）[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    あ、あの、深雪ちゃん。[r]
    もしかしてなんだけど...[p]

    #桜良
    布団は二組あったでしょ、[r]
    それにこのお部屋って電気を消すと夜になるから...[p]

    #桜良
    このお布団で一緒に寝てみる、とかどうかな？[p]

    ; 深雪漫符：集中線
    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    やっぱりそうなるわよね！？[p]

    ; 桜良漫符：はてなびっくり
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    そ、そうだと思うよ！？[r]
    お布団でやることと言ったら、寝てみるくらいだし！[p]

    ; 深雪漫符：もやもや
    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    ......[p]

    ; 深雪漫符：キラキラ
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    ......ッ！[p]

    ; 深雪漫符：汗
    [ChangeCharaFace name="miyuki" face="impatience"]
    #深雪
    ぅ......[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    深雪ちゃん、顔色が赤くなったり青くなったり、[r]
    凄いけれど大丈夫...？[p]

    #桜良
    人と一緒に眠ったりするの、苦手だった？[r]
    それなら別の方法を考え...[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    全く大丈夫ではないけど大丈夫だから心配しないで。[p]

    #深雪
    案はいいと思うわ。試してみましょう。[p]

    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    ただ、その、ちょっと待ってて。[r]
    一旦心の準備をさせて。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
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
    ; 昼の場合
    [if exp="f.isRoomLightNight == 0"]
        [ShowSakura_Center]
        #桜良
        ど、どうする？[r]
        電気を消して寝てみる？[p]
    ; 夜の場合
    [else]
        [ShowSakura_Center]
        #桜良
        ど、どうする？[r]
        ちょうど夜になってるし、寝てみる？[p]
    [endif]
    [iscript]
        tf.selectOfSleeporNot = 'true'
    [endscript]
[endif]
[clearstack]
[HideAll]
[JumpBedRoom]

*SelectSleepOrNot
[messageTrue]
[nolog]
#
布団で一緒に寝ますか？
[endnolog]
[return]

*Sleep
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center face="seriously"]
    #深雪
    よろしくおねがいします。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="smile"]
    #桜良
    もう！！なんでそんなに照れてるのー！[r]
    お泊まり会みたいなものだよ！[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    そ、うよね、[r]
    緊張し過ぎもよくないわよね。[p]
    ; 昼の場合
    [if exp="f.isRoomLightNight == 0"]
        #深雪
        じゃあ電気、消すわね。[p]
        [PlaySwitching]
        [iscript]
            f.isRoomLightNight = 1
        [endscript]
    ; 夜の場合
    [else]
        #深雪
        じゃあ...失礼します...[p]
    [endif]
    [endnolog]
    [messageFalse]
    [autostop]
    [cancelskip]
[endif]
[iscript]
    f.itemVisible[0] = 'true'
    f.itemVisible[1] = 'episode3_bed'
[endscript]
[HideAll]
[blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
[jump storage="Gimmick/episode3.ks" target="*TurnOffTheLightAndSleep"]

*NotSleep
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center face="blush"]
    #深雪
    深呼吸...深呼吸...[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    えーと...[p]

    [ChangeCharaFace name="sakura" face="blush"]
    #桜良
    ま、まだダメそうだね！！[p]
    [endnolog]
[endif]
[iscript]
    tf.selectOfSleeporNot = 'false'
[endscript]
[HideAll]
[JumpBedRoom]