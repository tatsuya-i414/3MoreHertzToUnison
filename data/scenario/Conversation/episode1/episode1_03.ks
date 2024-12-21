;-------------------------------------------------------
; スピーカー
;-------------------------------------------------------
; ドライバー未所持で初回クリック時
[if exp="f.isClickedSpeaker_first == 'true' && f.isDriverGet == 0"]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    ...曲がってるね。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    曲がってるわね。[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    私、こういうのすっごく直したくなっちゃう。[p]

    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    すごくわかるわ。[p]

    ; 桜良漫符：ワイワイ
    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    だよね！むずむずするんだ～！[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    でも工具がないと角度調整は難しそうね。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    うーん、どこかにあればいいんだけどな。[p]
; ドライバー未所持で二回目以降
[elsif exp="f.isClickedSpeaker_first == 'false' && f.isDriverGet == 0"]
    [ShowSakura_Center face="trouble"]
    #桜良
    やっぱり気になるなあ、この曲がり方。[p]
; ドライバー所持で初回クリック時（ドライバー未所持の時一度も調べていない場合）
[elsif exp="f.isClickedSpeaker_first == 'true' && f.isDriverGet == 1"]
    [ShowSakura_Center face="close_mouth"]
    #桜良
    ...曲がってるね。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    曲がってるわね。[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    私、こういうのすっごく直したくなっちゃう。[p]

    [ChangeCharaFace name="miyuki" face="close_eye"]
    #深雪
    すごくわかるわ。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    だよね！むずむずするんだ～！[p]

    #桜良
    そういえば、さっき拾ったもので直せそう！[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    そうね。まっすぐにしましょう。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    ねじを緩めるくらいならできるはず。[r]
    ...多分。[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    えと、私全然やるよ...？[p]

    #深雪
    だ、大丈夫よ。[r]
    これはねじに突き刺して回すだけだもの。[p]

    #深雪
    これくらいは自分で出来ないと...[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    できそうなところから始めるのは大事だもんね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    わかったよ、深雪ちゃんにお任せするね！[r]
    横でスピーカー支えてるからゆっくりやろう！[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    ありがとう、桜良。[p]

    ; 深雪漫符：汗
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    （いや、でもこの距離...桜良がちかい...[r]
    _　集中力が途切れる......）[p]
    [if exp="f.isClickedSpeaker_first_whenDriverGetting == 'true' "]
        [iscript]
            f.isClickedSpeaker_first_whenDriverGetting = 'false'
        [endscript]
    [endif]
; ドライバー所持で二回目以降
[elsif exp="f.isClickedSpeaker_first_whenDriverGetting == 'false' && f.isDriverGet == 1"]
    [ShowMiyuki_Center face="precious"]
    #深雪
    （落ち着いてやれば大丈夫、大丈夫...）[p]
; ドライバー所持で初回クリック時（ドライバー未所持の時一度調べている場合）
[elsif exp="f.isClickedSpeaker_first == 'false' && f.isDriverGet == 1"]
    [ShowSakura_Center]
    #桜良
    さっき拾ったもので直せるよ！[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left]
    #深雪
    そうね。まっすぐにしましょう。[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    ねじを緩めるくらいならできるはず。[r]
    ...多分。[p]

    [ChangeCharaFace name="sakura" face="amazed"]
    #桜良
    えと、私全然やるよ...？[p]

    #深雪
    だ、大丈夫よ。[r]
    これはねじに突き刺して回すだけだもの。[p]

    #深雪
    これくらいは自分で出来ないと...[p]

    [ChangeCharaFace name="sakura" face="close_eye"]
    #桜良
    できそうなところから始めるのは大事だもんね。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    わかったよ、深雪ちゃんにお任せするね！[r]
    横でスピーカー支えてるからゆっくりやろう！[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    ありがとう、桜良。[p]

    ; 深雪漫符：汗
    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    （いや、でもこの距離...桜良がちかい...[r]
    _　集中力が途切れる...）[p]
    [if exp="f.isClickedSpeaker_first_whenDriverGetting == 'true' "]
        [iscript]
            f.isClickedSpeaker_first_whenDriverGetting = 'false'
        [endscript]
    [endif]
[endif]
[HideAll]
[return]

*UseDriver
[messageFalse]
[PlayTurnScrew]
[wait time="500"]
[free layer="1" name="speaker"]
[image storage="../image/episode1/speaker_afterrepair.png" layer="1" x="1" y="125" name="speaker"]
[wait time="1000"]
[PlayChangeControlPanelLamp]
[messageTrue]
[ShowMiyuki_Center face="sigh"]
#深雪
ふう。[r]
（こ、壊さなくてよかった。[r]
_　ねじ回す方向一度間違えたけど...）[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
; 桜良漫符：キラキラ
[ShowSakura_Right face="smile"]
#桜良
これでばっちりだね！[r]
お疲れ様、深雪ちゃん！[p]

#桜良
スピーカーが曲がったままだったら、[r]
ライブステージなのに音楽を届けられないところだったね！[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
そもそもそんなライブ会場があったら、[r]
私が駄目出ししてすべてやり直させるわ。[p]

#深雪
（桜良も上がるステージなのに、[r]
_　不完全な状態なんて絶対に許されないもの）[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
深雪ちゃんってステージの演出にも興味あるの？[p]

#深雪
少しだけね。[r]
みんなをよりよく見せるために、どんなことでもやりたいもの。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
すごい...かっこいい...[p]

#深雪
（決めた。[r]
_　私、本格的にステージ演出勉強する）[p]

; 深雪漫符：キラキラ
[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（桜良が「かっこいい」って言ってくれたんだもの。[r]
_　もうこれはやるしかないでしょう！）[p]

#深雪
（ここから出たらすぐに調べないと...）[p]
[free layer="1" name="speaker"]
[HideAll]
[return]

*NotUseDriver
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [nolog]
    [ShowMiyuki_Center face="close_eye"]
    #深雪
    待って、作業のイメトレするから。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    おっけー、イメトレ完了したら言ってね！[p]
    [endnolog]
    [HideAll]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfDriver"]