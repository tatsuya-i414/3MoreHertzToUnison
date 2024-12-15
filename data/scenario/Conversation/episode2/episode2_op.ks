[DispLocation text="撮影スタジオ"]
[ShowMiyuki_Center face="trouble"]
#深雪
ううん...いったい何が...[p]

[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
はっ、桜良！[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="trouble" top="450"]
#桜良
いたた、しりもちついちゃった...[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
よかった、はぐれてなくて。[r]
ほら、大丈夫？[p]

[PlayRustlingClothes]
[chara_move name="sakura" top="120"]
[ChangeCharaFace name="sakura" face="normal"]
#桜良
うん！ありがとう！[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
あれっ、場所が変わってる！[r]
撮影スタジオかな？[p]

#深雪
そうみたいね。[r]
さっきマイクに触ったらここに飛ばされたから、[r]
ステージクリアした、ということでいいと思うわ。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
無事先に進めてるってことだね！[p]

#深雪
この調子でいきましょう。[r]
でもこの部屋は何をすれば...[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
部屋の中央にカメラが置いてあるから、[r]
写真を撮ればいいんじゃないかな？[p]

#深雪
一度調べてみましょうか。[p]

[Freelayer1]
[DispLocation text="撮影スタジオ"]
[ChangeBackGround storage="episode2/cameramonitor.png" time="1000" method="zoomIn"]

#深雪
撮影現場にあるにしては、少し安物のカメラみたいね。[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
見ただけでわかるの！？[p]

#深雪
写真が趣味だから、少しだけね。[r]
それにしても...[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
このカメラ、シャッターが押せないみたい。[r]
押しても感触がないわ。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
あ、本当だ。[r]
固くて押せないね。[p]

[PlayKacha]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
あら...？[p]

#深雪
ちょっと桜良、そこに立ってくれる？[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
わ、わかった！[p]

[HideSakura]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'center'
[endscript]
[ChangeCharaPosition]

#深雪
これでよし...っと[p]

[HideAll]
[messageFalse]
[wait time="1000"]
[PlayPhotographing]
[flasheffect]
[ShowSakura_Right]
[ShowMiyuki_Left]
[messageTrue]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
今のはもしかしてタイマー機能？[p]

#深雪
ええ。[r]
唯一使えそうだったから試しに二人で映ってみたのだけど、[r]
特に何も起きなかったみたい。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
でも、写真を撮るのは合ってそうだよね！[r]
何を撮ればいいか部屋を調べてみよう！[p]

#深雪
それもそうね。[r]
部屋にヒントが隠されているかもしれない。[r]
確認してみましょう。[p]
[DeleteDispLocation]
[HideAll]
[return]