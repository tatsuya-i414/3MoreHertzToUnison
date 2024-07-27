; 画像ファイルを事前ダウンロード
[loading_show file="loaddata.csv"]

; 音声ファイルを事前ダウンロード
[iscript]
    tf.file = [
        "./data/bgm/topmenu.m4a",
        "./data/bgm/episode1_01.m4a",
        "./data/bgm/episode1_02.m4a",
        "./data/bgm/episode1.m4a",
        "./data/bgm/se/changecontrolpanellamp.mp3"
    ];
[endscript]
[preload storage="&tf.file" wait="true"]
[iscript]
    delete tf.file;
[endscript]

[eval exp="sf.loadData = 'true' "]

[return]