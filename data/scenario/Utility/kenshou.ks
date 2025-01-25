[cm]
[clearfix]
[clearstack]

; 画面遷移時の判定用変数
[iscript]
    tf.prevPage = 'kenshou'
[endscript]

*Kenshou
[bg storage="share/top.png" time="100"]
[button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Backtitle" x="1680" y="60" clickse="../sound/se/cancel.m4a"]
; シナリオ関連
[ptext layer="fix" text="[シナリオ関連]" x="320" y="80" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出2<br>から始める" x="120" y="130" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.isEpisode1Clear = 1"]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出3<br>から始める" x="120" y="230" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.isEpisode2Clear = 1"]
[ptext layer="fix" text="ON" x="60" y="370" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" cond="f.scn_skip == 1"]
[ptext layer="fix" text="OFF" x="60" y="370" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white" cond="f.scn_skip == 0"]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="会話スキップ(通常)" x="120" y="330" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.scn_skip = 1" cond="f.scn_skip == 0"]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="会話スキップ(通常)" x="120" y="330" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="f.scn_skip = 0" cond="f.scn_skip == 1"]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="OPスキップ" x="120" y="430" width="150" height="30" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episodeOP_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出1序盤スキップ" x="120" y="515" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode1OP_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出1終盤スキップ" x="120" y="615" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode1ED_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出2序盤スキップ" x="120" y="715" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode2OP_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出2終盤スキップ" x="120" y="815" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode2ED_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出3序盤スキップ" x="120" y="915" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode3OP_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="思い出3終盤スキップ" x="420" y="130" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episode3ED_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="EDスキップ" x="420" y="230" width="150" height="30" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episodeED_Skip = 'true' "]
[glink color="bth06" storage="Utility/debug.ks" target="*Save" text="EPスキップ" x="420" y="315" width="150" height="30" clickse="../sound/se/itemdecision.m4a" size="24" bold="true" exp="sf.scn_episodeEP_Skip = 'true' "]
[glink color="bth06" target="*SelectTrueEnd" text="TrueEnd選択" x="420" y="400" width="150" height="30" clickse="../sound/se/itemdecision.m4a" size="24" bold="true"]
[glink color="bth06" target="*PlayEndroll_Normal"  text="エンドロール再生(Normal)" x="420" y="485" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true"]
[glink color="bth06" target="*PlayEndroll_True"  text="エンドロール再生(True)" x="420" y="585" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true"]

; システム関連
[ptext layer="fix" text="[システム関連]" x="770" y="80" size="20" color="&sf.colorScheme[0]" bold="bold" edge="white"]
[glink color="bth06" target="*DeleteSaveData" text="セーブデータ全削除" x="720" y="130" width="150" height="45" clickse="../sound/se/itemdecision.m4a" size="24" bold="true"]
[s]

*SelectTrueEnd
[iscript]
    f.episode1_Secret = 'true'
    f.episode2_Secret = 'true'
    f.episode3_Secret = 'true'
[endscript]

*PlayEndroll_Normal
[clearfix]
[FadeoutBGM]
[iscript]
    f.selectedEDRoute = 'Normal'
[endscript]
[call storage="Conversation/endroll/endroll.ks"]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayNormalBGM]
[endif]
; 選択したEDルートを初期化
[iscript]
    f.selectedEDRoute = ''
[endscript]
[jump target="*Kenshou"]

*PlayEndroll_True
[clearfix]
[FadeoutBGM]
[iscript]
    f.selectedEDRoute = 'True'
[endscript]
[call storage="Conversation/endroll/endroll.ks"]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayNormalBGM]
[endif]
; 選択したEDルートを初期化
[iscript]
    f.selectedEDRoute = ''
[endscript]
[jump target="*Kenshou"]

*DeleteSaveData
[call storage="Utility/deleteSaveData.ks" ]
[jump target="*Kenshou"]

*Backtitle
[cm]
[clearstack]
[jump storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks"]