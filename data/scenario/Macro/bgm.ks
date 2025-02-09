; ------------------------------------------------------------
; BGM用マクロ
; ------------------------------------------------------------
; トップ画面BGMを再生する
[macro name="PlayNormalBGM"]
    [playbgm storage="topmenu.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; オープニングBGMを再生する
[macro name="PlayEpisodeOpBGM"]
    [playbgm storage="episode_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1序盤BGMを再生する
[macro name="PlayEpisode1_OpBGM"]
    [playbgm storage="episode1_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1通常BGMを再生する
[macro name="PlayEpisode1BGM"]
    [playbgm storage="episode1.m4a" loop="true" volume="60" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1終盤BGMを再生する
[macro name="PlayEpisode1_EdBGM"]
    [playbgm storage="episode1_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2序盤BGMを再生する
[macro name="PlayEpisode2_OpBGM"]
    [playbgm storage="episode2_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2通常BGMを再生する
[macro name="PlayEpisode2BGM"]
    [playbgm storage="episode2.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2終盤BGMを再生する
[macro name="PlayEpisode2_EdBGM"]
    [playbgm storage="episode2_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3通常BGMを再生する
[macro name="PlayEpisode3BGM"]
    [playbgm storage="episode3.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3序盤BGMを再生する
[macro name="PlayEpisode3_OpBGM"]
    [playbgm storage="episode3_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3終盤BGMを再生する
[macro name="PlayEpisode3_EdBGM"]
    [playbgm storage="episode3_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エンディング(NormalEnd)BGMを再生する
[macro name="PlayEpisodeNormalEdBGM"]
    [playbgm storage="episode_ed_normal.m4a" loop="true" volume="95" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エンディング(TrueEnd)BGMを再生する
[macro name="PlayEpisodeTrueEdBGM"]
    [playbgm storage="episode_ed_true.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エピローグ(NormalEnd)BGMを再生する
[macro name="PlayEpisodeNormalEpBGM"]
    [playbgm storage="episode_ep_normal.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エピローグ(TrueEnd)BGMを再生する
[macro name="PlayEpisodeTrueEpBGM"]
    [playbgm storage="episode_ep_true.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エンドロールBGMを再生する
[macro name="PlayEndrollBGM"]
    [playbgm storage="endroll.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; BGMの再生を停止する
[macro name="StopPlayingBGM"]
    [stopbgm]
    [iscript]
        f.isPlayingBGM = 'false'
    [endscript]
[endmacro]

; BGMをフェードアウトしながら再生停止する
[macro name="FadeoutBGM"]
    [fadeoutbgm time="%fadeoutTime|2000"]
    [wait time="%waitTime|2000"]
    [iscript]
        f.isPlayingBGM = 'false'
    [endscript]
[endmacro]
[return]