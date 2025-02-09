;-------------------------------------------------------
; ハンガー
;-------------------------------------------------------
; ジャケット未所持
; 初回調査時
[if exp="f.isJacketGet == 0 && f.isClickedHanger_first == 'true' "]
    [ShowSakura_Center face="seriously"]
    #桜良
    このハンガー掛け随分変なところに付いてるんだね。[r]
    壁のド真ん中だ...[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    実際の山小屋には無かったから、[r]
    再現の限界といったところでしょうね。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    そうだったっけ、記憶力すごい...[p]

    ; 深雪漫符：もやもや
    #深雪
    （ええ、仔細まで覚えているわ、[r]
    _　毎日寝る前にあのロケ映像を家で上映してるもの）[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （...桜良の映っているところだけダイジェストで。[r]
    _　未だに桜良と同じロケだったなんて夢みたい...）[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    まぁ普通に考えてもここにあるのは不自然だけれど。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    また謎解きに関わってくるのかな？[r]
    ...あれっ[p]

    [clearfix]
    [messageFalse]
    [layer3False]
    [autostop]
    [cancelskip]
    [camera zoom="2" x="400" y="200" time="2000" wait="true"]
    [loop_quake layer="1" time="400" vmax="5"]
    [PlayGachaGacha]
    [wait time="1000"]
    [loop_quake_stop layer="1"]
    [reset_camera]
    [layer3True]
    [messageTrue]
    [ControlButtons]

    ; 桜良漫符：汗
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    このハンガー取れないよ！？[p]

    #深雪
    フックに固定されてる...[r]
    ハンガーは先の部屋のように外して使う訳ではなさそうね。[p]

    #深雪
    ひとまずこれは置いておいて、[r]
    他も見てみましょう。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    そうだね。[r]
    これの使い方がわかるかもしれないし！[p]
; ジャケット未所持
; 二回目以降
[elsif exp="f.isJacketGet == 0 && f.isClickedHanger_first == 'false' "]
    [ShowSakura_Center face="trouble"]
    #桜良
    壁から取れないハンガーって不便だね。[r]
    あちこちに移動できるからいいのに。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="close_eye"]
    #深雪
    アイデンティティのうちのひとつは、[r]
    間違いなく失っているわね。[p]

    #桜良
    アイデンティティかあ...[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    考えてみたら、私達も最初は迷走してたよね。[p]

    #桜良
    何故か商店街でライブしたり、[r]
    はたまたショートドラマつくったり！[p]

    ; 深雪漫符：ぐるぐる
    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    思い出させないで。[r]
    もはやデジタルタトゥーよ...[p]

    ; 桜良漫符：音符
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    深雪ちゃんのスケバン姿、可愛かったけどなあ！[p]

    ; 深雪漫符：ぷんぷん
    [ChangeCharaFace name="miyuki" face="amazed"]
    #深雪
    あのドラマ撮ってしばらくは、渾名が姉御になったのよ、[r]
    勘弁して欲しいわね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    でも、それも今の私たちに繋がってるんだよ！[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    まあね。結果良ければなんとやら、かしら。[p]
; ジャケット所持
; 初回調査時
[elsif exp="f.isJacketGet == 1 && f.isClickedHanger_first_whenJacketGetting == 'true' "]
    [ShowMiyuki_Center]
    #深雪
    この不自然なハンガー、[r]
    ちゃんと使い道があったようね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    壁にくっついてるし、[r]
    曲げたり伸ばしたりも出来なさそうだもんね。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    曲げ伸ばしの方が本来の使い方じゃないけれど。[p]

    #深雪
    ひとまず、片付けてしまいましょうか。[p]
    [if exp="f.isClickedHanger_first_whenJacketGetting == 'true' "]
        [iscript]
            f.isClickedHanger_first_whenJacketGetting = 'false'
        [endscript]
    [endif]
; ジャケット所持
; 二回目以降
[elsif exp="f.isJacketGet == 1 && f.isClickedHanger_first_whenJacketGetting == 'false' "]
    [ShowSakura_Center]
    #桜良
    深雪ちゃん、ハンガーを使う？[p]
[endif]
[HideAll]
[return]

*UseHanger
[messageFalse]
[PlayConnectCable]
[free layer="1" name="wallhanger_onhanger"]
[if exp="f.isRoomLightNight == 0"]
    [image storage="../image/episode3/wallhanger_onjacket.png" layer="1" x="1427" y="90" name="wallhanger_onjacket"]
[elsif exp="f.isRoomLightNight == 1"]
    [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
[endif]
[wait time="500"]
[messageTrue]
[ShowMiyuki_Center]
#深雪
これでよし、と。[p]

; 昼の場合
[if exp="f.isRoomLightNight == 0"]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    うん、収まるところに収まった、って感じ！[p]

    #桜良
    この登山服、一体誰のものなんだろう？[r]
    私たちが着てたものでもなさそうだし。[p]

    #深雪
    さてね。[r]
    小道具と考えておきましょう。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    登山道具で思い出した！[r]
    深雪ちゃんって富士山登山の時の杖ってどうしてる？[p]

    #深雪
    ああ、焼き印入りのアレのことね。[p]
; 夜の場合
[else]
    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="surprise"]
    #桜良
    なんだか奇抜な柄だね。[r]
    企業のロゴマークかな？[p]

    #深雪
    私は少なくとも見たことはないわね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    マークに富士山となると...[r]
    焼き印のこと思い出すなあ。[p]
[endif]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
まさか、杖に押すとは思わなかったな！[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
私もてっきり木の板か何かにするものだと思ってたわ。[p]

#深雪
杖なら最初から持っていく物だから、[r]
荷物にならず実用的よね。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
登頂したとき、杖がなんだか相棒みたいに思えてね、[r]
今私の家の玄関番になってるよ。[p]

; 深雪漫符：びっくり
[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
まさかの警棒扱い...[p]

[ChangeCharaFace name="sakura" face="seriously"]
#桜良
不審者が来ても富士山登頂パワーでこう！[p]

[messageFalse]
[PlaySwing]
[flasheffect]
[wait time="500"]
[messageTrue]
[ChangeCharaFace name="miyuki" face="surprise"]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
撃退できるかな？[p]

#深雪
......[p]

#深雪
桜良、貴方剣道をやっていたことは？[p]

; 桜良漫符：はてな
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
え、無いよ？[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
ボウリング好きだから、[r]
腕の使い方には自信あるけどね！[p]

[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
（ボウリングをやってるだけで、[r]
_　見えない手刀を出せるものかしら...？）[p]

#深雪
過剰防衛にならないように気をつけるのよ...[p]
[HideAll]
[return]

*NotUseHanger
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    ちょっとまって、[r]
    これってどうやっても外れないのかしら？[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="amazed"]
    #桜良
    さわった感じ、ガッチリ壁にくっついてるよ！？[p]

    #深雪
    仕掛けを解いたら外れるかもしれないじゃない？[p]

    #深雪
    もう少しだけ観察してもいい？[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    いいよ！急いでるわけじゃないしね！[p]
    [endnolog]
[endif]
[HideAll]
[JumpBedRoom]