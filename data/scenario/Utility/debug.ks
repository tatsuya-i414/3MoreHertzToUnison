[clearfix]
[messageFalse]
[hidemenubutton]
[freeimage layer="0" page="back"]
[cm]

*Debug
[bg storage="share/debug.png" time="100"]

; ボタン
[button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Backtitle" x="1680" y="60" clickse="../bgm/se/cancel.m4a"]
[glink color="bth06" target="*Flagdetail" text="フラグ別詳細" x="1380" y="960" width="150" height="24" size="24" clickse="../bgm/se/decision.m4a" bold="true"]
[button graphic="debug/sysbtn_02_qsave.png" enterimg="debug/sysbtn_02_qsave_hover.png" target="*Save" x="1680" y="960" clickse="../bgm/se/itemdecision.m4a"]

; ゲーム変数_Episode1
[if exp="f.isEpisode1Clear == 0"]
    [edit name="f.isEpisode1Clear" initial="0" left="400" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode1Clear" initial="&f.isEpisode1Clear" left="400" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isStageStatusGreen == 0"]
    [edit name="f.isStageStatusGreen" initial="0" left="400" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isStageStatusGreen" initial="&f.isStageStatusGreen" left="400" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isLightStatusGreen == 0"]
    [edit name="f.isLightStatusGreen" initial="0" left="400" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isLightStatusGreen" initial="&f.isLightStatusGreen" left="400" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isSpeakerStatusGreen == 0"]
    [edit name="f.isSpeakerStatusGreen" initial="0" left="400" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isSpeakerStatusGreen" initial="&f.isSpeakerStatusGreen" left="400" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isCableGet == 0"]
    [edit name="f.isCableGet" initial="0" left="400" top="555" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCableGet" initial="&f.isCableGet" left="400" top="555" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isLightCoverGet == 0"]
    [edit name="f.isLightCoverGet" initial="0" left="400" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isLightCoverGet" initial="&f.isLightCoverGet" left="400" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isDriverGet == 0"]
    [edit name="f.isDriverGet" initial="0" left="400" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isDriverGet" initial="&f.isDriverGet" left="400" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isMikeGet == 0"]
    [edit name="f.isMikeGet" initial="0" left="400" top="730" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isMikeGet" initial="&f.isMikeGet" left="400" top="730" color="0x666666" size="36" width="150" maxchars="1"]
[endif]

; ゲーム変数_Episode2
[if exp="f.isEpisode2Clear == 0"]
    [edit name="f.isEpisode2Clear" initial="0" left="1010" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode2Clear" initial="&f.isEpisode2Clear" left="1010" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isTentDown == 0"]
    [edit name="f.isTentDown" initial="0" left="1010" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isTentDown" initial="&f.isTentDown" left="1010" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isDressGet == 0"]
    [edit name="f.isDressGet" initial="0" left="1010" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isDressGet" initial="&f.isDressGet" left="1010" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isHangerGet == 0"]
    [edit name="f.isHangerGet" initial="0" left="1010" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isHangerGet" initial="&f.isHangerGet" left="1010" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isPaperDown == 0"]
    [edit name="f.isPaperDown" initial="0" left="1010" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isPaperDown" initial="&f.isPaperDown" left="1010" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isPencilGet == 0"]
    [edit name="f.isPencilGet" initial="0" left="1010" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isPencilGet" initial="&f.isPencilGet" left="1010" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isRedBlockGet == 0"]
    [edit name="f.isRedBlockGet" initial="0" left="1010" top="670" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isRedBlockGet" initial="&f.isRedBlockGet" left="1010" top="670" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isBlueBlockGet == 0"]
    [edit name="f.isBlueBlockGet" initial="0" left="1010" top="730" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isBlueBlockGet" initial="&f.isBlueBlockGet" left="1010" top="730" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isGreenBlockGet == 0"]
    [edit name="f.isGreenBlockGet" initial="0" left="1010" top="785" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isGreenBlockGet" initial="&f.isGreenBlockGet" left="1010" top="785" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isKeyOpen == 0"]
    [edit name="f.isKeyOpen" initial="0" left="1010" top="845" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isKeyOpen" initial="&f.isKeyOpen" left="1010" top="845" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isCurtainGet == 0"]
    [edit name="f.isCurtainGet" initial="0" left="1010" top="900" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCurtainGet" initial="&f.isCurtainGet" left="1010" top="900" color="0x666666" size="36" width="150" maxchars="2"]
[endif]

; ゲーム変数_Episode3
[if exp="f.isEpisode3Clear == 0"]
    [edit name="f.isEpisode3Clear" initial="0" left="1600" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode3Clear" initial="&f.isEpisode3Clear" left="1600" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isFutonGet == 0"]
    [edit name="f.isFutonGet" initial="0" left="1600" top="385" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isFutonGet" initial="&f.isFutonGet" left="1600" top="385" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isCompassGet == 0"]
    [edit name="f.isCompassGet" initial="0" left="1600" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCompassGet" initial="&f.isCompassGet" left="1600" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isJacketGet == 0"]
    [edit name="f.isJacketGet" initial="0" left="1600" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isJacketGet" initial="&f.isJacketGet" left="1600" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isJutanOpen == 0"]
    [edit name="f.isJutanOpen" initial="0" left="1600" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isJutanOpen" initial="&f.isJutanOpen" left="1600" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isRoomLightNight == 0"]
    [edit name="f.isRoomLightNight" initial="0" left="1600" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isRoomLightNight" initial="&f.isRoomLightNight" left="1600" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isYoukanGet == 0"]
    [edit name="f.isYoukanGet" initial="0" left="1600" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isYoukanGet" initial="&f.isYoukanGet" left="1600" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[endif]

; ゲーム変数_会話パートのスキップ
[if exp="f.scn_skip == 0"]
    [edit name="f.scn_skip" initial="0" left="1600" top="840" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.scn_skip" initial="&f.scn_skip" left="1600" top="840" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[s]

*Flagdetail
;Notionの「フラグ一覧」ページを開く
[iscript]
    alert("Notionでフラグ一覧ページを開きます");
[endscript]
[web url="https://www.notion.so/shinya30/8a2e9e554d9d4a8ebea9cc950fb3ca44?v=cc8efcf2a18c4d5db87e5b1abaaf00ec&pvs=4"]
[jump target="*Debug"]

*Save
; ゲーム変数格納_Episode1
[commit name="f.isEpisode1Clear"]
[commit name="f.isStageStatusGreen"]
[commit name="f.isLightStatusGreen"]
[commit name="f.isSpeakerStatusGreen"]
[commit name="f.isCableGet"]
[commit name="f.isLightCoverGet"]
[commit name="f.isDriverGet"]
[commit name="f.isMikeGet"]

; ゲーム変数格納_Episode2
[commit name="f.isEpisode2Clear"]
[commit name="f.isTentDown"]
[commit name="f.isDressGet"]
[commit name="f.isHangerGet"]
[commit name="f.isPaperDown"]
[commit name="f.isPencilGet"]
[commit name="f.isRedBlockGet"]
[commit name="f.isBlueBlockGet"]
[commit name="f.isGreenBlockGet"]
[commit name="f.isKeyOpen"]
[commit name="f.isCurtainGet"]

; ゲーム変数格納_Episode3
[commit name="f.isEpisode3Clear"]
[commit name="f.isFutonGet"]
[commit name="f.isCompassGet"]
[commit name="f.isJumperGet"]
[commit name="f.isJutanOpen"]
[commit name="f.isRoomLightNight"]
[commit name="f.isYoukanGet"]

; ゲーム変数格納_会話パートのスキップ
[commit name="f.scn_skip"]

; フラグの値に応じて値を変更する
; 思い出1をクリアする
[if exp="f.isEpisode1Clear == 1"]
    [iscript]
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
    [endscript]
[endif]

; ステージがせり上がる
[if exp="f.isStageStatusGreen == 1"]
    [iscript]
        f.isCableGet = -1
    [endscript]
[endif]

; ライトカバーを装着する
[if exp="f.isLightStatusGreen == 1"]
    [iscript]
        f.isStageStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
    [endscript]
[endif]

; スピーカーの傾きを直す
[if exp="f.isSpeakerStatusGreen == 1"]
    [iscript]
        f.isStageStatusGreen = 1
        f.isCableGet = -1
        f.isDriverGet = 1
    [endscript]
[endif]

; 天幕を下ろす
[if exp="f.isTentDown == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isHangerGet = -1
        f.isPaperDown = 1
    [endscript]
[endif]

; アイブロウペンシルを獲得する
[if exp="f.isPencilGet == -1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isTentDown = 1
        f.isHangerGet = -1
        f.isPaperDown = 1
    [endscript]
[endif]

; タンスの開錠をする
[if exp="f.isKeyOpen == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isHungerGet = 1
    [endscript]
[endif]

; 思い出2をクリアする
[if exp="f.isEpisode2Clear == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isTentDown = 1
        f.isDressGet = -1
        f.isHangerGet = -1
        f.isPaperDown = 1
        f.isPencilGet = -1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isKeyOpen = 1
        f.isCurtainGet = -1
    [endscript]
[endif]

; 収納ボックスにコンパスをはめる
[if exp="f.isCompassGet == -1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isEpisode2Clear = 1
        f.isTentDown = 1
        f.isDressGet = -1
        f.isHangerGet = -1
        f.isPaperDown = 1
        f.isPencilGet = -1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isKeyOpen = 1
        f.isCurtainGet = -1
    [endscript]
[endif]

; ジャケットをハンガーに掛ける
[if exp="f.isJacketGet == -1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isEpisode2Clear = 1
        f.isTentDown = 1
        f.isDressGet = -1
        f.isHangerGet = -1
        f.isPaperDown = 1
        f.isPencilGet = -1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isKeyOpen = 1
        f.isCurtainGet = -1
    [endscript]
[endif]

; 布団を獲得する
[if exp="f.isFutonGet == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isEpisode2Clear = 1
        f.isTentDown = 1
        f.isDressGet = -1
        f.isHangerGet = -1
        f.isPaperDown = 1
        f.isPencilGet = -1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isKeyOpen = 1
        f.isCurtainGet = -1
        f.isCompassGet = -1
        f.isJacketGet = -1
    [endscript]
[endif]

; 思い出3をクリアする
[if exp="f.isEpisode3Clear == 1"]
    [iscript]
        f.isEpisode1Clear = 1
        f.isStageStatusGreen = 1
        f.isLightStatusGreen = 1
        f.isSpeakerStatusGreen = 1
        f.isCableGet = -1
        f.isLightCoverGet = -1
        f.isDriverGet = 1
        f.isMikeGet = 1
        f.isEpisode2Clear = 1
        f.isTentDown = 1
        f.isDressGet = -1
        f.isHangerGet = -1
        f.isPaperDown = 1
        f.isPencilGet = -1
        f.isRedBlockGet = -1
        f.isBlueBlockGet = -1
        f.isGreenBlockGet = -1
        f.isKeyOpen = 1
        f.isCurtainGet = -1
        f.isFutonGet = 1
        f.isCompassGet = -1
        f.isJacketGet = -1
        f.isRoomLightNight = 1
    [endscript]
[endif]
[cm]
[freeimage layer="1"]
[jump storage="title.ks" target="*TopPage"]
[s]

*Backtitle
[cm]
[freeimage layer="1"]
[jump storage="title.ks" target="*TopPage"]