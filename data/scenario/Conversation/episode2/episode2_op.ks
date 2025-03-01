[DispLocation text="撮影スタジオ"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `撮影スタジオ` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[ShowMiyuki_Center face="trouble"]
#深雪
ううん...いったい何が...[p]

; 深雪漫符：はてなびっくり
[DispQS_Center]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
はっ、桜良！[p]

[FreeDispQS]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="trouble" top="450"]
#桜良
いたた、しりもちついちゃった...[p]

[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
よかった、はぐれてなくて。[rhr]
ほら、大丈夫？[p]

[PlayRustlingClothes]
[chara_move name="sakura" top="120"]
[ChangeCharaFace name="sakura" face="normal"]
#桜良
うん！ありがとう！[p]

; 桜良漫符：びっくり
[DispSurprised_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
あれっ、場所が変わってる！[rhr]
ここは...撮影スタジオかな？[p]

[FreeDispSurprised]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
そうみたいね。[rhr]
マイクに触ってここに飛ばされたから、[rhr]
さっきのステージはクリアできたんでしょうね。[p]

; 桜良漫符：音符
[DispMusicalNote_Right]
[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
無事先に進めてるってことだね！[p]

[FreeDispMusicalNote]
#深雪
この調子でいきましょう。[rhr]
でもこの部屋は何をすれば...[p]

[ChangeCharaFace name="sakura" face="seriously"]
#桜良
部屋の中央にカメラが置いてあるから、[rhr]
写真を撮ればいいんじゃないかな？[p]

#深雪
一度調べてみましょうか。[p]

[Freelayer1]
[DispLocation text="撮影スタジオ"]
[ChangeBackGround storage="episode2/cameramonitor.png" time="1000" method="zoomIn"]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
撮影現場にあるにしては、少し安物のカメラみたいね。[p]

[ChangeCharaFace name="sakura" face="surprise"]
#桜良
見ただけでわかるの！？[p]

#深雪
写真が趣味だから、少しだけね。[rhr]
それにしても...[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
このカメラ、シャッターが押せないみたい。[rhr]
押しても感触がないわ。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
あ、本当だ。[rhr]
固くて押せないね。[p]

[PlayKacha]
; 深雪漫符：はてな
[DispQuestion_Left]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
あら...？[p]

[FreeDispQuestion]
#深雪
ちょっと桜良、そこに立ってくれる？[p]

[ChangeCharaFace name="sakura" face="surprise"]
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

[HideMiyuki]
[messageFalse]
[wait time="1000"]
[PlayPhotographing]
[flasheffect]
[ShowSakura_Right]
[ShowMiyuki_Left]
[messageTrue]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
今のはもしかしてタイマー機能？[p]

#深雪
ええ。[rhr]
唯一使えそうだったから試しに二人で映ってみたのだけど、[rhr]
特に何も起きなかったみたい。[p]

#桜良
でも、写真を撮るのは合ってそうだよね！[rhr]
何を撮ればいいか部屋を調べてみよう！[p]

#深雪
それもそうね。[rhr]
部屋にヒントが隠されているかもしれない。[rhr]
確認してみましょう。[p]
[DeleteDispLocation]
[HideAll]
[return]