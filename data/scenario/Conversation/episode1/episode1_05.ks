;-------------------------------------------------------
; ライト
;-------------------------------------------------------
; 舞台なし
; 初回クリック時
[if exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 0"]
    [ShowMiyuki_Center face="trouble"]
    #深雪
    あそこのライト、一つだけカバーが取れているわね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    ; 桜良漫符：もやもや
    [DispFuzzy_Right]
    [ShowSakura_Right face="seriously"]
    #桜良
    直したいけど高すぎて届かないね...[p]

    [FreeDispFuzzy]
    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    何か足場になりそうなものを探してみない？[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    賛成だわ。そうしましょう。[p]
; 舞台なし
; 二回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 0"]
    [ShowMiyuki_Center]
    #深雪
    このままだと届かないわ。[r]
    足場になるものがあればいいのだけど。[p]
; 舞台あり
; ライトカバー未所持
; 初回クリック時
[elsif exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
    [ShowMiyuki_Center]
    #深雪
    あの裸のライトを何とかしたいところだけど、[r]
    ライトにかぶせるカバーを持っていないわね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    さっき、近くで見かけたような気がするから、[r]
    もう一度探してみない？[p]

    #深雪
    ええ、見直してみましょう。[p]
; 舞台あり
; ライトカバー未所持
; 二回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
    [ShowSakura_Center face="seriously"]
    #桜良
    うーん[r]
    そのあたりにあったはずなんだけどなあ...[p]
; 舞台あり
; ライトカバー所持
; 初回クリック時
[elsif exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 1"]
    [ShowMiyuki_Center]
    #深雪
    せりを足場に、[r]
    ライトを元に戻せそうね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="close_mouth"]
    #桜良
    やっと裸から戻してあげられるね！[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    じゃあ登ってかぶせよっか...[r]
    ...よし。[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    ......[p]

    #深雪
    桜良、これは私がやるから安心して。[r]
    かぶせるだけなら私にもできるから。[p]

    #深雪
    高いところ、苦手なんでしょう？[p]

    ; 桜良漫符：はてなびっくり
    [DispQS_Right]
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    え、なんで知ってるの！？[p]

    [FreeDispQS]
    #桜良
    高所恐怖症なの誰にも言ったことないのに！[p]

    #深雪
    わかるわよ、どれだけ一緒にアイドルやってると思ってるの。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    そっか、バレてたのかあ...[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    高所恐怖症って言っても、[r]
    山の上とか高い建物の中とかは平気なんだけど...[p]

    #桜良
    橋の上とか、ちょっとでも身を乗り出したら落ちちゃう！[r]
    って場所に立つとどうしても足が震えちゃって。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    落ちる危険性が高いところが苦手なのね。[p]

    ; 桜良漫符：ぷんぷん
    [DispAngry_Right]
    [ChangeCharaFace name="sakura" face="seriously"]
    #桜良
    そう！だって一歩踏み間違えたら大けがだよ！？[p]

    [FreeDispAngry]
    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    そうね、でも安心して。[r]
    これからも容赦なくせりの上にのってもらったり、[r]
    バンジージャンプ飛んでもらったりするから。[p]

    ; 桜良漫符：はてなびっくり
    [DispQS_Right]
    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    安心できる要素どこにもないよね！？[p]

    [FreeDispQS]
    #深雪
    アイドルも体を張る時代よ。あきらめなさい。[p]

    #桜良
    そんなあー...[p]

    ; 深雪漫符：もやもや
    [DispFuzzy_Left]
    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    （本当は無理しないでほしいけれど、[r]
    _　そう言えばあなたは気にするでしょう？）[p]

    [FreeDispFuzzy]
    #深雪
    仕事では頑張ってもらうけれど、[r]
    せめてプライベートでは頼って。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    もう、お仕事でも頼りたいんだけどなあ！[r]
    じゃあ、お願いするね！[p]
; 舞台あり
; ライトカバー所持
; 二回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 1"]
    [ShowSakura_Center]
    #桜良
    ライトカバーつけられそう？[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    ええ、なんとかなりそう。[r]
    かぶせて留めるだけみたい。[p]

    #深雪
    これくらいなら壊さない、と思う。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    深雪ちゃん、なら大丈夫だよ！[r]
    頑張って！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （今の百万回言ってほしい！！！）[p]
[endif]
[HideAll]
[return]

*UseLightCover
[messageFalse]
[PlayMountLightCover]
[wait time="500"]
[image storage="../image/episode1/lightcover_mount.png" layer="1" x="695" y="20" name="light" time="10" wait="true"]
[wait time="1000"]
[PlayChangeControlPanelLamp]
[messageTrue]
[ShowMiyuki_Center]
#深雪
これで元に戻せた、はず。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right]
#桜良
おつかれさま！[r]
ちゃんとついてるよ！[p]

#深雪
そう、ならよかった。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
深雪ちゃんは高いところ平気なの？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
むしろ得意よ。[r]
せりの上から見た景色は特に好きね。[p]

; 桜良漫符：ワイワイ
[DispClamorously_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
あっ、それはわかるかも！[r]
私もせりの上から見るライブ会場は大好き！[p]

[FreeDispClamorously]
#桜良
ペンライトもみんなの笑顔も、[r]
キラキラ光ってて元気をもらえるよね！[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
アイドルをやっていてよかったって思える瞬間ね。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
なんだかみんなに会いたくなっちゃった、[r]
早くここを脱出しよう！[p]

#深雪
ええ。そうね。[p]
[free layer="1" name="light" time="10" wait="true"]
[HideAll]
[return]

*NotUseLightCover
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [ShowMiyuki_Center face="trouble"]
    [nolog]
    #深雪
    思ったより取り付けが難しそうね。[p]

    #深雪
    首が痛くなってきたから一度降りるわ。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    わかった、無理しないでね！[p]
    [endnolog]
    [HideAll]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfLightCover"]