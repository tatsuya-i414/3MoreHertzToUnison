[clearfix]
[bg storage="extra/credit.png" time="100"]
[button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Backtitle" x="1680" y="60" clickse="../sound/se/cancel.m4a"]

; 座標の設定
[iscript]
    tf.header = [400, 1120] // [「スタッフ」のX座標], [「使用素材」のX座標]
    tf.staff = [300, 800] // [「担当」のX座標], [「名前」のX座標]
    tf.usedMaterial = 1300 // 使用素材名のX座標
    tf.characterSetting = [40, 400] // [文字サイズ], [テキストの横幅]
    tf.creators = ['国語丸', 'PON茶屋', 'ひろさきたま'] // スタッフ一覧
[endscript]

 ; スタッフ
[ptext layer="fix" text="スタッフ" x="&tf.header[0]" y="250" size="&tf.characterSetting[0]" color="&sf.colorScheme[1]" bold="bold" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="企画" x="&tf.staff[0]" y="380" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&tf.creators[0]" x="&tf.staff[1]" y="380" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="シナリオ" x="&tf.staff[0]" y="440" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&tf.creators[1]" x="&tf.staff[1]" y="440" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="キャラクターデザイン" x="&tf.staff[0]" y="500" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&tf.creators[1]" x="&tf.staff[1]" y="500" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="イラスト" x="&tf.staff[0]" y="560" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&tf.creators[1]" x="&tf.staff[1]" y="560" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="&tf.creators[2]" x="&tf.staff[1]" y="620" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="プログラム" x="&tf.staff[0]" y="680" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&tf.creators[0]" x="&tf.staff[1]" y="680" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]

; 制作
[ptext layer="fix" text="制作" x="&tf.staff[0]" y="850" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="&sf.circleName" x="&tf.staff[1]" y="850" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]

; 使用素材
[ptext layer="fix" text="使用素材" x="&tf.header[1]" y="250" size="&tf.characterSetting[0]" color="&sf.colorScheme[1]" bold="bold" width="&tf.characterSetting[1]" align="right"]
[ptext layer="fix" text="BGMer" x="&tf.usedMaterial" y="380" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="ポケットサウンド" x="&tf.usedMaterial" y="440" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="効果音辞典" x="&tf.usedMaterial" y="500" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="効果音工房" x="&tf.usedMaterial" y="560" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="Springin’ Sound Stock" x="&tf.usedMaterial" y="620" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="On-Jin ～音人～" x="&tf.usedMaterial" y="680" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="OtoLogic" x="&tf.usedMaterial" y="740" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[ptext layer="fix" text="OtoLogic" x="&tf.usedMaterial" y="740" size="&tf.characterSetting[0]" width="&tf.characterSetting[1]" align="left"]
[s]

*Backtitle
[cm]
[freeimage layer="1"]
[iscript]
    delete tf.header
    delete tf.staff
    delete tf.usedMaterial
    delete tf.characterSetting
    delete tf.creators
[endscript]
[jump storage="Extra/extra.ks"]