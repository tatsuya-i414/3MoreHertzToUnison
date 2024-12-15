;-------------------------------------------------------
; ライト
;-------------------------------------------------------
; 舞台なし
; 初回クリック時
[if exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 0"]
    [ShowMiyuki_Center]
    #深雪
    あそこのライト、一つだけカバーが取れているわね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="trouble"]
    #桜良
    直したいけど高すぎて届かないね......[p]

    #深雪
    足場になるものを探しましょう。[p]
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
    [ShowSakura_Center face="trouble"]
    #桜良
    うーん[r]
    そのあたりにあったはずなんだけどなあ......[p]
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
    [ShowSakura_Right]
    #桜良
    やっと裸から戻してあげられるね！[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    ......うう。[p]

    #深雪
    ......[p]

    #深雪
    桜良、これは私がやるから安心して。[r]
    かぶせるだけなら私にもできるから。[p]

    #深雪
    高いところ、苦手なんでしょう？[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    え、なんでわかったの！？[p]

    #桜良
    高所恐怖症なの誰にも言ったことないのに！[p]

    #深雪
    わかるわよ、どれだけ一緒にアイドルやってると思ってるの。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    そっか、バレてたのかあ......[p]

    #深雪
    心配しなくて大丈夫。[r]
    これからも容赦なくせりの上にのってもらったり、[r]
    バンジージャンプ飛んでもらったりするから。[p]

    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    ええっ！[r]
    高所恐怖症ってわかってるのに！？[p]

    #深雪
    アイドルも体を張る時代よ。あきらめなさい。[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    う、うそぉ～......[p]

    #深雪
    （本当は無理しないでほしいけれど、[r]
    _　そう言えばあなたは気にするでしょう？）[p]

    #深雪
    だから、せめてプライベートでは頼って。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    もう、お仕事でも頼りたいんだけどなあ。[r]
    じゃあ、お願い！[p]
; 舞台あり
; ライトカバー所持
; 二回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 1"]
    [ShowSakura_Center]
    #桜良
    ライトカバーつけられそう？[p]

    ; 深雪表情：通常
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

    #桜良
    深雪ちゃん、頑張って！[p]

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
[image storage="../image/episode1/lightcover_mount.png" layer="1" x="695" y="20" name="light"]
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

#桜良
深雪ちゃんは高いところ平気なの？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
むしろ得意なほう。[r]
せりの上から見た景色は特に好きね。[p]

#桜良
そうなんだ、私は落ちたらどうしよう！って[r]
どうしても考えちゃって......[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
でも、せりの上から見るライブ会場は、[r]
私も好きだなあ。[p]

#桜良
ペンライトもみんなの笑顔も、[r]
キラキラ光ってて、私も元気をもらえるから。[p]

#深雪
アイドルをやっていてよかったって思える瞬間ね。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
なんだかみんなに会いたくなっちゃった、[r]
早くここを脱出しよう！[p]

#深雪
ええ。そうね。[p]
[free layer="1" name="light"]
[HideAll]
[return]

*NotUseLightCover
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [ShowMiyuki_Center]
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
    わかった、無理しないで！[p]
    [endnolog]
    [HideAll]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfLightCover"]