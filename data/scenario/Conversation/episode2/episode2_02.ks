;-------------------------------------------------------
; 天幕
;-------------------------------------------------------
; ハンガー未所持で初回クリック時
[if exp="f.isHangerGet == 0 && f.isClickedTent_first == 'true' "]
    [ShowMiyuki_Center]
    #深雪
    撮影をするとなれば、バックスクリーンをおろす必要があるけど...[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    椅子を使っても、私たちの身長ではギリギリ届かない...。[r]
    道具もなさそうだし...[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    ; 桜良漫符：もやもや
    [ShowSakura_Right face="trouble"]
    #桜良
    うーん...[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    あっ、肩車したらどうかな！[r]
    私意外と力強いんだよ！！[p]

    ; 深雪漫符：はてなびっくり
    [ChangeCharaFace name="miyuki" face="impatience"]
    #深雪
    だっ、だめに決まってるでしょ！[r]
    危ないじゃない！[p]

    #深雪
    それになぜ桜良が担ぐ前提なの！？[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    ダメかあ...[r]
    いい案だと思ったんだけどな。[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    はあもう、変なこと言ってないで、[r]
    おとなしく道具を探しましょう。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    はーい。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    ...危ないって言われないくらい鍛えたら、[r]
    深雪ちゃんのこと肩車してもいい？[p]

    [ChangeCharaFace name="miyuki" face="amazed"]
    #深雪
    なんでそんなに肩車したいの！[r]
    恥ずかしいからダメ！[p]

    ; 桜良漫符：ワイワイ
    #桜良
    ええ～楽しそうなのに～[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （主に私の心臓が持たないからよ！！）[p]
    [if exp="f.isClickedTent_first == 'true' "]
        [iscript]
            f.isClickedTent_first = 'false'
        [endscript]
    [endif]
    [HideAll]
    [JumpStudioRoom]
; ハンガー未所持で二回目以降
[elsif exp="f.isHangerGet == 0 && f.isClickedTent_first == 'false' "]
    [ShowSakura_Center face="smile"]
    #桜良
    やっぱり肩車する？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    ; 深雪漫符：汗
    [ShowMiyuki_Left face="impatience"]
    #深雪
    しないわよ。[r]
    というか、むしろあなたは何故そこまでやりたいのよ。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    たのしそうだからだよ？[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あっ、それでいうとお姫様抱っことかも憧れるよね！[p]

    ; 深雪漫符：はてなびっくり
    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    お姫様抱っこ！？[p]

    [Jumping name="sakura"]
    ; 桜良漫符：音符
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    ライブでメンバーのみんなを抱っこしたら、[r]
    すっごく盛り上がると思うんだ！[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    抱っこされるほうじゃないのね...[p]

    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    ちなみにお姫様抱っこは...[p]

    [ChangeCharaFace name="miyuki" face="amazed"]
    #深雪
    もっとダメよ。[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    ダメかあ～...[p]
    [HideAll]
    [JumpStudioRoom]
; ハンガー所持で初回クリック時
[elsif exp="f.isHangerGet == 1 && f.isClickedTent_first == 'true' "]
    [ShowMiyuki_Center]
    #深雪
    バックスクリーンをおろすための道具がなさそうだったけれど、[r]
    今手持ちにあるもので代用できそうね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="surprise"]
    #桜良
    えっ、そんなものあったかな？[p]

    #深雪
    そのままの形では使えないから、[r]
    少し加工する必要はあるけれどね。[p]

    ; 桜良漫符：びっくり
    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あっ、もしかして「あれ」？[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    「あれ」よ。[p]
; ハンガー所持で二回目以降
[elsif exp="f.isHangerGet == 1 && f.isClickedTent_first == 'false' "]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    深雪ちゃんの考えてることがわかったかも！[p]

    #桜良
    「壊しそうで不安だった」とか？[r]
    私、全然やるよ！[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    ; 深雪漫符：ぐるぐる
    [ShowMiyuki_Left face="amazed"]
    #深雪
    流石に針金を引きちぎったりはできないわよ。[p]

    [ChangeCharaFace name="miyuki" face="sigh"]
    #深雪
    細かい力加減ができないってだけ。[r]
    ...心外だけど。[p]

    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    もしかして、瓶の蓋とか開けるの得意だったり？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    そういえば開けられなくて困ったことないわね。[p]

    ; 桜良漫符：キラキラ
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    す、すごい。[r]
    私ときどき開けられなくて大変なのに！[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    今度蓋が開かなかった時は深雪ちゃんにお願いするね！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    ふ、蓋でも針金でもなんでも持ってきなさい！！[p]
[endif]
[HideAll]
[return]

*UseHanger
[HideSakura]
[iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'center'
[endscript]
[ChangeCharaPosition]
[nolog]
[ShowMiyuki_Center face="seriously"]
#深雪
これをこうして...[p]

#深雪
よし、届くかしら？[p]

[HideMiyuki]
[messageFalse]
[ChangeBackGround storage="episode2/studioroom_tentdown.png"]
[PlayRustlingClothes]
[messageTrue]
; 桜良漫符：キラキラ
[ShowSakura_Right face="smile"]
[ShowMiyuki_Left]
#桜良
やった！届いた！[p]

#深雪
背景の問題はこれで解決ね。[p]

#桜良
さすが深雪ちゃん！[r]
これでばっちりだね！[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
そういえば、深雪ちゃんっていつから写真を始めたの？[p]

; 深雪漫符：はてな
#深雪
急になにかしら？[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
あ、その、純粋に気になって...[r]
もしかして聞かれたくなかった？[p]

; 深雪漫符：はてなびっくり
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
違うわ！[r]
興味を持ってくれたことに少し驚いただけ！[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
そっか、よかったあ...[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
始めたきっかけは、撮りたいものができたから。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
素敵だね！[r]
風景とか、動物とか？[p]

#深雪
そんなところ。[r]
まあ、本当に撮りたいものは、まだ撮ったことがないけれどね。[p]

; 桜良漫符：びっくり
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
えっ、最近始めたわけじゃないんだよね？[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
ええ。もう数年は続けてる。[p]

#桜良
そんなに撮るのが難しいものなの？[p]

; 深雪漫符：音符
[ChangeCharaFace name="miyuki" face="smile"]
#深雪
ふふ、内緒。[p]

[ChangeCharaFace name="sakura" face="amazed"]
#桜良
そ、そんなあ～！[p]
[endnolog]
[HideAll]
[return]

*NotUseHanger
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center]
    #深雪
    とはいえ、まだ他も調べられるわ。[r]
    もう少し見てからにしましょうか。[p]
    [endnolog]
[endif]
[HideAll]
[JumpStudioRoom]