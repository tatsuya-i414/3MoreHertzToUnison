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
    [ShowSakura_Right face="trouble"]
    #桜良
    うーん...[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    あっ、肩車したらどうかな！[r]
    私意外と力強いんだよ！！[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    だっ、だめに決まってるでしょ！[r]
    危ないじゃない！[r]

    #深雪
    それになんで桜良が担ぐ前提なの！？[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    ダメかあ...[r]
    いい案だと思ったんだけどな。[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    はあもう、変なこと言ってないで、[r]
    おとなしく道具を探しましょう。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    はーい。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    ...危ないって言われないくらい鍛えたら、[r]
    深雪ちゃんのこと肩車してもいい？[p]

    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    なんでそんなに肩車したいの！[r]
    恥ずかしいからダメ！[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    ええ～楽しそうなのに～[p]

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
    [ShowMiyuki_Left]
    #深雪
    しないわよ。[r]
    というか、むしろあなたは何故そこまでやりたいのよ。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    たのしそうだからだよ？[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    あっ、それでいうとお姫様抱っことかも憧れるよね！[p]

    [ChangeCharaFace name="miyuki" face="surprise"]
    #深雪
    お姫様抱っこ！？[p]

    #桜良
    ライブでみんなを抱っこしたら、[r]
    すっごく盛り上がると思うんだ！[p]

    #深雪
    抱っこされるほうじゃないのね...[p]

    #桜良
    ちなみにお姫様抱っこは...[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    もっとダメよ。[p]

    [ChangeCharaFace name="sakura" face="trouble"]
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
    [ShowSakura_Right face="trouble"]
    #桜良
    えっ、そんなものあったかな？[p]

    #深雪
    そのままの形では使えないから、[r]
    少し加工する必要はあるけれどね。[p]

    #桜良
    もしかして「あれ」？[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    「あれ」よ。[p]
; ハンガー所持で二回目以降
[elsif exp="f.isHangerGet == 1 && f.isClickedTent_first == 'false' "]
    [ShowSakura_Center face="smile"]
    #桜良
    私も深雪ちゃんの考えてることがわかったよ！[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    もしかして、壊しそうで不安だった...とか！？[r]
    私、全然やるよ！[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    さすがに曲げるくらいはできるから安心して...[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    そ、そっか、早とちりしてごめんね。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    じゃあお願い！深雪ちゃん！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    いくらでも頑張るわよ、このくらい！[p]
[endif]
[HideAll]
[return]

*UseHanger
[nolog]
; 桜良退場
[ShowMiyuki_Center]
#深雪
これをこうして...[p]

#深雪
よし、届くかしら？[p]

[HideAll]
[messageFalse]
[ChangeBackGround storage="episode2/studioroom_tentdown.png"]
[PlayRustlingClothes]
[messageTrue]
[ShowSakura_Right face="smile"]
[ShowMiyuki_Left]
#桜良
やったね！[p]

#深雪
背景の問題はこれで解決ね。[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
そういえば、深雪ちゃんっていつから写真を始めたの？[p]

#深雪
急になにかしら？[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
あ、その、純粋に気になって...[r]
もしかして聞かれたくなかった？[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
違うわ！[r]
興味を持ってくれたことに少し驚いただけ！[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
そっか、よかったあ...[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
始めたきっかけは、撮りたいものができたから。[p]

#桜良
素敵だね！[r]
風景とか、動物とか？[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
本当に撮りたいものは、まだ撮ったことがないけれどね。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
えっ、最近始めたわけじゃないんだよね？[p]

#深雪
ええ。もう数年は続けてる。[p]

#桜良
そんなに撮るのが難しいものなの？[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
ふふ、内緒。[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
そんなあ～！[p]
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