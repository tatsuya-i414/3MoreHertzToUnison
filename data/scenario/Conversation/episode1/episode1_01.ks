;-------------------------------------------------------
; コントロールパネルスイッチ
;-------------------------------------------------------
; 準備完了状態
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
    ;深雪表情：通常
    #深雪
    ステータスがオールグリーンになっているわ。[r]
    このスイッチを押したら何か起こるかもしれない。[p]

    ;桜良表情：通常
    #桜良
    なら、私が押してもいいかな？[p]

    [nolog]
    #
    スイッチを押しますか？
    [endnolog]
    [YesNoButton target_yes="*PushSwitch" target_no="*NotPushSwitch"]
    [s]
; 準備未完了状態
; 初回クリック時
[elsif exp="f.isClickedControlPanel_first == 'true' "]
    ; 桜良表情：笑顔
    #桜良
    スイッチだ！[r]
    押してみるね！[p]

    ; 深雪表情：驚き
    #深雪
    ちょっ、待って！[p]

    ; ボタンを押す効果音
    ; 桜良表情：悩み
    #桜良
    何も起きないね？[p]

    ; 深雪表情：通常
    #深雪
    ふう......[r]
    今のところ危険はなさそうとはいえ、[r]
    軽率に押すのはよくないわよ。[p]

    ; 桜良表情：通常
    #桜良
    あはは、ごめんね。つい......[p]

    #深雪
    まあいいけれど。[r]
    画面を見て。ステージとライトとスピーカー......[r]

    ; 桜良表情：悩み
    #桜良
    この三つをどうにかしないといけないのかな？[p]

    #深雪
    そうかもしれない。[r]
    一度他を調べましょう。[p]
    [if exp="f.isClickedControlPanel_first == 'true' "]
        [eval exp="f.isClickedControlPanel_first = 'false' "]
    [endif]
    [free layer="1" name="controlpanel_button"]
    [free layer="1" name="controlpanel_lamp"]
    [free layer="1" name="stage_greenlamp"]
    [free layer="1" name="stage_redlamp"]
    [free layer="1" name="light_greenlamp"]
    [free layer="1" name="light_redlamp"]
    [free layer="1" name="speaker_greenlamp"]
    [free layer="1" name="speaker_redlamp"]
    [layer3False]
    [JumpStageRoom]
; 二回目以降
[elsif exp="f.isClickedControlPanel_first == 'false' "]
    ; 深雪表情：通常
    #深雪
    ステージ、ライト、スピーカーね。[r]
    何かのヒントってことかしら。[p]

    ; 桜良表情：笑顔
    #桜良
    早く調べてみよう！[p]

    ; 深雪表情：尊い
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
    [layer3False]
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
[wait time="500"]
[image storage="../image/episode1/controlpanel/controlpanel_button_notpush.png" layer="1" x="685" y="835" name="controlpanel_button"]
[layer3False]
[wait time="1000"]
[return]

*NotPushSwitch
[if exp="f.scn_skip == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [nolog]
    #深雪
    いえ、もう少しだけ他を調べてからにしましょう。[p]

    #桜良
    まだ見逃してるものがあるかもしれないもんね！[r]
    準備ができたらまた来よう！[p]
    [endnolog]
    [layer3False]
    [messageFalse]
    [cancelskip]
    [clearfix]
    [ItemMenuButton]
    [MenuButton]
[endif]
[jump storage="Gimmick/episode1.ks" target="*SearchControlPanel"]