; 画像ファイルを事前ダウンロード
[loading_show file="loaddata.csv"]

; 音声ファイルを事前ダウンロード
[iscript]
    tf.file = [
        "./data/bgm/topmenu.m4a",
        "./data/bgm/episode_op.m4a",
        "./data/bgm/episode1_op.m4a",
        "./data/bgm/episode1.m4a",
        "./data/bgm/episode1_ed.m4a",
        "./data/bgm/episode2.m4a",
        "./data/bgm/episode3.m4a",
        "./data/bgm/se/bell.m4a",
        "./data/bgm/se/cancel.m4a",
        "./data/bgm/se/camerashutter.m4a",
        "./data/bgm/se/changecontrolpanellamp.m4a",
        "./data/bgm/se/connectcable.m4a",
        "./data/bgm/se/controlpanelbuttonclick.m4a",
        "./data/bgm/se/decision.m4a",
        "./data/bgm/se/decision2.m4a",
        "./data/bgm/se/decision3.m4a",
        "./data/bgm/se/footstep.m4a",
        "./data/bgm/se/getitem.m4a",
        "./data/bgm/se/gosogoso.m4a",
        "./data/bgm/se/itemdecision.m4a",
        "./data/bgm/se/kacha.m4a",
        "./data/bgm/se/mountlightcover.m4a",
        "./data/bgm/se/openbox.m4a",
        "./data/bgm/se/opendoor.m4a",
        "./data/bgm/se/pagechange.m4a",
        "./data/bgm/se/rustlingclothes.m4a",
        "./data/bgm/se/risingstage.m4a",
        "./data/bgm/se/spotlighton.m4a",
        "./data/bgm/se/titledecision.m4a",
        "./data/bgm/se/turndial.m4a",
        "./data/bgm/se/turnofflight.m4a",
        "./data/bgm/se/turnscrew.m4a",
        "./data/bgm/se/unlockkey.m4a"
    ];
[endscript]
[preload storage="&tf.file" wait="true"]
[iscript]
    delete tf.file;
[endscript]

[eval exp="sf.loadData = 'true' "]

[return]