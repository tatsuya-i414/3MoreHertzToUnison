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
        "./data/bgm/se/changecontrolpanellamp.m4a",
        "./data/bgm/se/openbox.m4a",
        "./data/bgm/se/opendoor.m4a",
        "./data/bgm/se/turndial.m4a",
        "./data/bgm/se/unlockkey.m4a"
    ];
[endscript]
[preload storage="&tf.file" wait="true"]
[iscript]
    delete tf.file;
[endscript]

[eval exp="sf.loadData = 'true' "]

[return]