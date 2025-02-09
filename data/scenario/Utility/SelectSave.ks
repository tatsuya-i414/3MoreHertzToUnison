*SelectSave
[bg storage="episode1/white.png" time="100"]
[messageTrue]
[nolog]
#
これまでの出来事をセーブしますか？
[endnolog]
[glink color="bth06" storage="Utility/SelectSave.ks" target="*YesButton" width="80" x="240" y="960" size="24" text="はい" clickse="../sound/se/decision.m4a"]
[glink color="bth06" storage="Utility/SelectSave.ks" target="*NoButton" width="80" x="470" y="960" size="24" text="いいえ" clickse="../sound/se/cancel.m4a"]
[s]

*YesButton
[messageFalse]
[showsave]

*NoButton
[messageFalse]
[return]