[title name="&f.gameTitle + '｜思い出3' "]
[cm]
[clearfix]
[clearstack]
[start_keyconfig]

[if exp="f.scn_skip == 1"]
    [FadeoutBGM]
[endif]

*BedRoom
[clearfix]
[messageFalse]
[layer1True]
[layer2True]
[MenuButton]
[if exp="f.isPlayingBGM == 'false' "]
    [PlayEpisode3BGM]
[endif]

; シナリオ_思い出3序盤
[if exp="f.scn_skip == 0 && f.scn_episode3_OP == 'false' "]
    [ChangeBackGround storage="episode3/bedroom.png" time="2000" method="vanishIn"]
    ; 背景パーツを表示
    [image storage="../image/episode3/jacket.png" layer="1" x="1150" y="750" name="jacket"]
    [image storage="../image/episode3/wallhanger_onhanger.png" layer="1" x="1414" y="111" name="wallhanger_onhanger"]
    [image storage="../image/episode3/jutan.png" layer="1" x="585" y="908" name="jutan"]
    [ControlButtons]
    [FadeoutBGM]
    ; 思い出3序盤のBGM再生
    [messageTrue]
    [call storage="Conversation/episode3/episode3.ks" target="*Introduction"]
    [eval exp="f.scn_episode3_OP = 'true' "]
    [clearfix]
    [messageFalse]
    [MenuButton]
    [ItemMenuButton]
    [FadeoutBGM]
    ; 背景パーツを削除
    [free layer="1" name="jacket"]
    [free layer="1" name="wallhanger_onhanger"]
    [free layer="1" name="jutan"]
    [jump target="*BedRoom"]
[endif]

; 背景
[if exp="f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/bedroom.png"]
[else]
    [ChangeBackGround storage="episode3/bedroom_night.png"]
[endif]

; 背景パーツ
; ジャケット
[if exp="f.isJacketGet == 0"]
    [image storage="../image/episode3/jacket.png" layer="1" x="1150" y="750" name="jacket"]
[endif]
; ハンガー
[if exp="f.isJacketGet == -1 && f.isRoomLightNight == 0"]
    [image storage="../image/episode3/wallhanger_onjacket.png" layer="1" x="1427" y="90" name="wallhanger_onjacket"]
[elsif exp="f.isJacketGet == -1 && f.isRoomLightNight == 1"]
    [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
[else]
    [image storage="../image/episode3/wallhanger_onhanger.png" layer="1" x="1414" y="111" name="wallhanger_onhanger"]
[endif]
; 絨毯
[if exp="f.isJutanOpen == 1"]
    [image storage="../image/episode3/jutan_turnedup.png" layer="1" x="585" y="908" name="jutan_turndup"]
    [if exp="f.isRoomLightNight == 1"]
        [image storage="../image/episode3/mark_underjutan.png" layer="1" x="1180" y="915" name="mark"]
    [endif]
[else]
    [image storage="../image/episode3/jutan.png" layer="1" x="585" y="908" name="jutan"]
[endif]

; クリック判定
; ベッド
[if exp="f.isUsing == 0"]
    [clickJudgment x="360" y="440" width="350" height="80" target="*SearchBed"]
[endif]
; 収納ボックス
[if exp="f.isFutonGet == 0 && f.isUsing == 0"]
    [clickJudgment x="295" y="705" width="315" height="178" target="*SearchBox"]
[endif]
; 鞄（コンパス）
[if exp="f.isCompassGet == 0 && f.isUsing == 0"]
    [clickJudgment x="740" y="640" width="150" height="225" target="*GetCompass"]
[endif]
; 張り紙
[if exp="f.isUsing == 0"]
    [clickJudgment x="522" y="166" width="142" height="198" target="*SearchPoster"]
[endif]
; 帽子
[if exp="f.isUsing == 0"]
    [clickJudgment x="1060" y="545" width="125" height="80" target="*SearchHut"]
[endif]
; ジャケット
[if exp="f.isJacketGet == 0"]
    [clickJudgment x="1160" y="760" width="130" height="130" target="*GetJacket"]
[endif]
; 備え付けハンガー
[if exp="f.isJacketGet == 1"]
    [clickJudgment x="1500" y="210" width="160" height="120" target="*SearchHanger"]
[endif]
; 絨毯
[if exp="f.isUsing == 0"]
    [clickJudgment x="1115" y="910" width="300" height="140" target="*SearchJutan"]
[endif]
; 昼夜切り替えスイッチ
[if exp="f.isUsing == 0"]
    [clickJudgment x="1790" y="413" width="65" height="130" target="*SearchRoomLight"]
[endif]

; アイテムメニュー
[ItemMenuButton]
[s]

*SearchBed
[if exp="f.isFutonGet == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    布団がいるね[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 0"]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    明るくて眠れないよ[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
    [JumpBedRoom]
[elsif exp="f.isFutonGet == 1 && f.isRoomLightNight == 1"]
    [if exp="f.scn_skip == 0"]
        [ControlButtons]
        [FadeoutBGM]
        ; 思い出3終盤のBGM再生
        [layer3True]
        [ShowNormalSakuraAndMiyuki]
        [messageTrue]
        [nolog]
        #深雪と桜良
        思い出3のエンドイベント[p]
        [endnolog]
        [messageFalse]
        [layer3False]
    [endif]
    [eval exp="f.isFutonGet = -1"]
    [eval exp="f.isYoukanGet = 1"]
    [eval exp="f.isEpisode3Clear = 1"]
    [clearfix]
    [MenuButton]
    [s]
[endif]

*SearchBox
; 画像の削除
[if exp="f.isJutanOpen == 1"]
    [free layer="1" name="jutan_turndup"]
[else]
    [free layer="1" name="jutan"]
[endif]
[if exp="f.isJacketGet == -1"]
    [free layer="1" name="wallhanger_onjacket"]
[else]
    [free layer="1" name="wallhanger_onhanger"]
    [free layer="1" name="jacket"]
[endif]
[if exp="f.isRoomLightNight == 1"]
    [free layer="1" name="wallhanger_onjacket_night"]
    [free layer="1" name="mark"]
[endif]
[jump target="*InsideOfBox" cond="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
; 昼夜で背景を変更
[if exp="f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/boxkey.png"]
[else]
    [ChangeBackGround storage="episode3/boxkey_night.png"]
[endif]
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
    [image storage="../image/episode3/compass.png" layer="1" x="797" y="399" name="compass_set"]
    ; 上矢印ボタン
    [clickJudgment x="870" y="210" width="130" height="120" target="*PushTopButton"]
    ; 下矢印ボタン
    [clickJudgment x="875" y="780" width="130" height="110" target="*PushUnderButton"]
    ; 左矢印ボタン
    [clickJudgment x="615" y="475" width="95" height="155" target="*PushLeftButton"]
    ; 右矢印ボタン
    [clickJudgment x="1165" y="480" width="95" height="155" target="*PushRightButton"]
    ; 戻るボタン
    [BackFromEnlargedMap target="*SearchBox_back"]
    [s]
[else]
    [ControlButtons]
    [layer3True]
    [ShowNormalSakuraAndMiyuki]
    [messageTrue]
    [nolog]
    #深雪と桜良
    ボタン押せないね、何かはめられそう[p]
    [endnolog]
    [messageFalse]
    [layer3False]
    [MenuButton]
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
        [ControlButtons]
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
        [MenuButton]
        [JumpBedRoom]
    [endif]
    [if exp="f.buttonPushOrder[0] == 'N' && f.buttonPushOrder[1] == 'W' && f.buttonPushOrder[2] == 'E' && f.buttonPushOrder[3] == 'N' && f.buttonPushOrder[4] == 'S' "]
        [free layer="1" name="compass_set"]
        ; 開錠する時の効果音を追加
        *InsideOfBox
        ; 昼夜で背景を変更
        [if exp="f.isRoomLightNight == 0"]
            [ChangeBackGround storage="episode3/futon_inbox.png"]
        [else]
            [ChangeBackGround storage="episode3/futon_inbox_night.png"]
        [endif]
        [clickJudgment width="1920" height="1080" target="*GetFuton"]
        ; 戻るボタン
        [BackFromEnlargedMap target="*BoxUnlock_back"]
        [s]
        *GetFuton
        [PlayGetItem]
        [eval exp="f.isFutonGet = 1"]
        [free layer="1" name="compass_set"]
        [iscript]
            delete f.arrayElementsCount;
            delete f.buttonPushOrder;
        [endscript]
        [JumpBedRoom]
    [else]
        [ControlButtons]
        [messageTrue]
        [nolog]
        #
        ボタンを押す順番が違うようだ[p]
        [endnolog]
        [messageFalse]
        ; 押したボタンの順番を初期化
        [eval exp="f.arrayElementsCount = 0"]
        [eval exp="f.buttonPushOrder = []"]
        [MenuButton]
    [endif]
[endif]
[jump target="*PushBoxKeyButton" cond="f.buttonPushOrder[0] != 'N' && f.buttonPushOrder[1] != 'W' && f.buttonPushOrder[2] != 'E' && f.buttonPushOrder[3] != 'N' && f.buttonPushOrder[4] != 'S' "]
[return]

*BoxUnlock_back
[cm]
[JumpBedRoom]

*GetCompass
[ControlButtons]
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
[MenuButton]
[JumpBedRoom]

*SearchPoster
; 画像の削除
[if exp="f.isJutanOpen == 1"]
    [free layer="1" name="jutan_turndup"]
[else]
    [free layer="1" name="jutan"]
[endif]
[if exp="f.isJacketGet == -1"]
    [free layer="1" name="wallhanger_onjacket"]
[else]
    [free layer="1" name="wallhanger_onhanger"]
    [free layer="1" name="jacket"]
[endif]
[if exp="f.isRoomLightNight == 1"]
    [free layer="1" name="wallhanger_onjacket_night"]
    [free layer="1" name="mark"]
[endif]
; 昼夜で背景を変更
[if exp="f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/poster.png"]
[else]
    [ChangeBackGround storage="episode3/poster_night.png"]
[endif]
[ControlButtons]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
何かの順番かな？[p]
[endnolog]
[messageFalse]
[layer3False]
[MenuButton]
; 戻るボタン
[BackFromEnlargedMap target="*SearchPoster_back"]
[s]

*SearchPoster_back
[cm]
[JumpBedRoom]

*SearchHut
; 画像の削除
[if exp="f.isJutanOpen == 1"]
    [free layer="1" name="jutan_turndup"]
[else]
    [free layer="1" name="jutan"]
[endif]
[if exp="f.isJacketGet == -1"]
    [free layer="1" name="wallhanger_onjacket"]
[else]
    [free layer="1" name="wallhanger_onhanger"]
    [free layer="1" name="jacket"]
[endif]
[if exp="f.isRoomLightNight == 1"]
    [free layer="1" name="wallhanger_onjacket_night"]
    [free layer="1" name="mark"]
[endif]
; 昼夜で背景を変更
[if exp="f.isRoomLightNight == 0"]
    [ChangeBackGround storage="episode3/hut.png"]
[else]
    [ChangeBackGround storage="episode3/hut_night.png"]
[endif]
; 戻るボタン
[BackFromEnlargedMap target="*SearchHut_back"]
[s]

*SearchHut_back
[cm]
[JumpBedRoom]

*GetJacket
[eval exp="f.isJacketGet = 1"]
[PlayGetItem]
[ControlButtons]
[layer3True]
[ShowNormalSakuraAndMiyuki]
[messageTrue]
[nolog]
#深雪と桜良
片付けよっか[p]
[endnolog]
[messageFalse]
[layer3False]
[free layer="1" name="jacket"]
[MenuButton]
[JumpBedRoom]

*SearchHanger
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
[free layer="1" name="wallhanger_onhanger"]
[eval exp="f.isJacketGet = -1"]
[free layer="1" name="jacket"]
[blackout exp="f.isJacketGet = -1" storage_1="episode3/bedroom.png" storage_2="episode3/bedroom.png"]
[JumpBedRoom]

*IncorrectItemOfJacket
[FreeItemBox]
[messageTrue]
[MessageToUsingWrongItem]
[JumpBedRoom]

*SearchJutan
[PlayTurnOver]
[if exp="f.isJutanOpen == 0"]
    [eval exp="f.isJutanOpen = 1"]
    [free layer="1" name="jutan"]
[elsif exp="f.isJutanOpen == 1"]
    [eval exp="f.isJutanOpen = 0"]
    [free layer="1" name="jutan_turndup"]
    [free layer="1" name="mark"]
[endif]
[JumpBedRoom]

*SearchRoomLight
[PlaySwitching]
[if exp="f.isRoomLightNight == 0"]
    [eval exp="f.isRoomLightNight = 1"]
    [free layer="1" name="wallhanger_onjacket"]
[elsif exp="f.isRoomLightNight == 1"]
    [eval exp="f.isRoomLightNight = 0"]
    [free layer="1" name="wallhanger_onjacket_night"]
    [free layer="1" name="mark"]
[endif]
[JumpBedRoom]