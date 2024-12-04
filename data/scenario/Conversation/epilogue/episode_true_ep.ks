; 工数的に余裕があればここで新衣装を入れるかもしれない
; 背景画像：メタセコイヤの並木道
; 深雪表情：通常
#深雪
紅葉を見に行きたいって言うから、[r]
てっきり紅葉かと思ってたわ。[p]

; 桜良表情：笑顔
#桜良
紅葉とか銀杏もいいけど、[r]
ちょっと珍しくていい感じでしょ！[p]

; 深雪表情：笑顔
#深雪
桜良に誘われなかったら、自分で知ることはなかったかもね。[p]

#桜良
それなら今日は思いっきり楽しんじゃおう！[r]
ほらほら、れっつごー！[p]

; 深雪表情：驚き
#深雪
わっ、ちょっと桜良、待って！[p]

; スチル表示予定
; キャラは全員非表示
#桜良
わあ、すっごい綺麗！[p]

#深雪
まるで黄金の滝ね。[p]

#深雪
（はしゃいでる桜良、かわいい...）[p]

#深雪
（テレビや舞台の上とも違う、[r]
ふわっとした笑顔...）[p]

#深雪
（ちょっとだけ、桜良と仲良くなれたって、[r]
うぬぼれてもいいのかしら？）[p]

; キャラクター再登場
; 桜良表情：笑顔
#桜良
初めて一緒に出掛けたけど、[r]
喜んでくれてよかった！[p]

; 深雪表情：笑顔
#深雪
桜良と完全オフで一緒にいられるのよ。[r]
どこだって嬉しいに決まってるわ。[p]

; 桜良表情：照れ
#桜良
み、深雪ちゃんって時々すごいこと言うよね！？[p]

; 深雪表情：困り
#深雪
全部本心なのだけど...[p]

; 深雪表情：通常
#深雪
でも風が気持ちいいし、一面の自然もきれいで、[r]
着てよかったとは思っているわ。[p]

; 桜良表情：笑顔
#桜良
それならよかった～！[p]

#桜良
今度はお泊りも行きたいね！[r]
この間の不思議な部屋じゃ、話したりなかったもん！[p]

; 深雪表情：驚き
; 深雪がぴくっと上にはねる
#深雪
お、とまり...[p]

; 深雪表情：照れ
#深雪
それは...近場を遊びつくしたら、ということにしましょう。[p]

; 桜良表情：困り
#桜良
ええ～。[p]

#桜良
でもスケジュールつめつめだもんね。[r]
しかたないかあ。[p]

; 深雪表情；困り
#深雪
（ほっ...）[p]

; 桜良表情：通常
#桜良
それにしてもあの部屋って何だったんだろうね？[p]

#桜良
気づいたら自分の部屋にいるし、[r]
マネージャーさんは知らないって言うし。[p]

; 深雪表情：通常
#深雪
（確かにその通り...[r]
結局あの部屋のことはわからずじまいだ。）[p]

#深雪
（同じ夢を見た、というには[r]
あまりにも記憶が鮮明すぎる）[p]

#深雪
（ただ...）[p]

#深雪
誘拐かも、なんて一時は考えたけれど、[r]
それにしては居心地の良すぎる空間だった。[p]

#深雪
あの部屋は、私たちを害そうとしたものではないんじゃないかしら。[r]

; 桜良立ち絵：ぴょんと飛び跳ねるように一回上下
; 桜良表情：笑顔
#桜良
最初から最後まで楽しかったよね！[p]

#深雪
ええ。今なら手放しでそう言えるわ。[p]

#深雪
......[p]

#桜良
ん？どうしたの？何かついてる？[p]

#深雪
（むしろ、あの部屋のおかげかもしれないわね）[p]

#深雪
何でもないわ。[p]

; 深雪表情；笑顔
#深雪
ただ、勇気を出してよかったな、って思っただけ。[p]

; 桜良表情：照れ
#桜良
深雪ちゃんって自分が美人だって自覚ある！？[p]

#桜良
もう～！ドキッとしちゃうよ～！[p]

; 深雪表情：困り
#深雪
あなたの笑顔を見るたびにドキドキしている私は一体...[p]

; 桜良表情：通常
#桜良
？？？[p]

; 深雪表情：通常
#深雪
いいのよ、細かいことは気にしないの。[p]

#深雪
桜良、もう少しあっちへ行ってみましょう。[r]
噴水が見えるわ。[p]

; 桜良表情：通常
#桜良
あっ、パンフレットに載ってたよね！[r]
行こ行こ！[p]

; 二人とも非表示
[autostop]
[cancelskip]
[PlayFootStep]
[messageFalse]
[layer1False]
[blackout exp="f.isRoomLightNight == 1" storage_1="epilogue/black.png" storage_2="epilogue/black.png"]
[messageTrue]
#桜良
スキあり！！[p]

#深雪
さ、さくら！？[p]
[iscript]
    f.itemVisible[0] = 'true'
    f.itemVisible[1] = 'epilogue_true'
[endscript]
[messageFalse]
[autostop]
[cancelskip]
[blackout exp="f.isRoomLightNight == 1" storage_1="episode3/bedroom_night.png" storage_2="episode3/bedroom.png"]
[PlayPhotographing]
[flasheffect]
[messageTrue]
[wait time="500"]
[messageTrue]
; 画面が明るくなり、スチル表示予定
; 桜良がぎゅっと深雪に抱き着いて撮ったツーショット写真

#深雪
桜良、あなた案外やんちゃなのね。[p]

#桜良
ふっふっふ、驚いた？[p]

#桜良
これからいっぱい一緒の写真撮ろうね！[p]

#深雪
ふふっ、こちらこそよろしくね。[p]

; 画面がゆっくりと白くなっていく

#謎のメッセージカード
「脱出おめでとう！！[r]
　その勇気があれば、きっとこれからも大丈夫！」[p]

#謎のメッセージカード
「二人とも仲良くね！」[p]
[return]