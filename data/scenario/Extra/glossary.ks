[clearfix] 
[clearstack]
[layer1True]
[bg storage="extra/glossary.png" time="100"]

[iscript]
    tf.pageNo = 0               // 現在のページ数
    tf.maxPageNo = 2            // 最大ページ数
    tf.isFirstPage = 'false'    // 1ページ目かどうか
    tf.isLastPage = 'false'     // 最終ページかどうか
    tf.selectedDescription = 0  // 選択した用語番号
    tf.isCharacter = 0          // 用語がキャラクター関係か判定するフラグ
[endscript]

; 用語一覧_1ページ目
*Page_1
[cm]
[clearfix]
[iscript]
    tf.pageNo = 1
    tf.isFirstPage = 'true'
    tf.isLastPage = 'false'
[endscript]
[if exp="f.isOpenDesc_01 == 'true' "]
    [if exp="f.isReadDesc_01 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="292" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 1" name="newIcon_01"]
    [endif]
    [button graphic="glossary/glossary_select_01.png" target="*OpenDescription" x="100" y="300" enterimg="glossary/glossary_select_01_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 1" name="description_01"]
[else]
    [button graphic="glossary/glossary_select_01_unknown.png" target="*OpenDescription" x="100" y="300" enterimg="glossary/glossary_select_01_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 1" name="description_01"]
[endif]
[if exp="f.isOpenDesc_02 == 'true' "]
    [if exp="f.isReadDesc_02 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="372" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 2" name="newIcon_02"]
    [endif]
    [button graphic="glossary/glossary_select_02.png" target="*OpenDescription" x="100" y="380" enterimg="glossary/glossary_select_02_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 2" name="description_02"]
[else]
    [button graphic="glossary/glossary_select_02_unknown.png" target="*OpenDescription" x="100" y="380" enterimg="glossary/glossary_select_02_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 2" name="description_02"]
[endif]
[if exp="f.isOpenDesc_03 == 'true' "]
    [if exp="f.isReadDesc_03 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="452" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 3" name="newIcon_03"]
    [endif]
    [button graphic="glossary/glossary_select_03.png" target="*OpenDescription" x="100" y="460" enterimg="glossary/glossary_select_03_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 3" name="description_03"]
[else]
    [button graphic="glossary/glossary_select_03_unknown.png" target="*OpenDescription" x="100" y="460" enterimg="glossary/glossary_select_03_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 3" name="description_03"]
[endif]
[if exp="f.isOpenDesc_04 == 'true' "]
    [if exp="f.isReadDesc_04 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="532" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 4" name="newIcon_04"]
    [endif]
    [button graphic="glossary/glossary_select_04.png" target="*OpenDescription" x="100" y="540" enterimg="glossary/glossary_select_04_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 4" name="description_04"]
[else]
    [button graphic="glossary/glossary_select_04_unknown.png" target="*OpenDescription" x="100" y="540" enterimg="glossary/glossary_select_04_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 4" name="description_04"]
[endif]
[if exp="f.isOpenDesc_05 == 'true' "]
    [if exp="f.isReadDesc_05 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="612" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 5" name="newIcon_05"]
    [endif]
    [button graphic="glossary/glossary_select_05.png" target="*OpenDescription" x="100" y="620" enterimg="glossary/glossary_select_05_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 5" name="description_05"]
[else]
    [button graphic="glossary/glossary_select_05_unknown.png" target="*OpenDescription" x="100" y="620" enterimg="glossary/glossary_select_05_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 5" name="description_05"]
[endif]
[if exp="f.isOpenDesc_06 == 'true' "]
    [if exp="f.isReadDesc_06 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="692" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 6" name="newIcon_06"]
    [endif]
    [button graphic="glossary/glossary_select_06.png" target="*OpenDescription" x="100" y="700" enterimg="glossary/glossary_select_06_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 6" name="description_06"]
[else]
    [button graphic="glossary/glossary_select_06_unknown.png" target="*OpenDescription" x="100" y="700" enterimg="glossary/glossary_select_06_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 6" name="description_06"]
[endif]
[if exp="f.isOpenDesc_07 == 'true' "]
    [if exp="f.isReadDesc_07 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="772" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 7" name="newIcon_07"]
    [endif]
    [button graphic="glossary/glossary_select_07.png" target="*OpenDescription" x="100" y="780" enterimg="glossary/glossary_select_07_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 7" name="description_07"]
[else]
    [button graphic="glossary/glossary_select_07_unknown.png" target="*OpenDescription" x="100" y="780" enterimg="glossary/glossary_select_07_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 7" name="description_07"]
[endif]
[if exp="f.isOpenDesc_08 == 'true' "]
    [if exp="f.isReadDesc_08 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="852" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 8" name="newIcon_08"]
    [endif]
    [button graphic="glossary/glossary_select_08.png" target="*OpenDescription" x="100" y="860" enterimg="glossary/glossary_select_08_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 8" name="description_08"]
[else]
    [button graphic="glossary/glossary_select_08_unknown.png" target="*OpenDescription" x="100" y="860" enterimg="glossary/glossary_select_08_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 8" name="description_08"]
[endif]
[Glossary_Pagination target_next="*Page_2"]
[s]

; 用語一覧_2ページ目
*Page_2
[cm]
[clearfix]
[iscript]
    tf.pageNo = 2
    tf.isLastPage = 'true'
    tf.isFirstPage = 'false'
[endscript]
[if exp="f.isOpenDesc_09 == 'true' "]
    [if exp="f.isReadDesc_09 == 'false' "]
        [button graphic="../image/glossary/icon_new_02.png" target="*OpenDescription" x="780" y="292" fix="true" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 9" name="newIcon_09"]
    [endif]
    [button graphic="glossary/glossary_select_09.png" target="*OpenDescription" x="100" y="300" enterimg="glossary/glossary_select_09_hover.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 9" name="description_09"]
[else]
    [button graphic="glossary/glossary_select_09_unknown.png" target="*OpenDescription" x="100" y="300" enterimg="glossary/glossary_select_09_hover_unknown.png" clickse="../sound/se/itemdecision.m4a" exp="tf.selectedDescription = 9" name="description_09"]
[endif]
[Glossary_Pagination target_prev="*Page_1"]
[s]


*OpenDescription
; ---------------------------------------------------
; クリックしたボタンの処理
    ; 1.既読処理
    ; 2.通常のボタン画像を削除する
    ; 3.詳細内の全レイヤーを削除する
    ; 4.キャラクターかどうかの判定
    ; 5.引数で渡した情報で詳細を作成する
; クリックしたボタン以外の処理
    ; 再度ボタンを作成する
; ---------------------------------------------------

; ---------------------------------------------------
; 説明文の最大文字数
    ; キャラクター以外：20文字×10行の最大200文字まで
    ; キャラクター：20文字×6行の最大120文字まで
; ---------------------------------------------------
[clearstack]
[image layer="1" storage="../image/glossary/log_panel.png" x="850" y="300" width="1308" height="741"]
[if exp="tf.pageNo == 1"]
    [if exp="tf.selectedDescription == 1"]
        [if exp="f.isOpenDesc_01 == 'true' "]
            [if exp="f.isReadDesc_01 == 'false' "]
                [clearfix name="newIcon_01"]
                [iscript]
                    f.isReadDesc_01 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_01"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_01_click.png" y="300" enterimg="glossary/glossary_select_01_hover.png" exp="tf.selectedDescription = 1" descriptionNo="1" storage="" furigana="" x="1410" name="AQUARIUM" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_01"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_01_click_unknown.png" y="300" enterimg="glossary/glossary_select_01_hover_unknown.png" exp="tf.selectedDescription = 1" descriptionNo="1" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_01 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_01.png" y="300" enterimg="glossary/glossary_select_01_hover.png" exp="tf.selectedDescription = 1" name="description_01"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_01_unknown.png" y="300" enterimg="glossary/glossary_select_01_hover_unknown.png" exp="tf.selectedDescription = 1" name="description_01"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 2"]
        [if exp="f.isOpenDesc_02 == 'true' "]
            [if exp="f.isReadDesc_02 == 'false' "]
                [clearfix name="newIcon_02"]
                [iscript]
                    f.isReadDesc_02 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_02"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 1
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_02_click.png" y="380" enterimg="glossary/glossary_select_02_hover.png" exp="tf.selectedDescription = 2" descriptionNo="2" storage="chara/sakura/normal.png" furigana="さいとう　さくら" x="1360" name="&String('斎藤\x20桜良')" age="19歳" bloodtype="O型" birthday="5月5日" stature="159cm" birthplace="千葉県" hobby="カラオケ" specialskill="ボウリング" motif="ヤドカリ" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_02"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_02_click_unknown.png" y="380" enterimg="glossary/glossary_select_02_hover_unknown.png" exp="tf.selectedDescription = 2" descriptionNo="2" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_02 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_02.png" y="380" enterimg="glossary/glossary_select_02_hover.png" exp="tf.selectedDescription = 2" name="description_02"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_02_unknown.png" y="380" enterimg="glossary/glossary_select_02_hover_unknown.png" exp="tf.selectedDescription = 2" name="description_02"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 3"]
        [if exp="f.isOpenDesc_03 == 'true' "]
            [if exp="f.isReadDesc_03 == 'false' "]
                [clearfix name="newIcon_03"]
                [iscript]
                    f.isReadDesc_03 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_03"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 1
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_03_click.png" y="460" enterimg="glossary/glossary_select_03_hover.png" exp="tf.selectedDescription = 3" descriptionNo="3" storage="chara/miyuki/normal.png" furigana="くろい　みゆき" x="1370" name="&String('黒井\x20深雪')" age="18歳" bloodtype="A型" birthday="2月2日" stature="163cm" birthplace="東京都" hobby="写真" specialskill="ピアノ" motif="クリオネ" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_03"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_03_click_unknown.png" y="460" enterimg="glossary/glossary_select_03_hover_unknown.png" exp="tf.selectedDescription = 3" descriptionNo="3" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_03 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_03.png" y="460" enterimg="glossary/glossary_select_03_hover.png" exp="tf.selectedDescription = 3" name="description_03"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_03_unknown.png" y="460" enterimg="glossary/glossary_select_03_hover_unknown.png" exp="tf.selectedDescription = 3" name="description_03"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 4"]
        [if exp="f.isOpenDesc_04 == 'true' "]
            [if exp="f.isReadDesc_04 == 'false' "]
                [clearfix name="newIcon_04"]
                [iscript]
                    f.isReadDesc_04 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_04"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 1
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_04_click.png" y="540" enterimg="glossary/glossary_select_04_hover.png" exp="tf.selectedDescription = 4" descriptionNo="4" storage="chara/yuno/normal.png" image_x="910" image_y="380" width="400" height="400" furigana="こもり　ゆの" x="1370" name="&String('小森\x20柚乃')" age="17歳" bloodtype="？？？" birthday="？？？" stature="？？？" birthplace="？？？" hobby="？？？" specialskill="？？？" motif="シロイルカ" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_04"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_04_click_unknown.png" y="540" enterimg="glossary/glossary_select_04_hover_unknown.png" exp="tf.selectedDescription = 4" descriptionNo="4" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_04 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_04.png" y="540" enterimg="glossary/glossary_select_04_hover.png" exp="tf.selectedDescription = 4" name="description_04"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_04_unknown.png" y="540" enterimg="glossary/glossary_select_04_hover_unknown.png" exp="tf.selectedDescription = 4" name="description_04"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 5"]
        [if exp="f.isOpenDesc_05 == 'true' "]
            [if exp="f.isReadDesc_05 == 'false' "]
                [clearfix name="newIcon_05"]
                [iscript]
                    f.isReadDesc_05 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_05"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 1
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_05_click.png" y="620" enterimg="glossary/glossary_select_05_hover.png" exp="tf.selectedDescription = 5" descriptionNo="5" storage="chara/akari/normal.png" image_x="910" image_y="380" width="400" height="400" furigana="とうどう　あかり" x="1360" name="&String('東党\x20朱理')" age="19歳" bloodtype="？？？" birthday="？？？" stature="？？？" birthplace="？？？" hobby="？？？" specialskill="？？？" motif="グッピー" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_05"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_05_click_unknown.png" y="620" enterimg="glossary/glossary_select_05_hover_unknown.png" exp="tf.selectedDescription = 5" descriptionNo="5" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_05 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_05.png" y="620" enterimg="glossary/glossary_select_05_hover.png" exp="tf.selectedDescription = 5" name="description_05"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_05_unknown.png" y="620" enterimg="glossary/glossary_select_05_hover_unknown.png" exp="tf.selectedDescription = 5" name="description_05"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 6"]
        [if exp="f.isOpenDesc_06 == 'true' "]
            [if exp="f.isReadDesc_06 == 'false' "]
                [clearfix name="newIcon_06"]
                [iscript]
                    f.isReadDesc_06 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_06"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 1
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_06_click.png" y="700" enterimg="glossary/glossary_select_06_hover.png" exp="tf.selectedDescription = 6" descriptionNo="6" storage="chara/honami/normal.png" image_x="910" image_y="380" width="400" height="400" furigana="あまた　ほなみ" x="1370" name="&String('天田\x20帆南')" age="18歳" bloodtype="？？？" birthday="？？？" stature="？？？" birthplace="？？？" hobby="？？？" specialskill="？？？" motif="ネオンテトラ" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_06"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_06_click_unknown.png" y="700" enterimg="glossary/glossary_select_06_hover_unknown.png" exp="tf.selectedDescription = 6" descriptionNo="6" storage="../image/glossary/lock.png" width="276" height="300" furigana="" x="1410" name="？？？" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_06 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_06.png" y="700" enterimg="glossary/glossary_select_06_hover.png" exp="tf.selectedDescription = 6" name="description_06"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_06_unknown.png" y="700" enterimg="glossary/glossary_select_06_hover_unknown.png" exp="tf.selectedDescription = 6" name="description_06"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 7"]
        [if exp="f.isOpenDesc_07 == 'true' "]
            [if exp="f.isReadDesc_07 == 'false' "]
                [clearfix name="newIcon_07"]
                [iscript]
                    f.isReadDesc_07 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_07"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_07_click.png" y="780" enterimg="glossary/glossary_select_07_hover.png" exp="tf.selectedDescription = 7" descriptionNo="7" storage="../image/episode1/mike_high.png" furigana="" name="マイク" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_07"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_07_click_unknown.png" y="780" enterimg="glossary/glossary_select_07_hover_unknown.png" exp="tf.selectedDescription = 7" descriptionNo="7" storage="../image/glossary/lock.png" width="276" height="300" furigana="" name="？？？" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_07 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_07.png" y="780" enterimg="glossary/glossary_select_07_hover.png" exp="tf.selectedDescription = 7" name="description_07"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_07_unknown.png" y="780" enterimg="glossary/glossary_select_07_hover_unknown.png" exp="tf.selectedDescription = 7" name="description_07"]
        [endif]
    [endif]
    [if exp="tf.selectedDescription == 8"]
        [if exp="f.isOpenDesc_08 == 'true' "]
            [if exp="f.isReadDesc_08 == 'false' "]
                [clearfix name="newIcon_08"]
                [iscript]
                    f.isReadDesc_08 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_08"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_08_click.png" y="860" enterimg="glossary/glossary_select_08_hover.png" exp="tf.selectedDescription = 8" descriptionNo="8" storage="../image/episode2/dress.png" furigana="" image_x="850" image_y="380" width="500" height="500" name="衣装" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_08"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_08_click_unknown.png" y="860" enterimg="glossary/glossary_select_08_hover_unknown.png" exp="tf.selectedDescription = 8" descriptionNo="8" storage="../image/glossary/lock.png" width="276" height="300" furigana="" name="？？？" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_08 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_08.png" y="860" enterimg="glossary/glossary_select_08_hover.png" exp="tf.selectedDescription = 8" name="description_08"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_08_unknown.png" y="860" enterimg="glossary/glossary_select_08_hover_unknown.png" exp="tf.selectedDescription = 8" name="description_08"]
        [endif]
    [endif]
[endif]
[if exp="tf.pageNo == 2"]
    [if exp="tf.selectedDescription == 9"]
        [if exp="f.isOpenDesc_09 == 'true' "]
            [if exp="f.isReadDesc_09 == 'false' "]
                [clearfix name="newIcon_09"]
                [iscript]
                    f.isReadDesc_09 = 'true'
                [endscript]
            [endif]
            [clearfix name="description_09"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_09_click.png" y="300" enterimg="glossary/glossary_select_09_hover.png" exp="tf.selectedDescription = 9" descriptionNo="9" storage="../image/episode3/youkan.png" furigana="" name="ようかん" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="※ここに説明を追加する"]
        [else]
            [clearfix name="description_09"]
            [deleteDetailDescription]
            [iscript]
                tf.isCharacter = 0
            [endscript]
            [openDetailDescription graphic="glossary/glossary_select_09_click_unknown.png" y="300" enterimg="glossary/glossary_select_09_hover_unknown.png" exp="tf.selectedDescription = 9" descriptionNo="9" storage="../image/glossary/lock.png" width="276" height="300" furigana="" name="？？？" x="1410" age="" bloodtype="" birthday="" stature="" birthplace="" hobby="" specialskill="" motif="" description="ゲームを進めると解放されます"]
        [endif]
    [else]
        [if exp="f.isOpenDesc_09 == 'true' "]
            [returnSelectedButton graphic="glossary/glossary_select_09.png" y="300" enterimg="glossary/glossary_select_09_hover.png" exp="tf.selectedDescription = 9" name="description_09"]
        [else]
            [returnSelectedButton graphic="glossary/glossary_select_09_unknown.png" y="940" enterimg="glossary/glossary_select_09_hover_unknown.png" exp="tf.selectedDescription = 9" name="description_09"]
        [endif]
    [endif]
[endif]
[s]

*Backtitle
[cm]
[freeimage layer="1"]
[iscript]
    delete tf.pageNo
    delete tf.maxPageNo
    delete tf.isFirstPage 
    delete tf.isLastPage
    delete tf.selectedDescription
    delete tf.isCharacter
[endscript]
[jump storage="Extra/extra.ks"]