;-------------------------------------------------------
; タンス（開錠時）
;-------------------------------------------------------
; アイブロウペンシル未使用時のみ
[ShowMiyuki_Center face="surprise"]
#深雪
あっ。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="surprise"]
#桜良
おおー！[p]

#深雪
適当にはめてたら当たったみたい。[r]
ラッキーね。[p]

[ChangeCharaFace name="sakura" face="normal"]
#桜良
脱出ゲームが始まってから、[r]
深雪ちゃんどんどん鍵を開けてるよね。[p]

#桜良
そのおかげで鍵開けマスターに...！[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
言われるほど開けてないと思うけれど...[p]

#深雪
まあいいわ。[r]
幸運はしっかり活かしましょう。[p]
[HideAll]
[return]