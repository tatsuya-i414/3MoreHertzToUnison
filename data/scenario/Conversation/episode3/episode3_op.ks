[DispLocation text="山小屋"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `山小屋` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[ShowSakura_Right face="trouble"]
[ShowMiyuki_Left face="trouble"]
#桜良
ええっと...無事クリアできた、みたい？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
もう、いきなり押すなんてびっくりしたじゃない。[p]

[ChangeCharaFace name="sakura" face="blush"]
#桜良
つ、次の部屋に早くいかなきゃって思って！！[p]

[ChangeCharaFace name="miyuki" face="blush"]
#深雪
っ......！[p]

#深雪
（さっきの言葉、[rhr]
_　お世辞じゃないってことなの！？）[p]

#深雪
あ、あの、そうね。[rhr]
早くここから脱出しないといけないんだったわ。[p]

; 桜良漫符：汗
[ChangeCharaFace name="sakura" face="normal"]
#桜良
そうそう！[rhr]
ごめんね、急にボタン押して...[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
大丈夫よ。次からは気を付けて。[rhr]
探索に戻りましょう。[p]

#深雪
ここは...[rhr]
なんだか見覚えのある部屋のような気がするけれど...[p]

[HideAll]
[clearfix]
[messageFalse]
[cancelskip]
[camera zoom="2" x="-200" y="-150" time="1000" wait="true"]
[camera x="400" y="100" time="1000" wait="true"]
[camera zoom="2" x="70" y="250" time="1000" wait="true"]
[reset_camera]
[messageTrue]
[ControlButtons]
[ShowSakura_Right face="surprise"]
[ShowMiyuki_Left face="surprise"]
#桜良
深雪ちゃん、ここって！[p]

#深雪
え、ええ。[rhr]
まさか...[p]

; 桜良、深雪漫符：はてなびっくり
[DispQS_Left]
[DispQS_Right]
#桜良と深雪
「「登山ロケの山小屋！？」」[p]

[FreeDispQS]
[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
（まさかこんなものまで再現しているの！？[rhr]
_　窓の外の風景は違うけれど、内装はそのままじゃない！）[p]

#桜良
すごい、あの時の山小屋だ...！[p]

[PlayCreak]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
わあ！板がきしむ場所まで同じだよ！[p]

[DarkenBackground brightness="45"]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
(ここの壁のシミ、見覚えがある...)[p]

; 深雪漫符：もやもや
[DispFuzzy_Left]
#深雪
(ここまで忠実に再現できるものなのかしら...？)[p]

[FreeDispFuzzy]
[free_filter]
[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
すごく大変だったろうなあ、[rhr]
このお部屋つくるの...[p]

; 桜良漫符：はてな
[DispQuestion_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
あれっ、そういえば深雪ちゃん、[rhr]
いつの間に服を着替えたの？[p]

[FreeDispQuestion]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
それを言うなら桜良もよ。[p]

; 桜良漫符：ワイワイ
[DispClamorously_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
本当だ！[rhr]
いったいどうなってるんだろう、不思議！[p]

[FreeDispClamorously]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
......[p]

#深雪
たぶん、最新技術よ。[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
#桜良
す、すごすぎるね...！[p]

[FreeDispSparkle]
[ChangeCharaFace name="miyuki" face="sigh"]
#深雪
（そういうことにしておいたほうがよさそうね[rhr]
_　...いろんな意味で）[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
ひとまずこの部屋を見てみましょうか。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
山小屋探索開始だね！[p]
[DeleteDispLocation]
[HideAll]
[return]