;-------------------------------------------------------
; 衣装
;-------------------------------------------------------
; 画面演出：アイテム子画面表示：衣装アイコン
; 桜良漫符：びっくり
[ShowSakura_Center face="surprise"]
#桜良
この衣装って、[r]
私たちの一番最初の衣装！？[p]

[iscript]
    f.charaPosition[0] = 'sakura'
    f.charaPosition[1] = 'right'
[endscript]
[ChangeCharaPosition]
; 深雪漫符：びっくり
[ShowMiyuki_Left face="surprise"]
;[autostop]
;[skipstop]
;[ItemDisp storage="../image/episode2/dreass.png"]
#深雪
よくある安物のコスプレ衣装でもないみたいね。[r]
私たちが実際に使っていた本物だわ。[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
（これを用意するには[r]
_　さすがに事務所を通さないとできないはず。[r]
_　やっぱりこれは撮影？）[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（でも、部屋を探しても隠しカメラがあるようには見えなかった。[r]
_　私が見逃しているだけなのか、それとも...）[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
ここに衣装があるってことは、[r]
やっぱり着て撮影しないといけないのかな？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
恐らくそうでしょうね。[r]
ご丁寧に簡易更衣室まで備え付けてあったから。[p]

; 桜良漫符：音符
[ChangeCharaFace name="sakura" face="close_eye"]
#桜良
そっか。[r]
この衣装、着るの久しぶりだな。[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
アイドルを始めたばかりの頃の衣装だものね。[r]
私も見たのは数年ぶり。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
そういえばこのスタジオって、[r]
この衣装を着てシングル撮影したスタジオにそっくりかも？[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
言われてみれば...[r]
一回きりだったから忘れていたわ。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
初めてのジャケット撮影だからすごく緊張したな。[r]
みんながちがちで、何回も撮りなおしになったんだよね。[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
桜良なんて顔がこわばりすぎて、[r]
マネージャーに能面みたいって言われてなかった？[p]

; 桜良漫符：ぷんぷん
[ChangeCharaFace name="sakura" face="blush"]
#桜良
し、仕方ないよ！[r]
現場の雰囲気もピリピリしてたし...[p]

[ChangeCharaFace name="sakura" face="seriously"]
#桜良
それを言うなら深雪ちゃんだって、[r]
ロボットみたいになってたの覚えてるもの！[p]

; 深雪漫符：汗
[ChangeCharaFace name="miyuki" face="blush"]
#深雪
あっ、あれは、その...！[p]

#深雪
（桜良と密着するようポーズを指示されて、[r]
_　私が限界だったから...なんて言えるわけないでしょう！）[p]

[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
とりあえず、この衣装を着て撮影すればいいのよ。[r]
ほら、行きましょう。[p]

#桜良
あっ、こら！逃げるなー！[p]
[HideAll]
[return]