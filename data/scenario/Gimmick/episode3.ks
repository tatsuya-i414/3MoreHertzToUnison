*start
[title name="&f.gameTile + '｜思い出3' "]
[cm]
[clearfix]
[clearstack]
[start_keyconfig]

; ゲームデータを先に読み込む
[call storage="Plugin/loadingshow.ks" cond="sf.loadData == 'false' "]
[if exp="sf.isLoadSetting == 'false' "]
  [eval exp="sf.isLoadSetting = 'true' "]
[endif]

@showmenubutton
[ChangeBackGround storage="episode3/bedroom.png" time="2000" method="vanishIn"]
[BacklogButton]

[messageTrue]
; 会話パートの読み込み
[call storage="Conversation/episode3.ks" target="*Introduction"]

*BedRoom
[messageFalse]
[layer1True]
[layer2True]

; 背景
[if exp="f.isJacketGet == -1 && f.isJutanOpen == 0 && f.isRoomLightNight == 0"]
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

; 背景パーツ

; クリック判定
; ベッド
[clickJudgment x="360" y="440" width="350" height="80" target="*SearchBed"]
; 収納ボックス
[if exp="f.isFutonGet == 0"]
    [clickJudgment x="295" y="705" width="315" height="178" target="*SearchBox"]
[endif]
; 鞄（コンパス）
[if exp="f.isCompassGet == 0"]
    [clickJudgment x="740" y="640" width="150" height="225" target="*GetCompass"]
[endif]
; 張り紙
[clickJudgment x="522" y="166" width="142" height="198" target="*SearchPoster"]
; 帽子
[clickJudgment x="1060" y="545" width="125" height="80" target="*SearchHat"]
; ジャケット
[if exp="f.isJacketGet == 0"]
    [clickJudgment x="1150" y="750" width="170" height="140" target="*GetJacket"]
[endif]
; 備え付けハンガー
[if exp="f.isJacketGet == 1"]
    [clickJudgment x="1500" y="180" width="150" height="110" target="*SearchHunger"]
[endif]
; 絨毯
[clickJudgment x="1115" y="910" width="300" height="140" target="*SearchJutan"]
; 昼夜切り替えスイッチ
[clickJudgment x="1790" y="413" width="65" height="130" target="*SearchRoomLight"]

; アイテムメニュー
[ItemMenuButton]
[s]

*SearchBed
[if exp="f.isFutonGet == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    布団がいるね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 0"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    明るくて眠れないよ[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 1"]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    思い出3のエンドイベント[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [eval exp="f.isFutonGet = -1"]
    [eval exp="f.isYoukanGet = 1"]
    [eval exp="f.isEpisode3Clear = 1"]
    [s]
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
    [nolog]
    #深雪と桜良
    ボタン押せないね、何かはめられそう[p]
    [endnolog]
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
[cm]
[FreeItemBox]
[free layer="1" name="compass_set"]
; 押したボタンの順番を初期化
[eval exp="f.arrayElementsCount = 0"]
[eval exp="f.buttonPushOrder = []"]
[JumpBedRoom]

*ValidItemOfCompass
[FreeItemBox]
[messageFalse]
[eval exp="f.isCompassGet = -1"]
; コンパスをはめこむ効果音を追加
; 押したボタンの順番を記録する配列を宣言
[eval exp="f.arrayElementsCount = 0"]
[eval exp="f.buttonPushOrder = []"]
[jump target="*PushBoxKeyButton"]
[s]

*IncorrectItemOfCompass
[FreeItemBox]
[MessageToUsingWrongItem]
[JumpBedRoom]

*PushTopButton
[if exp="f.arrayElementsCount <= 4"]
    [eval exp="f.buttonPushOrder[f.arrayElementsCount] = 'N' "]
    [eval exp="f.arrayElementsCount = f.arrayElementsCount + 1"]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushUnderButton
[if exp="f.arrayElementsCount <= 4"]
    [eval exp="f.buttonPushOrder[f.arrayElementsCount] = 'S' "]
    [eval exp="f.arrayElementsCount = f.arrayElementsCount + 1"]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushLeftButton
[if exp="f.arrayElementsCount <= 4"]
    [eval exp="f.buttonPushOrder[f.arrayElementsCount] = 'W' "]
    [eval exp="f.arrayElementsCount = f.arrayElementsCount + 1"]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*PushRightButton
[if exp="f.arrayElementsCount <= 4"]
    [eval exp="f.buttonPushOrder[f.arrayElementsCount] = 'E' "]
    [eval exp="f.arrayElementsCount = f.arrayElementsCount + 1"]
[endif]
[call target="*BoxUnlock" cond="f.arrayElementsCount <= 4"]
[jump target="*PushBoxKeyButton" cond="f.arrayElementsCount <= 4"]

*BoxUnlock
[if exp="f.arrayElementsCount == 5"]
    ; ジャケットをハンガーに掛ける前に布団を獲得できないようにする例外処理
    [if exp="f.isJacketGet != -1"]
        [messageTrue]
        [nolog]
        #
        開錠することができないようだ[p]
        [endnolog]
        [messageFalse]
        ; 押したボタンの順番を初期化
        [eval exp="f.arrayElementsCount = 0"]
        [eval exp="f.buttonPushOrder = []"]
        [free layer="1" name="compass_set"]
        [JumpBedRoom]
    [endif]
    [if exp="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
        ; 開錠する時の効果音を追加
        ; アイテムを獲得する効果音を追加
        [eval exp="f.isFutonGet = 1"]
        [free layer="1" name="compass_set"]
        [iscript]
            delete f.arrayElementsCount;
            delete f.buttonPushOrder;
        [endscript]
        [JumpBedRoom]
    [else]
        [messageTrue]
        [nolog]
        #
        ボタンを押す順番が違うようだ[p]
        [endnolog]
        [messageFalse]
        ; 押したボタンの順番を初期化
        [eval exp="f.arrayElementsCount = 0"]
        [eval exp="f.buttonPushOrder = []"]
    [endif]
[endif]
[jump target="*PushBoxKeyButton" cond="f.buttonPushOrder[0] != 'N' && f.buttonPushOrder[1] != 'W' && f.buttonPushOrder[2] != 'E' && f.buttonPushOrder[3] != 'N' && f.buttonPushOrder[4] != 'S' "]
[return]

*GetCompass
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
コンパスだ！[p]
[endnolog]
[messageFalse]
[layer3False]
[eval exp="f.isCompassGet = 1"]
[JumpBedRoom]

*SearchPoster
[ChangeBackGround storage="episode3/poster.png"]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
何かの順番かな？[p]
[endnolog]
[messageFalse]
[layer3False]
; 戻るボタン
[BackFromEnlargedMap target="*SearchPoster_back"]
[s]

*SearchPoster_back
[cm]
[JumpBedRoom]

*SearchHat
[ChangeBackGround storage="episode3/hut.png"]
; 戻るボタン
[BackFromEnlargedMap target="*SearchHat_back"]
[s]

*SearchHat_back
[cm]
[JumpBedRoom]

*GetJacket
[eval exp="f.isJacketGet = 1"]
; アイテムを獲得する効果音を追加
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
片付けよっか[p]
[endnolog]
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