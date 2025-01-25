[iscript]
    // タイトル名
    sf.gameTitle = 'ユニゾンまであと3ヘルツ'
    // システムバージョン
    sf.sysVersion = '1.0.0'
    // ティラノスクリプトバージョン
    sf.trnVersion = '521k'
    // サークル名
    sf.circleName = '深夜三十時'
    // クレジット
    sf.credit = '©️2025'+'&nbsp'+sf.circleName
    // 配色一覧
    sf.colorScheme = ['0x444444','0x196D7D','0x89DAE3','0x505050','0xF5F5F5'] // [黒],[濃緑],[水色],[灰色],[白色]
    // 配布形式
    sf.distribution = $.isElectron() // PCアプリの場合True
    // 起動モード
    sf.bootMode = 'develop' // 開発:develop 検証:kenshou 通常:normal
    // エクストラページの表示
    sf.isExtraPage = 'true'
    // オープニングのシナリオスキップ
    sf.scn_episodeOP_Skip = 'false'
    // 思い出1序盤のシナリオスキップ
    sf.scn_episode1OP_Skip = 'false'
    // 思い出1終盤のシナリオスキップ
    sf.scn_episode1ED_Skip = 'false'
    // 思い出2序盤のシナリオスキップ
    sf.scn_episode2OP_Skip = 'false'
    // 思い出2終盤のシナリオスキップ
    sf.scn_episode2ED_Skip = 'false'
    // 思い出3序盤のシナリオスキップ
    sf.scn_episode3OP_Skip = 'false'
    // 思い出3終盤のシナリオスキップ
    sf.scn_episode3ED_Skip = 'false'
    // エンディングのシナリオスキップ
    sf.scn_episodeED_Skip = 'false'
    // エピローグのシナリオスキップ
    sf.scn_episodeEP_Skip = 'false'
    // エンドロールのスキップ
    sf.endrollSkip = 'false'
[endscript]

; キャラクター設定
[chara_new name="sakura" storage="chara/sakura/normal.png" jname="桜良"]
[chara_new name="miyuki" storage="chara/miyuki/normal.png" jname="深雪"]

; キャラクター表情設定
[chara_face name="sakura" face="amazed" storage="chara/sakura/amazed.png"]
[chara_face name="sakura" face="blush" storage="chara/sakura/blush.png"]
[chara_face name="sakura" face="close_eye" storage="chara/sakura/close_eye.png"]
[chara_face name="sakura" face="close_mouth" storage="chara/sakura/close_mouth.png"]
[chara_face name="sakura" face="normal" storage="chara/sakura/normal.png"]
[chara_face name="sakura" face="seriously" storage="chara/sakura/seriously.png"]
[chara_face name="sakura" face="smile" storage="chara/sakura/smile.png"]
[chara_face name="sakura" face="surprise" storage="chara/sakura/surprise.png"]
[chara_face name="sakura" face="trouble" storage="chara/sakura/trouble.png"]
[chara_face name="miyuki" face="amazed" storage="chara/miyuki/amazed.png"]
[chara_face name="miyuki" face="blush" storage="chara/miyuki/blush.png"]
[chara_face name="miyuki" face="close_eye" storage="chara/miyuki/close_eye.png"]
[chara_face name="miyuki" face="impatience" storage="chara/miyuki/impatience.png"]
[chara_face name="miyuki" face="normal" storage="chara/miyuki/normal.png"]
[chara_face name="miyuki" face="precious" storage="chara/miyuki/precious.png"]
[chara_face name="miyuki" face="seriously" storage="chara/miyuki/seriously.png"]
[chara_face name="miyuki" face="sigh" storage="chara/miyuki/sigh.png"]
[chara_face name="miyuki" face="smile" storage="chara/miyuki/smile.png"]
[chara_face name="miyuki" face="surprise" storage="chara/miyuki/surprise.png"]
[chara_face name="miyuki" face="trouble" storage="chara/miyuki/trouble.png"]

; キャラクター操作設定
[chara_config pos_mode="false" emory="true" talk_focus="brightness" brightness_value="70"]
[return]