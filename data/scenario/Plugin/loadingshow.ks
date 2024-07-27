; 画像ファイルを事前ダウンロード
[loading_show file="loaddata.csv"]

; 音声ファイルを事前ダウンロード
[iscript]
    tf.file = [
        "./data/bgm/topmenu.m4a",
        "./data/bgm/episode_op.m4a",
        "./data/bgm/episode1_op.m4a",
        "./data/bgm/episode1.m4a",
        "./data/bgm/se/changecontrolpanellamp.m4a"
    ];
[endscript]
[preload storage="&tf.file" wait="true"]
[iscript]
    delete tf.file;
[endscript]

[eval exp="sf.loadData = 'true' "]

[return]