;-------------------------------------------------------
; タンス（開錠時）
;-------------------------------------------------------
; アイブロウペンシル未使用時のみ
; 桜良、深雪漫符：びっくり
[ShowMiyuki_Center face="surprise"]
#深雪
あっ。[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
; 桜良漫符：キラキラ
[ShowSakura_Right face="surprise"]
#桜良
おおー！[p]

#深雪
適当にはめてたら当たったみたい。[r]
ラッキーね。[p]

[ChangeCharaFace name="sakura" face="close_eye"]
#桜良
脱出ゲームが始まってから、[r]
深雪ちゃんどんどん鍵を開けてるよね。[p]

[ChangeCharaFace name="sakura" face="smile"]
#桜良
そのおかげで鍵開けマスターに...！[p]

[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
言われるほど開けてないと思うけれど...[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
まあいいわ。[r]
幸運はしっかり活かしましょう。[p]
[HideAll]
[return]