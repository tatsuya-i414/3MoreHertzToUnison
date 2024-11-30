;-------------------------------------------------------
; 制御盤
;-------------------------------------------------------
; 配線未所持
; 初回クリック時
[if exp="f.isClickedWiringDoor_first == 'true' && f.isCableGet == 0"]
    ; 深雪表情：通常
    #深雪
    これは舞台装置の配電盤のようね。[p]

    ; 桜良表情：悩み
    #桜良
    ねえ見て、ここの配線途切れてる。[p]

    ; 桜良表情：通常
    #桜良
    直したらいいことあるかも？[p]

    #深雪
    かも。[r]
    直せそうなものがあればいいけれど。[p]
; 配線未所持
; 2回目以降
[elsif exp="f.isClickedWiringDoor_first == 'false' && f.isCableGet == 0"]
    ; 桜良表情：笑顔
    #桜良
    ここを直したら何か起きたりして！[p]
; 配線未所持の際に一度も調べなかった場合も下記の分岐で処理
; 配線所持
; 初回クリック時
[elsif exp="f.isClickedWiringDoor_first == 'true' && f.isCableGet == 1"]
    ; 桜良表情：通常
    #桜良
    深雪ちゃん、[r]
    さっきのコードで直せるんじゃない？[p]

    ; 深雪表情：悩み
    #深雪
    そうね。[r]
    ......桜良、その、お願いできる？[p]

    #桜良
    いいよ！[r]
    でも私やったことないけど大丈夫かな？[r]

    #深雪
    私がやるよりいいわ、絶対。[p]

    #桜良
    そうかなあ？[r]
    深雪ちゃん器用そうだけど。[p]

    ; 深雪表情：通常
    #深雪
    DIY企画が前にあったじゃない？[r]
    あの時私も本当は参加する予定だったの。[p]

    ; 桜良表情：驚き
    #桜良
    そうだったの！？[r]
    確か帆南ちゃんと柚乃ちゃんで事務所の椅子作ったんだっけ。[p]

    #深雪
    そう、その企画。[r]
    予行練習で軽く工具を使ったんだけど。[p]

    ; 深雪表情：悩み
    #深雪
    釘は全部曲げるし、接着剤も多すぎたり少なすぎたり、[r]
    挙句の果てには自分の手と木材をくっつけて大騒ぎになるし。[p]

    ; 深雪表情：通常
    #深雪
    放送事故になるってことで、[r]
    モノづくり系の企画NGにさせられたの。[p]

    #深雪
    ということで、私に細かい作業はやらせないほうがいいわ。[p]

    ; 桜良表情：困り
    #桜良
    そ、そうだったんだ。私、頑張るね。[r]
    （深雪ちゃんにケガしてほしくないし...）[p]

    #深雪
    ええ、ありがとう。[p]
; 配線所持
; 2回目以降
[elsif exp="f.isClickedWiringDoor_first == 'false' && f.isCableGet == 1"]
    ; 深雪表情：通常
    #深雪
    桜良、どうかしら？[p]

    ; 桜良表情：通常
    #桜良
    うーん、もう一度見てみるね。[p]
[endif]
[return]

*UseCable
; 桜良表情：笑顔
; 深雪表情：通常
[PlayConnectCable]
[ChangeBackGround storage="episode1/connectedwiring.png"]
#桜良
よいしょ......[r]
できた！[p]

; 桜良表情：驚き
; 深雪表情：驚き
[messageFalse]
[FadeoutBGM]
[PlayRisingStage]
[quake count="40" wait="true" time="2000" vmax="5"]
[wait time="2000"]
[PlayChangeControlPanelLamp]
[wait time="1000"]
[PlayEpisode1BGM]
[messageTrue]
[autostop]
[cancelskip]

; 深雪表情：通常
#深雪
どこかで仕掛けが動くような音がしたわね。[r]
桜良、あなたのおかげよ。[p]

; 桜良表情：驚き
#桜良
え！[r]
そうかな？[p]

; 桜良表情：赤面
#桜良
あ、ありがとう！[p]

; 深雪表情：赤面
#深雪
（え、そ、そんなに喜ぶの？[r]
初めて見る表情で心臓止まるかと思った）[p]

; 深雪表情：通常
#深雪
さ、他も探してみましょう。[p]

; 桜良表情：笑顔
#桜良
うん！[p]
[return]

*NotUseCable
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    ; 桜良表情：通常
    #桜良
    少し心の準備するね。[p]

    ; 深雪表情：通常
    #深雪
    わかったわ。[p]
    [endnolog]
    [clearfix]
    [MenuButton]
    [layer3False]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfCable"]