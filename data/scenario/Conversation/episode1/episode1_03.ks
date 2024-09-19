;-------------------------------------------------------
; スピーカー
;-------------------------------------------------------
; ドライバー未所持
; 初回クリック時
[if exp="f.isClickedSpeaker_first == 'true' && f.isDriverGet == 0"]
    ; 桜良表情：通常
    #桜良
    ......曲がってるね。[p]

    #深雪
    曲がってるわね。[p]

    ; 桜良表情：困り
    #桜良
    私、こういうのすっごく直したくなっちゃう。[p]

    ; 深雪表情：尊い
    #深雪
    すごくわかる。[p]

    ; 桜良表情：笑顔
    #桜良
    だよね！むずむずするんだ～！[p]

    #深雪
    でも工具がないと角度調整は難しそうね。[p]

    #桜良
    うーん、どこかにあればいいんだけどな。[p]
; ドライバー未所持
; 2回目以降
[elsif exp="f.isClickedSpeaker_first == 'false' && f.isDriverGet == 0"]
    ;桜良表情：困り
    #桜良
    やっぱり気になるなあ、この曲がり方。[p]
; ドライバー所持
; 初回クリック時（ドライバー未所持の時一度も調べていない場合）
[elsif exp="f.isClickedSpeaker_first == 'true' && f.isDriverGet == 1"]
    ; 桜良表情：通常
    #桜良
    ......曲がってるね。[p]

    #深雪
    曲がってるわね。[p]

    ; 桜良表情：困り
    #桜良
    私、こういうのすっごく直したくなっちゃう。[p]

    ; 深雪表情：尊い
    #深雪
    すごくわかる。[p]

    ; 桜良表情：笑顔
    #桜良
    だよね！むずむずするんだ～！[p]

    #桜良
    そういえば、さっき拾ったもので直せそう！[p]

    ; 深雪表情：通常
    #深雪
    そうね。まっすぐにしましょう。[p]

    ; 深雪表情：困り
    ねじを緩めるくらいならできるはず。[r]
    ......多分。[p]

    #桜良
    深雪ちゃん？[r]
    どうしたの？[p]

    ; 深雪表情：通常
    #深雪
    な、なんでもない。[r]
    力加減に気を付けてゆっくりやれば......[p]

    #桜良
    横でスピーカー支えてるね！[p]

    ; 深雪表情：尊い
    #深雪
    （ち、ちかい......[r]
    集中力が途切れる......）[p]
    [if exp="f.isClickedSpeaker_first_whenDriverGetting == 'true' "]
        [eval exp="f.isClickedSpeaker_first_whenDriverGetting = 'false' "]
    [endif]
; ドライバー所持
; 2回目以降
[elsif exp="f.isClickedSpeaker_first_whenDriverGetting == 'false' && f.isDriverGet == 1"]
    ;深雪表情：尊い
    #深雪
    （落ち着いてやれば大丈夫、大丈夫......）[p]
; ドライバー所持
; 初回クリック時（ドライバー未所持の時一度調べている場合）
[elsif exp="f.isClickedSpeaker_first == 'false' && f.isDriverGet == 1"]
    ; 桜良表情：通常
    #桜良
    さっき拾ったもので直せるよ！[p]

    ; 深雪表情：通常
    #深雪
    そうね。まっすぐにしましょう。[p]

    ; 深雪表情：困り
    ねじを緩めるくらいならできるはず。[r]
    ......多分。[p]

    #桜良
    深雪ちゃん？[r]
    どうしたの？[p]

    ; 深雪表情：通常
    #深雪
    な、なんでもない。[r]
    力加減に気を付けてゆっくりやれば......[p]

    #桜良
    横でスピーカー支えてるね！[p]

    ; 深雪表情：尊い
    #深雪
    （ち、ちかい......[r]
    集中力が途切れる......）[p]
    [if exp="f.isClickedSpeaker_first_whenDriverGetting == 'true' "]
        [eval exp="f.isClickedSpeaker_first_whenDriverGetting = 'false' "]
    [endif]
[endif]
[return]

*UseDriver
; 深雪表情：通常
[messageFalse]
[PlayTurnScrew]
[wait time="500"]
[free layer="1" name="speaker"]
[image storage="../image/episode1/speaker_afterrepair.png" layer="1" x="1" y="125" name="speaker"]
[wait time="1000"]
[PlayChangeControlPanelLamp]
[messageTrue]
#深雪
ふう。[r]
（こ、壊さなくてよかった。[r]
ねじ回す方向一度間違えたけど......）[p]

; 桜良表情：笑顔
#桜良
これでばっちりだね！[r]
ライブステージなのにスピーカーが曲がってたら、[r]
音楽を届けられないし！[p]

#深雪
そもそもそんなライブ会場があったら、[r]
私が駄目出ししてすべてやり直させるわ。[p]

#深雪
（桜良も上がるステージなのに、[r]
不完全な状態なんて絶対に許されないもの）[p]

; 桜良表情：通常
#桜良
深雪ちゃんってステージの演出にも興味あるの？[p]

#深雪
少しだけね。[r]
みんなをよりよく見せるために、どんなことでもやりたいもの。[p]

; 桜良表情：赤面
#桜良
かっこいい......[p]

#深雪
（決めた。[r]
私、本格的にステージ演出勉強する）[p]

; 深雪表情：尊い
#深雪
（桜良が「かっこいい」って言ってくれたんだもの。[r]
もっとかっこいい私になってみせるわ！）[p]
[free layer="1" name="speaker"]
[return]

*NotUseDriver
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [FreeItemBox]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    ; 深雪表情：通常
    #深雪
    待って、作業のイメトレするから。[p]

    ; 桜良表情：通常
    #桜良
    い、イメトレ......？[p]
    [endnolog]
    [layer3False]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SelectItemOfDriver"]