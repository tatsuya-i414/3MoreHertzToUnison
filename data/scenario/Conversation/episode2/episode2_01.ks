;-------------------------------------------------------
; カメラ
;-------------------------------------------------------
; 衣装を身に着けていない、天幕が下りていない時
[if exp="f.isTentDown == 0 && f.isDressGet != -1"]
    [ShowMiyuki_Center]
    #深雪
    普通に写真を撮るだけではダメだったわね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="seriously"]
    #桜良
    撮影スタジオだからかな？[r]
    衣装とか着ないといけないのかも。[p]

    ; 深雪漫符：もやもや
    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    そうだとしたら少し面倒ね...[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    どうして？[r]
    深雪ちゃん、どんな服も着こなしちゃうのに。[p]

    [ChangeCharaFace name="miyuki" face="blush"]
    #深雪
    えっ！？[r]
    あ、純粋に衣装って身に着けるものが多いから...ッ！[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    それは確かに！[r]
    装飾多くて時間かかるよね～！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （と、唐突の衝撃に耐えられないところだった...[r]
    _　あぶないあぶない...）[p]
; 天幕が下りており、衣装を身に着けていない状態
[elsif exp="f.isTentDown == 1 && f.isDressGet != -1"]
    [ShowSakura_Center face="seriously"]
    #桜良
    天幕はおろせたけど、なんだか物足りない感じだよね。[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="trouble"]
    #深雪
    部屋の隅にあるクローゼットが少し気になるわ。[r]
    衣装や小道具が入っているのかもしれないわね。[p]

    ; 桜良漫符：はてな
    [ChangeCharaFace name="sakura" face="surprise"]
    #桜良
    えっ、でもあれ取っ手がついてないよ？[r]
    変なくぼみだけついてて...[p]

    #深雪
    （変なくぼみ...[r]
    _　何かをはめるのかしら？）[p]
; 衣装を身に着けており、天幕が下りていない時
; ここの立ち絵は衣装を着ているものに変更
[elsif exp="f.isTentDown == 0 && f.isDressGet == -1"]
    [ShowMiyuki_Center]
    #深雪
    着替えてみたはいいけれど、天幕をおろしていなかったわね。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="surprise"]
    #桜良
    このまま撮るのはダメなの？[p]

    [ChangeCharaFace name="miyuki" face="seriously"]
    #深雪
    ダメよ。[r]
    良い撮影環境があるんだから妥協は許さない。[p]

    [ChangeCharaFace name="sakura" face="close_mouth"]
    #桜良
    おお～...[r]
    なんだかプロのカメラマンみたい。[p]

    #深雪
    アマチュアよ。[r]
    それに、これはただのこだわりだから。[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （せっかく撮るならちゃんと撮りたい、[r]
    _　っていう私のわがままなんだけれど）[p]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    うーん、でも天幕をおろせる道具がなさそう。[r]
    椅子を持ってきても届かなそうだし。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    何か代わりになる道具をさがそっか！[p]

    [ChangeCharaFace name="miyuki" face="trouble"]
    #深雪
    ごめんなさい、わがままを言って。[p]

    [ChangeCharaFace name="sakura" face="smile"]
    #桜良
    こんなの全然わがままのうちじゃないよ！[r]
    さあて、一緒に探そう！[p]

    [ChangeCharaFace name="miyuki" face="smile"]
    #深雪
    ありがとう、桜良。[p]
; 天幕が下りており、衣装を身に着けた状態
[elsif exp="f.isTentDown == 1 && f.isDressGet == -1"]
    ; 初回セリフ表示
    [if exp="f.isClickedCamera_first == 'true' "]
        ; 桜良漫符：音符
        [ShowSakura_Center face="smile"]
        #桜良
        撮影準備、ばっちりだね！[p]

        [iscript]
            f.charaPosition[0] = 'sakura'
            f.charaPosition[1] = 'right'
        [endscript]
        [ChangeCharaPosition]
        [ShowMiyuki_Left face="smile"]
        #深雪
        そうね。[r]
        この部屋にあるものはすべて活用したから、[r]
        これで条件は満たしているはず。[p]

        [ChangeCharaFace name="sakura" face="close_mouth"]
        #桜良
        ねえ深雪ちゃん、今すぐ写真を撮る？[r]
        それとも、もう少しこの部屋を見てみる？[p]
        [iscript]
            f.isClickedCamera_first = 'false'
        [endscript]
    ; 二回目以降セリフ表示
    [else]
        [ShowSakura_Center]
        #桜良
        そろそろ写真を撮るの？[p]
    [endif]
    [HideAll]
    [nolog]
    #
    写真を撮りますか？
    [endnolog]
    [YesNoButton target_yes="*TakeAPicture" target_no="*NotTakeAPicture"]
    [s]
[endif]
[HideAll]
[return]

*TakeAPicture
[ShowMiyuki_Center]
[nolog]
#深雪
ええ、そうしましょう。[r]
カメラの前に立って。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="smile"]
#桜良
おっけー！[p]
[endnolog]
[HideAll]
[return]

*NotTakeAPicture
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [nolog]
    [ShowMiyuki_Center]
    #深雪
    まだ少しだけ部屋を見てみたいわ。[r]
    何か見逃しているかも。[p]


    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    わかった！[r]
    準備ができたら言ってね！[p]
    [endnolog]
[endif]
[HideAll]
[JumpStudioRoom]