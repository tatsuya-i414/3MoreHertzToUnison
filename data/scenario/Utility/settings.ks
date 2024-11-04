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
    sf.credit = '©️2024' + '　' + sf.circleName
    // 配色一覧
    sf.colorScheme = ['0x444444', '0x196D7D', '0x89DAE3'] //[黒],[濃緑],[水色]
    // 配布形式
    sf.distribution = $.isElectron() // PCアプリの場合True
    // 起動モード
    sf.bootMode = 'develop'
    // エクストラページの表示
    sf.isExtraPage = 'true'
    // 導入パートのシナリオスキップ
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
[endscript]

; キャラクター設定
[chara_new name="sakura" storage="chara/sakura/normal.png" jname="桜良"]
[chara_new name="miyuki" storage="chara/miyuki/normal.png" jname="深雪"]

; キャラクター表情設定
;[chara_face name="" face="" storage=""]
[return]