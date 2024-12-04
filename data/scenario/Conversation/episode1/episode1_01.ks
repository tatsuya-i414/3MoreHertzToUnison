;-------------------------------------------------------
; コントロールパネルスイッチ
;-------------------------------------------------------
; 準備完了状態
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
    [ShowMiyuki_Center]
    #深雪
    ステータスがオールグリーンになっているわ。[r]
    このスイッチを押したら何か起こるかもしれない。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right]
    #桜良
    なら、私が押してもいいかな？[p]

    [nolog]
    #
    スイッチを押しますか？
    [endnolog]
    [autostop]
    [cancelskip]
    [YesNoButton target_yes="*PushSwitch" target_no="*NotPushSwitch"]
    [s]
; 準備未完了状態
; 初回クリック時
[elsif exp="f.isClickedControlPanel_first == 'true' "]
    [ShowSakura_Center face="smile"]
    #桜良
    スイッチだ！[r]
    押してみるね！[p]

    [iscript]
        f.charaPosition[0] = 'sakura'
        f.charaPosition[1] = 'right'
    [endscript]
    [ChangeCharaPosition]
    [ShowMiyuki_Left face="surprise"]
    #深雪
    ちょっ、待って！[p]

    [PlayControlPanelButtonClick]
    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    何も起きないね？[p]

    [ChangeCharaFace name="miyuki" face="normal"]
    #深雪
    ふう......[r]
    今のところ危険はなさそうとはいえ、[r]
    軽率に押すのはよくないわよ。[p]

    [ChangeCharaFace name="sakura" face="normal"]
    #桜良
    あはは、ごめんね。つい......[p]

    #深雪
    まあいいけれど。[r]
    画面を見て。ステージとライトとスピーカー......[r]

    [ChangeCharaFace name="sakura" face="trouble"]
    #桜良
    この三つをどうにかしないといけないのかな？[p]

    #深雪
    そうかもしれない。[r]
    一度他を調べましょう。[p]
    [if exp="f.isClickedControlPanel_first == 'true' "]
        [iscript]
            f.isClickedControlPanel_first = 'false'
        [endscript]
    [endif]
    [free layer="1" name="controlpanel_button"]
    [free layer="1" name="controlpanel_lamp"]
    [free layer="1" name="stage_greenlamp"]
    [free layer="1" name="stage_redlamp"]
    [free layer="1" name="light_greenlamp"]
    [free layer="1" name="light_redlamp"]
    [free layer="1" name="speaker_greenlamp"]
    [free layer="1" name="speaker_redlamp"]
    [HideAll]
    [JumpStageRoom]
; 二回目以降
[elsif exp="f.isClickedControlPanel_first == 'false' "]
    [ShowMiyuki_Center]
    #深雪
    ステージ、ライト、スピーカーね。[r]
    何かのヒントってことかしら。[p]

    [iscript]
        f.charaPosition[0] = 'miyuki'
        f.charaPosition[1] = 'left'
    [endscript]
    [ChangeCharaPosition]
    [ShowSakura_Right face="smile"]
    #桜良
    早く調べてみよう！[p]

    [ChangeCharaFace name="miyuki" face="precious"]
    #深雪
    （桜良、わくわくしててかわいい......）[p]
    [free layer="1" name="controlpanel_button"]
    [free layer="1" name="controlpanel_lamp"]
    [free layer="1" name="stage_greenlamp"]
    [free layer="1" name="stage_redlamp"]
    [free layer="1" name="light_greenlamp"]
    [free layer="1" name="light_redlamp"]
    [free layer="1" name="speaker_greenlamp"]
    [free layer="1" name="speaker_redlamp"]
    [HideAll]
    [JumpStageRoom]
[endif]

*PushSwitch
[nolog]
#深雪
このままここにいても埒があかないわ。[r]
押してみましょう。[p]

#桜良
おっけー！[r]
ポチッとな！[p]
[endnolog]
[messageFalse]
; ボタンを押下した画像に変換
[free layer="1" name="controlpanel_button"]
[PlayControlPanelButtonClick]
[image storage="../image/episode1/controlpanel/controlpanel_button_notpush.png" layer="1" x="685" y="835" name="controlpanel_button"]
[return]

*NotPushSwitch
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [nolog]
    #深雪
    いえ、もう少しだけ他を調べてからにしましょう。[p]

    #桜良
    まだ見逃してるものがあるかもしれないもんね！[r]
    準備ができたらまた来よう！[p]
    [endnolog]
    [HideAll]
    [messageFalse]
    [autostop]
    [cancelskip]
    [clearfix]
    [MenuButton]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SearchControlPanel"]