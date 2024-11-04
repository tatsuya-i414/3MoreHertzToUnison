; 画像ファイルを事前ダウンロード
[loading_show file="loaddata.csv"]
; 音声ファイルを事前ダウンロード
[iscript]
    tf.audioFile = [
        "./data/bgm/topmenu.m4a",
        "./data/bgm/episode_op.m4a",
        "./data/bgm/episode1_op.m4a",
        "./data/bgm/episode1.m4a",
        "./data/bgm/episode1_ed.m4a",
        "./data/bgm/episode2_op.m4a",
        "./data/bgm/episode2.m4a",
        "./data/bgm/episode2_ed.m4a",
        "./data/bgm/episode3_op.m4a",
        "./data/bgm/episode3.m4a",
        "./data/sound/se/bell.m4a",
        "./data/sound/se/cancel.m4a",
        "./data/sound/se/camerashutter.m4a",
        "./data/sound/se/changecontrolpanellamp.m4a",
        "./data/sound/se/connectcable.m4a",
        "./data/sound/se/controlpanelbuttonclick.m4a",
        "./data/sound/se/creak.m4a",
        "./data/sound/se/decision.m4a",
        "./data/sound/se/decision2.m4a",
        "./data/sound/se/decision3.m4a",
        "./data/sound/se/embed.m4a",
        "./data/sound/se/footstep.m4a",
        "./data/sound/se/gachagacha.m4a",
        "./data/sound/se/getitem.m4a",
        "./data/sound/se/gosogoso.m4a",
        "./data/sound/se/gosogoso2.m4a",
        "./data/sound/se/itemdecision.m4a",
        "./data/sound/se/kacha.m4a",
        "./data/sound/se/mountlightcover.m4a",
        "./data/sound/se/openbox.m4a",
        "./data/sound/se/openchest.m4a",
        "./data/sound/se/opendoor.m4a",
        "./data/sound/se/pagechange.m4a",
        "./data/sound/se/risingstage.m4a",
        "./data/sound/se/run.m4a",
        "./data/sound/se/rustlingclothes.m4a",
        "./data/sound/se/scrubpencil.m4a",
        "./data/sound/se/spotlighton.m4a",
        "./data/sound/se/swing.m4a",
        "./data/sound/se/switching.m4a",
        "./data/sound/se/titledecision.m4a",
        "./data/sound/se/turndial.m4a",
        "./data/sound/se/turnofflight.m4a",
        "./data/sound/se/turnover.m4a",
        "./data/sound/se/turnscrew.m4a",
        "./data/sound/se/unlockkey.m4a"
    ];
[endscript]
[preload storage="&tf.audioFile" wait="true"]
[iscript]
    delete tf.audioFile;
    f.loadData = 'true'
[endscript]
[return]