[cm]
[clearfix]
[bg storage="extra/extra.png" time="100"]
[button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Backtitle" x="1680" y="60" clickse="../sound/se/cancel.m4a"]

[glink color="bth06" storage="cg.ks" text="<br>CG" x="700" y="200" width="250" height="150" clickse="../sound/se/decision.m4a" size="50" bold="true"]
[glink color="bth06" storage="Extra/glossary.ks" target="" text="<br>用語解説" x="1200" y="200" width="250" height="150" clickse="../sound/se/decision.m4a" size="50" bold="true"]
[glink color="bth06" storage="Extra/credit.ks" text="<br>クレジット" x="700" y="500" width="250" height="150" clickse="../sound/se/decision.m4a" size="50" bold="true"]
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
[jump storage="title.ks" target="*TopPage"]