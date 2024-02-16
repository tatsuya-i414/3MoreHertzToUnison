*start
[cm]
[clearfix]
[start_keyconfig]

; ゲームデータを先に読み込む
[if exp="sf.loadData == 'false' "]
    [call storage="Plugin/loadingshow.ks"]
[endif]
; メッセージウインドウとキャラクター情報の読み込み
[if exp="sf.isLoadSetting == 'false' "]
  [call storage="Utility/settings.ks"]
  [eval exp="sf.isLoadSetting = 'true' "]
[endif]

@showmenubutton
[ChangeBackGround storage="episode3/bedroom.png" time="2000" method="vanishIn"]

[messageTrue]
; 会話パートの読み込み
[call storage="Conversation/episode3.ks" target="*Introduction"]

*BedRoom
[messageFalse]
[layer1True]
[layer2True]

; 背景
[ChangeBackGround storage="episode3/bedroom.png"]

; アイテムメニュー
[ItemMenuButton]

; クリック判定
; ベッド
[clickJudgment x="610" y="460" width="160" height="60" target="*SearchBed"]
; 収納ボックス
[clickJudgment x="35" y="625" width="570" height="375" target="*SearchBox"]
; 鞄（コンパス）
[if exp="f.isCompassGet == 0"]
    [clickJudgment x="650" y="530" width="290" height="330" target="*GetCompass"]
[endif]
; 張り紙
[clickJudgment x="755" y="260" width="150" height="155" target="*SearchPoster"]
[s]

*SearchBed
[if exp="f.isFutonGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    布団がいるね[p]
    [messageFalse]
    [layer3False]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    後述[p]
    [messageFalse]
    [layer3False]
    [JumpBedRoom]
[endif]

*SearchBox
[ChangeBackGround storage="episode3/boxkey.png"]
[if exp="f.isCompassGet == 1"]
    *SelectItemOfCompass
    [messageFalse]
    [eval exp="f.isUsing = 1"]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseCompass" target_2="*UseCompass" target_3="*NotUseCompass" target_4="*NotUseCompass" target_5="*NotUseCompass" target_6="*NotUseCompass" target_7="*NotUseCompass"]
        ; 戻るボタン
        [BackFromEnlargedMap target="*SearchBox_back"]
    [endif]
    [s]
[elsif exp="f.isCompassGet == -1"]
    *PushBoxKeyButton
    [image storage="../image/kari/compass.png" layer="1" x="830" y="410" width="210" height="210" name="compass_set"]
    ; 上矢印ボタン
    [clickJudgment x="870" y="200" width="150" height="160" target="*PushTopButton"]
    ; 下矢印ボタン
    [clickJudgment x="870" y="645" width="150" height="160" target="*PushUnderButton"]
    ; 左矢印ボタン
    [clickJudgment x="570" y="430" width="150" height="160" target="*PushLeftButton"]
    ; 右矢印ボタン
    [clickJudgment x="1120" y="430" width="150" height="160" target="*PushRightButton"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchBox_back"]
    [s]
[else]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    #深雪と桜良
    ボタン押せないね、何かはめられそう[p]
    [messageFalse]
    [layer3False]
    [JumpBedRoom]
[endif]

*UseCompass
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfCompass" target_no="*SelectItemOfCompass"]
[s]

*NotUseCompass
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfCompass" target_no="*SelectItemOfCompass"]
[s]

*SearchBox_back
[FreeItemBox]
[free layer="1" name="compass_set"]
[JumpBedRoom]

*ValidItemOfCompass
[FreeItemBox]
[messageFalse]
[eval exp="f.isCompassGet = -1"]
; コンパスをはめこむ効果音を追加
; ボタン押下時の処理に移動
[jump target="*PushBoxKeyButton"]
[s]

*IncorrectItemOfCompass
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpBedRoom]

*PushTopButton
[messageTrue]
#
上矢印ボタンを押下時の処理[p]
[messageFalse]
[jump target="*PushBoxKeyButton"]

*PushUnderButton
[messageTrue]
#
下矢印ボタンを押下時の処理[p]
[messageFalse]
[jump target="*PushBoxKeyButton"]

*PushLeftButton
[messageTrue]
#
左矢印ボタンを押下時の処理[p]
[messageFalse]
[jump target="*PushBoxKeyButton"]

*PushRightButton
[messageTrue]
#
右矢印ボタンを押下時の処理[p]
[messageFalse]
[jump target="*PushBoxKeyButton"]

*GetCompass
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
#深雪と桜良
コンパスだ！[p]
[messageFalse]
[layer3False]
[eval exp="f.isCompassGet = 1"]
[JumpBedRoom]

*SearchPoster
[ChangeBackGround storage="episode3/poster.png"]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
#深雪と桜良
何かの順番かな？[p]
[messageFalse]
[layer3False]
; 戻るボタン
[BackFromEnlargedMap target="*SearchPoster_back"]
[s]

*SearchPoster_back
[FreeItemBox]
[JumpBedRoom]