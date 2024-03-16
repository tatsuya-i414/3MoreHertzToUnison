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
[if exp="f.isJacketGet == -1 && f.isRoomLightNight == 0"]
    ; ジャケットをハンガーに掛けた後
    [ChangeBackGround storage="episode3/bedroom_jacketishanging.png"]
[elsif exp="f.isJutanOpen == 1 && f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/bedroom_jutanturnedup_noon.png"]
[elsif exp="f.isJutanOpen == 1 && f.isRoomLightNight == 1"]
    [ChangeBackGround storage="episode3/bedroom_jutanturnedup_night.png"]
[elsif exp="f.isJutanOpen == 0 && f.isRoomLightNight == 1"]
    [ChangeBackGround storage="episode3/bedroom_night.png"]
[else]
    [ChangeBackGround storage="episode3/bedroom.png"]
[endif]

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
; 帽子
[clickJudgment x="1100" y="495" width="120" height="100" target="*SearchHat"]
; ジャケット
[if exp="f.isJacketGet == 0"]
    [clickJudgment x="1570" y="750" width="170" height="140" target="*GetJacket"]
[endif]
; 備え付けハンガー
[if exp="f.isJacketGet == 1"]
    [clickJudgment x="1560" y="220" width="200" height="170" target="*SearchHunger"]
[endif]
; 絨毯
[clickJudgment x="1370" y="800" width="150" height="150" target="*SearchJutan"]
; 昼夜切り替えスイッチ
[clickJudgment x="1450" y="345" width="75" height="85" target="*SearchRoomLight"]
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
[JumpBedRoom]

*SearchHat
[ChangeBackGround storage="episode3/hut.png"]
; 戻るボタン
[BackFromEnlargedMap target="*SearchHat_back"]
[s]

*SearchHat_back
[JumpBedRoom]

*GetJacket
[eval exp="f.isJacketGet = 1"]
; アイテムを獲得する効果音を追加
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
#深雪と桜良
片付けよっか[p]
[messageFalse]
[layer3False]
[JumpBedRoom]

*SearchHunger
[if exp="f.isJacketGet == 1"]
    *SelectItemOfJacket
    [messageFalse]
    [if exp="f.isUsing == 0"]
        [eval exp="f.isUsing = 1"]
    [else]
        [eval exp="f.isUsing = 0"]
        [FreeItemBox]
    [endif]
    [if exp="f.isUsing == 1"]
        [ItemBox]
        [SelectItemClickable target_1="*NotUseJacket" target_2="*NotUseJacket" target_3="*UseJacket" target_4="*NotUseJacket" target_5="*NotUseJacket" target_6="*NotUseJacket" target_7="*NotUseJacket"]
    [endif]
    [JumpBedRoom]
[else]
    [JumpBedRoom]
[endif]

*UseJacket
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*ValidItemOfJacket" target_no="*SelectItemOfJacket"]
[s]

*NotUseJacket
[messageTrue]
[ConfirmUseItem]
[YesNoButton target_yes="*IncorrectItemOfJacket" target_no="*SelectItemOfJacket"]
[s]

*ValidItemOfJacket
[FreeItemBox]
[messageFalse]
[eval exp="f.isJacketGet = -1"]
[free layer="1" name="jacket"]
[blackout exp="f.isJacketGet = -1" storage_1="episode3/bedroom_jacketishanging.png" storage_2="episode3/bedroom.png"]
[JumpBedRoom]

*IncorrectItemOfJacket
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpBedRoom]

*SearchJutan
[if exp="f.isJutanOpen == 0"]
    [eval exp="f.isJutanOpen = 1"]
[elsif exp="f.isJutanOpen == 1"]
    [eval exp="f.isJutanOpen = 0"]
[endif]
[JumpBedRoom]

*SearchRoomLight
[if exp="f.isRoomLightNight == 0"]
    [eval exp="f.isRoomLightNight = 1"]
[elsif exp="f.isRoomLightNight == 1"]
    [eval exp="f.isRoomLightNight = 0"]
[endif]
[JumpBedRoom]