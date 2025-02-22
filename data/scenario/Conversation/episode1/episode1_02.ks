;-------------------------------------------------------
; 制御盤
;-------------------------------------------------------
; 配線未所持で初回クリック時
[if exp="f.isClickedWiringDoor_first == 'true' && f.isCableGet == 0"]
    [ShowMiyuki_Center]
    #深雪
    これは舞台装置の配電盤のようね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="trouble"]
    #桜良
    深雪ちゃん見て、ここの配線が切れちゃってる。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    配線の修理は脱出ゲームの定番だよね！[r]
    直したらいいことあるかも？[p]

    #深雪
    かもね。[r]
    直せそうなものがあればいいけれど。[p]
; 配線未所持で二回目以降
[elsif exp="f.isClickedWiringDoor_first == 'false' && f.isCableGet == 0"]
    [ShowSakura_Center face="smile"]
    #桜良
    ここを直したら何か起きたりして！[p]
; 配線未所持の際に一度も調べなかった場合も下記の分岐で処理
; 配線所持で初回クリック時
[elsif exp="f.isClickedWiringDoor_first == 'true' && f.isCableGet == 1"]
    [ShowSakura_Center]
    #桜良
    深雪ちゃん、[r]
    さっきのコードで直せるんじゃない？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    そうね。[r]
    ...桜良、その、お願いできる？[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    もちろんいいよ！[r]
    でも私やったことないけど大丈夫かな？[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    私がやるよりいいわ、絶対。[p]

    ; 桜良漫符：はてな
    [DispQuestion_Right]
    #桜良
    そうかなあ？[r]
    深雪ちゃん器用そうだけど。[p]

    [FreeDispQuestion]
    #深雪
    DIY企画が前にあったじゃない？[r]
    帆南と柚乃が椅子を作った動画。覚えてるかしら。[p]

    #桜良
    うん、覚えてるよ！[r]
    二人とも木くずまみれになった～って言ってたな～[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    ...あの企画、本当は私も参加する予定だったの。[p]

    ; 桜良漫符：はてなびっくり
    [DispQS_Right]
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    そうだったの！？[p]

    [FreeDispQS]
    #深雪
    企画の前に予行練習で軽く工具を使ったんだけど...[p]

    ; 深雪漫符：ぐるぐる
    [DispTrouble_Left]
    #深雪
    釘は全部曲げるし、接着剤も多すぎたり少なすぎたり、[r]
    挙句の果てには自分の手と木材をくっつけて大騒ぎになるし。[p]

    [FreeDispTrouble]
    #深雪
    放送事故になるってことで、[r]
    モノづくり系の企画NGにさせられたの。[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    ということで、私に細かい作業はやらせないほうがいいわ。[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    そ、そうだったんだ。私、頑張るね。[r]
    （深雪ちゃんにケガしてほしくないし...）[p]

    #深雪
    ええ、ありがとう。[p]
; 配線所持で二回目以降
[elsif exp="f.isClickedWiringDoor_first == 'false' && f.isCableGet == 1"]
    [ShowMiyuki_Center]
    #深雪
    桜良、どうかしら？[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    うーん、もう一度見てみるね。[p]
[endif]
[HideAll]
[return]

*UseCable
[ShowSakura_Right face="smile"]
[ShowMiyuki_Left]
[PlayConnectCable]
[ChangeBackGround storage="episode1/connectedwiring.png"]
#桜良
よいしょ...[r]
できた！[p]

[messageFalse]
[FadeoutBGM]
[ChangeCharaFace name="sakura" face="surprise"]
[ChangeCharaFace name="miyuki" face="surprise"]
[PlayRisingStage]
[quake count="40" wait="true" time="2000" vmax="5"]
[wait time="2000"]
[PlayChangeControlPanelLamp]
[wait time="1000"]
[PlayEpisode1BGM]
[messageTrue]
[autostop]
[cancelskip]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
どこかで仕掛けが動くような音がしたわね。[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
桜良、あなたのおかげよ。[r]
ありがとう。[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
え！そ、そうかな！？[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
そんなたいしたことしたわけじゃ...！[r]
で、でも役に立てたならよかった！[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
えへへ...[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="blush"]
#深雪
（え、そ、そんなに喜ぶの？[r]
_　初めて見る表情で心臓止まるかと思った）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
さ、他も探してみましょう。[p]

#桜良
うん！[p]
[HideAll]
[return]

*NotUseCable
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [nolog]
    [ShowSakura_Center]
    #桜良
    少し心の準備するね。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    わかったわ。[p]
    [endnolog]
    [HideAll]
    [clearfix]
    [MenuButton]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfCable"]