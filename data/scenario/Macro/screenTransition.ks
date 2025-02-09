; ------------------------------------------------------------
; 画面遷移用マクロ
; ------------------------------------------------------------
; ステージルームへ移動する
[macro name="JumpStageRoom"]
    [jump storage="Gimmick/episode1.ks" target="*StageRoom"]
[endmacro]

; スタジオルームへ移動する
[macro name="JumpStudioRoom"]
    [jump storage="Gimmick/episode2.ks" target="*StudioRoom"]
[endmacro]

; ベッドルームへ移動する
[macro name="JumpBedRoom"]
    [jump storage="Gimmick/episode3.ks" target="*BedRoom"]
[endmacro]
[return]