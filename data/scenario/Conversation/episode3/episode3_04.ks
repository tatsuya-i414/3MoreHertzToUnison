;-------------------------------------------------------
; 収納ボックス
;-------------------------------------------------------
; コンパス未設置
; 初回調査時
[if exp="f.isCompassGet != -1 && f.isClickedBox_first == 'true' "]
    ; 桜良表情：驚き
    #桜良
    今までで一番ヘンテコな箱があるよ！？[p]

    ; 深雪表情：通常
    #深雪
    いかにも謎解きしてくださいと言わんばかりね。[p]

    ; 桜良表情：通常
    #桜良
    ボタンが4つと窪みがひとつ...[p]
    [messageFalse]
    [PlayArrowButtonClick]
    [wait time="800"]
    [PlayArrowButtonClick]
    [wait time="800"]
    [PlayArrowButtonClick]
    [wait time="200"]
    [messageTrue]
    ; 桜良表情：困り
    #桜良
    押しても反応してなさそう？[p]

    #深雪
    窪みに何かをはめ込んで、初めて起動する仕組みかもしれないわね。[p]

    #深雪
    はまりそうなものがないか、一度確認してみましょう。[p]
; コンパス未設置
; 二回目以降
[elsif exp="f.isCompassGet != -1 && f.isClickedBox_first == 'false' "]
    ; 桜良表情：驚き
    #桜良
    おおっ！[r]
    ここにはまりそうなもの、見つかった？[p]
[endif]
[return]

*UseCompass
[ControlButtons]
[FreeItemBox]
[nolog]
[image storage="../image/episode3/compass.png" layer="1" x="797" y="399" name="compass_set"]
[PlayMountLightCover]
; 深雪表情：通常
#深雪
まあ、これでしょうね。[r]
他にはまりそうなものもなかったし。[p]

; 桜良表情：笑顔
#桜良
はまるときに音もしたから、間違いなさそうだよ！[p]

; 桜良表情：困り
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
#深雪
ボタンが反応するようになっているわね。[p]

; 桜良表情：通常
#桜良
ってことは、正しい順番がありそうだね！[p]

; 桜良表情：笑顔
#桜良
となると、順番のヒントがあるかも！[r]
探してみよう！[p]
[endnolog]
[free layer="1" name="compass_set"]
[return]

*NotUseCompass
[ControlButtons]
[FreeItemBox]
[nolog]
; 桜良表情：困り
#桜良
そ、それは無理じゃないかな？[p]

; 深雪表情：通常
#深雪
わかっているわ。[r]
ものは試しよ。[p]

; 桜良表情：通常
#桜良
ほんとに？[p]

#深雪
......[p]

; 深雪表情：困り
#深雪
ごめんなさい、ちょっとふざけました。[p]

; 桜良表情：驚き
#桜良
深雪ちゃんの貴重なボケ...！？[p]

#深雪
珍しがらないで。[r]
もっと恥ずかしいから。[p]
[endnolog]
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
; 桜良表情：驚き
#桜良
あっ！[p]

; 深雪表情：通常
#深雪
開いた！[p]

; ジャケットをハンガーにかけた状態でクリアした時
[if exp="f.isJacketGet == -1"]
    ; 桜良表情：笑顔
    #桜良
    やったね深雪ちゃん！[r]
    さっすがあ！[p]

    #深雪
    桜良もね。[r]
    私が特に言わずとも、最後は押してくれたじゃない。[p]

    ; 桜良表情：通常
    #桜良
    深雪ちゃんの横で謎解き見てたからね！[r]
    私も成長するのです！[p]

    ; 深雪表情：笑顔
    #深雪
    ふふ、私がいなくても解けてたと思うけれど。[p]
; ジャケットをハンガーにかけずにクリアした時
[else]
    #桜良
    適当にポチポチしてたら開いちゃった...！[p]

    ; 桜良表情：困り
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
    （このギミックの開け方は何となく予想はつくけど...[r]
    言うだけ野暮ね。）[p]
[endif]

#深雪
さて、中身は...布団セット？[p]

; 桜良表情；笑顔
#桜良
わあ、山小屋で止まった時のお布団そのままだ！[p]

; 深雪表情：通常
#深雪
こんなところまで再現しているなんて、[r]
芸が細かいというかなんというか...[p]

#桜良
自分の家にあるお布団じゃないのに、[r]
どうしてこんなに安心感があるのかな。[p]

; 深雪表情：尊い
#深雪
私もこの布団にくるまって泥のように寝た記憶しかないから、[r]
気持ちはよくわかるわ。[p]

; 桜良表情：通常
#桜良
私たち、アイドルだから体力には自信あるつもりだったけど、[r]
まだまだなんだなーって反省したなあ...[p]

; 深雪表情：通常
#深雪
当時はデビューして間もなかったし、[r]
今はもう少し違うでしょうね。[p]

; 深雪表情：笑顔
#深雪
次こそは帆南たちにやらせるけど。[p]

; 桜良表情：笑顔
#桜良
私たちだけ登ったなんて、もったいないもんね！[p]

#深雪・桜良
ふふふふ...[p]

; 深雪表情：通常
#深雪
（あれ、でもこの布団ってどうするのかしら）[p]

#深雪
（まさか...ね）[p]
[endnolog]
[return]

*NotUnlockKey
[ControlButtons]
[FreeItemBox]
[nolog]
[PlayWrong]
; 深雪表情:通常
#深雪
違うようね。[p]

; 桜良表情：通常
#桜良
もういっかいやってみよ！[p]
[endnolog]
[return]