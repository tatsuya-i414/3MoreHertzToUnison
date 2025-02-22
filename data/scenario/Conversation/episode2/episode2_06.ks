;-------------------------------------------------------
; ブロック
;-------------------------------------------------------
[ShowMiyuki_Center]
#深雪
このブロック...[p]

[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right face="close_mouth"]
#桜良
それ、積み木かな？[r]
でもみんな同じ形だね。[p]

#深雪
この「脱出ゲーム」のヒントになりそうね。[r]
どこかで使うと思うけれど...[p]

#桜良
どこかで積み木をしたり...？[p]

[ChangeCharaFace name="miyuki" face="amazed"]
#深雪
しないと思うわよ。[p]

; 桜良漫符：汗
[DispSweat_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
だよねえ...[p]
[FreeDispSweat]
[HideAll]
[return]