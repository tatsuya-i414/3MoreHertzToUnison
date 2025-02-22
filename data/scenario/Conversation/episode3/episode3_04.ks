;-------------------------------------------------------
; 収納ボックス
;-------------------------------------------------------
; コンパス未設置
; 初回調査時
[if exp="f.isCompassGet != -1 && f.isClickedBox_first == 'true' "]
    ; 桜良漫符：びっくり
    [DispSurprised_Center]
    [ShowSakura_Center face="surprise"]
    #桜良
    今までで一番ヘンテコな箱があるよ！？[p]

    [FreeDispSurprised]
    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    いかにも謎解きしてくださいと言わんばかりね。[p]

    ; 桜良漫符：もやもや
    [DispFuzzy_Right]
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    ボタンが4つと窪みがひとつ...[p]

    [FreeDispFuzzy]
    [messageFalse]
    [PlayArrowButtonClick]
    [wait time="800"]
    [PlayArrowButtonClick]
    [wait time="800"]
    [PlayArrowButtonClick]
    [wait time="200"]
    [messageTrue]
    #桜良
    押しても反応してなさそう？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    窪みに何かをはめ込んで、初めて起動する仕組みかもしれないわね。[p]

    #深雪
    はまりそうなものがないか、一度確認してみましょう。[p]
; コンパス未設置
; 二回目以降
[elsif exp="f.isCompassGet != -1 && f.isClickedBox_first == 'false' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    ここにはまりそうなもの、見つかった？[p]
[endif]
[HideAll]
[return]

*UseCompass
[ControlButtons]
[FreeItemBox]
[nolog]
[image storage="../image/episode3/compass.png" layer="1" x="797" y="399" name="compass_set"]
[PlayMountLightCover]
[ShowMiyuki_Center]
#深雪
まあ、これでしょうね。[r]
他にはまりそうなものもなかったし。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
; 桜良漫符：ワイワイ
[DispClamorously_Right]
[ShowSakura_Right face="smile"]
#桜良
はまるときに音もしたから、間違いなさそうだよ！[p]

[FreeDispClamorously]
[ChangeCharaFace name="sakura" face="seriously"]
#桜良
でも、コンパスをはめたのはいいけど、[r]
ここからどうするんだろう？[p]

#桜良
今度こそボタンを押せばいいのかな？[p]

[messageFalse]
[PlayArrowButtonClick]
[wait time="800"]
[PlayArrowButtonClick]
[wait time="800"]
[PlayArrowButtonClick]
[wait time="800"]
[PlayArrowButtonClick]
[wait time="800"]
[PlayArrowButtonClick]
[wait time="200"]
[PlayWrong]
[messageTrue]
; 深雪漫符：びっくり
[DispSurprised_Left]
#深雪
ボタンが反応するようになっているわね。[p]

[FreeDispSurprised]
[ChangeCharaFace name="sakura" face="normal"]
#桜良
ってことは、正しい順番がありそうだね！[p]

#桜良
となると、順番のヒントがあるかも！[r]
探してみよう！[p]
[endnolog]
[free layer="1" name="compass_set"]
[HideAll]
[return]

*NotUseCompass
[ControlButtons]
[FreeItemBox]
[nolog]
[ShowSakura_Center face="trouble"]
#桜良
そ、それは無理じゃないかな？[p]

[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
[ShowMiyuki_Left]
#深雪
わかっているわ。[r]
ものは試しよ。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
ほんとに？[p]

#深雪
......[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
ごめんなさい、ちょっとふざけました。[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
深雪ちゃんの貴重なボケ...！？[p]

[FreeDispSparkle]
; 深雪漫符：汗
[DispSweat_Left]
#深雪
珍しがらないで。[r]
もっと恥ずかしいから。[p]
[endnolog]
[FreeDispSweat]
[HideAll]
[return]

*UnlockKey
[ControlButtons]
[FreeItemBox]
[nolog]
[messageFalse]
[wait time="200"]
[messageTrue]
[PlayUnlockKey]
[wait time="200"]
[PlayOpenBox]
[free layer="1" name="compass_set"]
[ChangeBackGroundOfEpisode3 storage_noon="episode3/futon_inbox.png" storage_night="episode3/futon_inbox_night.png"]
; 桜良漫符：びっくり
[DispSurprised_Right]
[ShowSakura_Center face="surprise"]
#桜良
あっ！[p]

[FreeDispSurprised]
[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
; 深雪漫符：びっくり
[DispSurprised_Left]
[ShowMiyuki_Left face="seriously"]
#深雪
開いた！[p]

[FreeDispSurprised]
; ジャケットをハンガーにかけた状態でクリアした時
[if exp="f.isJacketGet == -1"]
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    やったね深雪ちゃん！[r]
    さっすがあ！[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    桜良もね。[r]
    私が特に言わずとも、最後は押してくれたじゃない。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    深雪ちゃんの横で謎解き見てたからね！[r]
    私も成長するのです！[p]

    #深雪
    ふふ、私がいなくても解けてたと思うけれど。[p]
; ジャケットをハンガーにかけずにクリアした時
[else]
    #桜良
    適当にポチポチしてたら開いちゃった...！[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    やったあ...[r]
    って喜びにくい...[p]

    #深雪
    運も実力のうちだから喜んでいいと思うけれど。[p]

    #桜良
    だって、謎解き考えてくれた人がちょっとかわいそうで...[p]

    #深雪
    気にしなくていいのよ、[r]
    勝手に謎解きを強制させてくるやつの気持ちなんて。[p]

    #桜良
    う～ん、深雪ちゃんがそういうなら...[p]

    #深雪
    （ボタンの押す順番は何となく予想はつくけど...[r]
    _　言うだけ野暮ね。）[p]
[endif]

; 深雪漫符：はてな
[DispQuestion_Left]
#深雪
さて、中身は...布団セット？[p]

[FreeDispQuestion]
; 桜良漫符：ワイワイ
[DispClamorously_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
わあ、山小屋で泊まった時のお布団そのままだ！[p]

[FreeDispClamorously]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
こんなところまで再現しているなんて、[r]
芸が細かいというかなんというか...[p]

#桜良
自分の家にあるお布団じゃないのに、[r]
どうしてこんなに安心感があるのかな。[p]

[ChangeCharaFace name="miyuki" face="close_eye"]
#深雪
私もこの布団にくるまって泥のように寝た記憶しかないから、[r]
気持ちはよくわかるわ。[p]

; 桜良漫符：汗
[DispSweat_Right]
[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
私たち、アイドルだから体力には自信あるつもりだったけど、[r]
まだまだなんだなーって反省したなあ...[p]

[FreeDispSweat]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
当時はデビューして間もなかったし、[r]
今はもう少し違うでしょうね。[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
次こそは帆南たちにやらせるけど。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
私たちだけ登ったなんて、もったいないもんね！[p]

; 深雪、桜良漫符：キラキラ
[DispSparkle_Left]
[DispSparkle_Right]
#桜良と深雪
ふふふふ...[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（あれ、でもこの布団ってどうするのかしら）[p]

#深雪
（まさか...ね）[p]
[endnolog]
[HideAll]
[return]

*NotUnlockKey
[ControlButtons]
[FreeItemBox]
[nolog]
[PlayWrong]
[ShowMiyuki_Center]
#深雪
違うようね。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="close_mouth"]
#桜良
もういっかいやってみよ！[p]
[endnolog]
[HideAll]
[return]