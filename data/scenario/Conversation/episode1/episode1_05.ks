;-------------------------------------------------------
; ライト
;-------------------------------------------------------
; 舞台なし
; 初回
[if exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 0"]
    ; 深雪表情：通常
    #深雪
    あそこのライト、一つだけカバーが取れているわね。[p]

    ; 桜良表情：困り
    #桜良
    直したいけど高すぎて届かないね......[p]

    #深雪
    足場になるものを探しましょう。[p]
; 舞台なし
; 2回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 0"]
    #深雪
    このままだと届かないわ。[r]
    足場になるものがあればいいのだけど。[p]
; 舞台あり
; ライトカバー未所持
; 初回
[elsif exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
    ; 深雪表情：通常
    ; 深雪
    あの裸のライトを何とかしたいところだけど、[r]
    ライトにかぶせるカバーを持っていないわね。[p]

    ; 桜良表情：通常
    #桜良
    さっき、近くで見かけたような気がするから、[r]
    もう一度探してみない？[p]

    #深雪
    ええ、見直してみましょう。[p]
; 舞台あり
; ライトカバー未所持
; 2回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 0"]
;桜良表情：困り
    #桜良
    うーん[r]
    そのあたりにあったはずなんだけどなあ......[p]
; 舞台あり
; ライトカバー所持
; 初回
[elsif exp="f.isClickedLight_first == 'true' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 1"]
;深雪表情：通常
    #深雪
    せりを足場に、[r]
    ライトを元に戻せそうね。[p]

    ; 桜良表情：通常
    #桜良
    やっと裸から戻してあげられるね！[p]

    ; 桜良表情：困り
    #桜良
    ......うう。[p]

    #深雪
    ......[p]

    #深雪
    桜良、これは私がやるから安心して。[r]
    かぶせるだけなら私にもできるから。[p]

    #深雪
    高いところ、苦手なんでしょう？[p]

    ; 桜良表情：驚き
    #桜良
    え、なんでわかったの！？[r]

    #桜良
    高所恐怖症なの誰にも言ったことないのに！[p]

    #深雪
    わかるわよ、どれだけ一緒にアイドルやってると思ってるの。[p]

    ; 桜良表情：通常
    #桜良
    そっか、バレてたのかあ......[p]

    #深雪
    心配しなくて大丈夫。[r]
    これからも容赦なくせりの上にのってもらったり、[r]
    バンジージャンプ飛んでもらったりするから。[p]

    ; 桜良表情：驚き
    #桜良
    ええっ！[r]
    高所恐怖症ってわかってるのに！？[p]

    #深雪
    アイドルも体を張る時代よ。あきらめなさい。[p]

    ; 桜良表情：困り
    #桜良
    う、うそぉ～......[p]

    #深雪
    （本当は無理しないでほしいけれど、[r]
    　そう言えばあなたは気にするでしょう？）[p]

    #深雪
    だから、せめてプライベートでは頼って。[p]

    ; 桜良表情：笑顔
    #桜良
    もう、お仕事でも頼りたいんだけどなあ。[r]
    じゃあ、お願い！[p]
; 舞台あり
; ライトカバー所持
; 2回目以降
[elsif exp="f.isClickedLight_first == 'false' && f.isStageStatusGreen == 1 && f.isLightCoverGet == 1"]
    ; 桜良表情：通常
    #桜良
    ライトカバーつけられそう？[p]

    ; 深雪表情：通常
    #深雪
    ええ、なんとかなりそう。[r]
    かぶせて留めるだけみたい。[p]

    #深雪
    これくらいなら壊さない、と思う。[p]

    #桜良
    深雪ちゃん、頑張って！[p]

    ; 深雪表情：尊い
    #深雪
    （今の百万回言ってほしい！！！）[p]
[endif]
[return]

*UseLightCover
; 深雪表情：通常
[messageFalse]
[PlayMountLightCover]
[wait time="500"]
[image storage="../image/episode1/lightcover_mount.png" layer="1" x="670" y="20" name="light"]
[wait time="1000"]
[PlayChangeControlPanelLamp]
[messageTrue]
#深雪
これで元に戻せた、はず。[p]

; 桜良表情：通常
#桜良
おつかれさま！[r]
ちゃんとついてるよ！[p]

#深雪
そう、ならよかった。[p]

#桜良
深雪ちゃんは高いところ平気なの？[p]

; 深雪表情：通常
#深雪
むしろ得意なほう。[r]
せりの上から見た景色は特に好きね。[p]

#桜良
そうなんだ、私は落ちたらどうしよう！って[r]
どうしても考えちゃって......[p]

; 桜良表情：笑顔
#桜良
でも、せりの上から見るライブ会場は、[r]
私も好きだなあ。[p]

#桜良
ペンライトもみんなの笑顔も、[r]
キラキラ光ってて、私も元気をもらえるから。[p]

#深雪
アイドルをやっていてよかったって思える瞬間ね。[p]

; 桜良表情；通常
#桜良
なんだかみんなに会いたくなっちゃった、[r]
早くここを脱出しよう！[p]

#深雪
ええ。そうね。[p]
[free layer="1" name="light"]
[return]

*NotUseLightCover
; 深雪表情：通常
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    #深雪
    思ったより取り付けが難しそうね。[p]

    #深雪
    首が痛くなってきたから一度降りるわ。[p]

    ; 桜良表情：通常
    #桜良
    わかった、無理しないで！[p]
    [endnolog]
    [layer3False]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfLightCover"]