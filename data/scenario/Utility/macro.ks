; ------------------------------
; レイヤー
; ------------------------------

; メッセージレイヤーを表示にする
[macro name="messageTrue"]
    @layopt layer="message0" visible="true"
[endmacro]

; メッセージレイヤーを非表示にする
[macro name="messageFalse"]
    @layopt layer="message0" visible="false"
[endmacro]

; レイヤー0に設定した画像を表示にする
[macro name="layer0True"]
    @layopt layer="0" visible="true"
[endmacro]

; レイヤー0に設定した画像を非表示にする
[macro name="layer0False"]
    @layopt layer="0" visible="false"
[endmacro]

; レイヤー1に設定した画像を表示にする
[macro name="layer1True"]
    @layopt layer="1" visible="true"
[endmacro]

; レイヤー1に設定した画像を非表示にする
[macro name="layer1False"]
    @layopt layer="1" visible="false"
[endmacro]

; レイヤー2に設定した画像を表示にする
[macro name="layer2True"]
    @layopt layer="2" visible="true"
[endmacro]

; レイヤー2に設定した画像を非表示にする
[macro name="layer2False"]
    @layopt layer="2" visible="false"
[endmacro]

; レイヤー3に設定した画像を表示にする
[macro name="layer3True"]
    @layopt layer="3" visible="true"
[endmacro]

; レイヤー3に設定した画像を非表示にする
[macro name="layer3False"]
    @layopt layer="3" visible="false"
[endmacro]

; レイヤー0に設定した画像を削除する
[macro name="Freelayer0"]
    [freeimage layer="0"]
[endmacro]

; レイヤー1に設定した画像を削除する
[macro name="Freelayer1"]
    [freeimage layer="1"]
[endmacro]

; レイヤー2に設定した画像を削除する
[macro name="Freelayer2"]
    [freeimage layer="2"]
[endmacro]

; レイヤー3に設定した画像を削除する
[macro name="Freelayer3"]
    [freeimage layer="3"]
[endmacro]

; ------------------------------
; 演出
; ------------------------------

; 会話中に場所を表記する
[macro name="DispLocation"]
    [image storage="../image/share/button_select_02_hover.png" layer="1" x="-250" y="30" width="997" height="72" name="location"]
    [ptext layer="1" text="%text" x="80" y="45" size="48" color="&sf.colorScheme[4]" shadow="" overwrite="true" name="location_text"]
[endmacro]

; 表示している場所の表記を削除する
[macro name="DeleteDispLocation"]
    [free layer="1" name="location"]
    [free layer="1" name="location_text"]
[endmacro]

; 暗転
[macro name="blackout"]
    [mask effect="fadeIn" time="%time_1|3000"]
    [if exp="%exp"]
        ; 背景パーツを表示
        [if exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode1' " ]
            [if exp="f.isLightCoverGet == 0"]
                [image storage="../image/episode1/lightcover_item.png" layer="1" x="450" y="770" name="lightcover"]
            [endif]
            [if exp="f.isSpeakerStatusGreen == 1"]
                [image storage="../image/episode1/speaker_afterrepair.png" layer="1" x="1" y="125" name="speaker"]
            [else]
                [image storage="../image/episode1/speaker_beforerepair.png" layer="1" x="1" y="110" name="speaker"]
            [endif]
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode2' "]
            [if exp="f.isRedBlockGet == 0 && f.isBlueBlockGet == 0 && f.isGreenBlockGet == 0"]
                [image storage="../image/episode2/block.png" layer="1" x="265" y="527" name="block"]
            [endif]
            [if exp="f.isHangerGet == 0"]
                [image storage="../image/episode2/hanger.png" layer="1" x="148" y="410" name="hanger"]
            [endif]
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode2_dress' "]
            ; 追加予定
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode3' "]
            [if exp="f.isJacketGet == 0"]
                [image storage="../image/episode3/jacket.png" layer="1" x="1150" y="750" name="jacket"]
            [endif]
            [if exp="f.isJacketGet == -1 && f.isRoomLightNight == 0"]
                [image storage="../image/episode3/wallhanger_onjacket.png" layer="1" x="1427" y="90" name="wallhanger_onjacket"]
            [elsif exp="f.isJacketGet == -1 && f.isRoomLightNight == 1"]
                [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
            [else]
                [image storage="../image/episode3/wallhanger_onhanger.png" layer="1" x="1414" y="111" name="wallhanger_onhanger"]
            [endif]
            [if exp="f.isJutanOpen == 1"]
                [image storage="../image/episode3/jutan_turnedup.png" layer="1" x="585" y="908" name="jutan_turndup"]
                [if exp="f.isRoomLightNight == 1"]
                    [image storage="../image/episode3/mark_underjutan.png" layer="1" x="1175" y="915" name="mark"]
                [endif]
            [else]
                [image storage="../image/episode3/jutan.png" layer="1" x="585" y="908" name="jutan"]
            [endif]
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode3_jacket' "]
            [free layer="1" name="wallhanger_onhanger"]
            [if exp="f.isRoomLightNight == 0"]
                [image storage="../image/episode3/wallhanger_onjacket.png" layer="1" x="1427" y="90" name="wallhanger_onjacket"]
            [elsif exp="f.isRoomLightNight == 1"]
                [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
            [endif]
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'episode3_bed' "]
            [free layer="1" name="wallhanger_onjacket"]
            [image storage="../image/episode3/wallhanger_onjacket_night.png" layer="1" x="1411" y="107" name="wallhanger_onjacket_night"]
            [if exp="f.isJutanOpen == 1"]
                [image storage="../image/episode3/mark_underjutan.png" layer="1" x="1175" y="915" name="mark"]
            [endif]
        [elsif exp="f.itemVisible[0] == 'true' && f.itemVisible[1] == 'epilogue_true' "]
            [layer1True]
            [layer3True]
        [endif]
        [bg storage="%storage_1" time="%time_2|100"]
    [else]
        [bg storage="%storage_2" time="%time_3|100"]
    [endif]
    [mask_off time="2000"]
[endmacro]

; フラッシュ
[macro name="flasheffect"]
    [mask effect="fadeIn" color="%color|0xF5F5F5" graphic="%graphic" folder="image" time="%intime|80"]
    [mask_off effect="fadeOut" time="%outtime|160"]
[endmacro]

; ------------------------------
; BGM
; ------------------------------

; トップ画面BGMを再生する
[macro name="PlayNormalBGM"]
    [playbgm storage="topmenu.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; オープニングBGMを再生する
[macro name="PlayEpisodeOpBGM"]
    [playbgm storage="episode_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1序盤BGMを再生する
[macro name="PlayEpisode1_OpBGM"]
    [playbgm storage="episode1_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1通常BGMを再生する
[macro name="PlayEpisode1BGM"]
    [playbgm storage="episode1.m4a" loop="true" volume="60" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出1終盤BGMを再生する
[macro name="PlayEpisode1_EdBGM"]
    [playbgm storage="episode1_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2序盤BGMを再生する
[macro name="PlayEpisode2_OpBGM"]
    [playbgm storage="episode2_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2通常BGMを再生する
[macro name="PlayEpisode2BGM"]
    [playbgm storage="episode2.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出2終盤BGMを再生する
[macro name="PlayEpisode2_EdBGM"]
    [playbgm storage="episode2_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3通常BGMを再生する
[macro name="PlayEpisode3BGM"]
    [playbgm storage="episode3.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3序盤BGMを再生する
[macro name="PlayEpisode3_OpBGM"]
    [playbgm storage="episode3_op.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; 思い出3終盤BGMを再生する
[macro name="PlayEpisode3_EdBGM"]
    [playbgm storage="episode3_ed.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エンディング(NormalEnd)BGMを再生する
[macro name="PlayEpisodeNormalEdBGM"]
    [playbgm storage="episode_ed_normal.m4a" loop="true" volume="95" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エンディング(TrueEnd)BGMを再生する
[macro name="PlayEpisodeTrueEdBGM"]
    [playbgm storage="episode_ed_true.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エピローグ(NormalEnd)BGMを再生する
[macro name="PlayEpisodeNormalEpBGM"]
    [playbgm storage="episode_ep_normal.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; エピローグ(TrueEnd)BGMを再生する
[macro name="PlayEpisodeTrueEpBGM"]
    [playbgm storage="episode_ep_true.m4a" loop="true" restart="false"]
    [iscript]
        f.isPlayingBGM = 'true'
    [endscript]
[endmacro]

; BGMの再生を停止する
[macro name="StopPlayingBGM"]
    [stopbgm]
    [iscript]
        f.isPlayingBGM = 'false'
    [endscript]
[endmacro]

; BGMをフェードアウトしながら再生停止する
[macro name="FadeoutBGM"]
    [fadeoutbgm time="%fadeoutTime|2000"]
    [wait time="%waitTime|2000"]
    [iscript]
        f.isPlayingBGM = 'false'
    [endscript]
[endmacro]

; ------------------------------
; SE
; ------------------------------

; タイトル画面決定音のSEを再生する
[macro name="PlayTitleDecision"]
    [playse storage="../sound/se/titledecision.m4a" loop="false"]
[endmacro]

; 通常ボタンを押下するSEを再生する
[macro name="PlayDecision"]
    [playse storage="../sound/se/decision.m4a" loop="false"]
[endmacro]

; 戻るボタンを押下するSEを再生する
[macro name="PlayCancel"]
    [playse storage="../sound/se/cancel.m4a" loop="false"]
[endmacro]

; ページ移動ボタンを押下するSEを再生する
[macro name="PlayPageChange"]
    [playse storage="../sound/se/pagechange.m4a" loop="false"]
[endmacro]

; Config画面の各種ボタンを押下するSEを再生する
[macro name="PlayDecision3"]
    [playse storage="../sound/se/decision3.m4a" loop="false"]
[endmacro]

; 全画面ボタン/オートボタン/バックログボタン/スキップボタン/アイテムメニューボタンを押下するSEを再生する
[macro name="PlayDecision2"]
    [playse storage="../sound/se/decision2.m4a" loop="false"]
[endmacro]

; アイテム取得時のSEを再生する
[macro name="PlayGetItem"]
    [playse storage="../sound/se/getitem.m4a" loop="false"]
[endmacro]

; 使用アイテム決定時のSEを再生する
[macro name="PlayUsingItemDecision"]
    [playse storage="../sound/se/itemdecision.m4a" loop="false"]
[endmacro]

; ゴソゴソするSEを再生する
[macro name="PlayGosoGoso"]
    [playse storage="../sound/se/gosogoso.m4a" loop="false"]
[endmacro]

; 制御盤のボタンを押下するSEを再生する
[macro name="PlayControlPanelButtonClick"]
    [playse storage="../sound/se/controlpanelbuttonclick.m4a" loop="false"]
[endmacro]

; 制御盤のランプが変化するSEを再生する
[macro name="PlayChangeControlPanelLamp"]
    [playse storage="../sound/se/changecontrolpanellamp.m4a" loop="false"]
[endmacro]

; 配線扉を開けるSEを再生する
[macro name="PlayOpenDoor"]
    [playse storage="../sound/se/opendoor.m4a" loop="false"]
[endmacro]

; ケーブルを接続するSEを再生する
[macro name="PlayConnectCable"]
    [playse storage="../sound/se/connectcable.m4a" loop="false"]
[endmacro]

; ステージがせり上がるSEを再生する
[macro name="PlayRisingStage"]
    [playse storage="../sound/se/risingstage.m4a" loop="false"]
[endmacro]

; ダイヤルを回すSEを再生する
[macro name="PlayTurnDial"]
    [playse storage="../sound/se/turndial.m4a" loop="false"]
[endmacro]

; 開錠するSEを再生する
[macro name="PlayUnlockKey"]
    [playse storage="../sound/se/unlockkey.m4a" loop="false"]
[endmacro]

; 箱を開けるSEを再生する
[macro name="PlayOpenBox"]
    [playse storage="../sound/se/openbox.m4a" loop="false"]
[endmacro]

; ライトカバーを取り付けるSEを再生する
[macro name="PlayMountLightCover"]
    [playse storage="../sound/se/mountlightcover.m4a" loop="false"]
[endmacro]

; ドライバーを回すSEを再生する
[macro name="PlayTurnScrew"]
    [playse storage="../sound/se/turnscrew.m4a" loop="false"]
[endmacro]

; 電気を消すSEを再生する
[macro name="PlayTurnOffLight"]
    [playse storage="../sound/se/turnofflight.m4a" loop="false"]
[endmacro]

; スポットライトが点灯するSEを再生する
[macro name="PlaySpotLightOn"]
    [playse storage="../sound/se/spotlighton.m4a" loop="false"]
[endmacro]

; 足音がするSEを再生する
[macro name="PlayFootStep"]
    [playse storage="../sound/se/footstep.m4a" loop="false"]
[endmacro]

; ピカッと音が鳴るSEを再生する
[macro name="PlayBell"]
    [playse storage="../sound/se/bell.m4a" loop="false"]
[endmacro]

; 衣が擦れるSEを再生する
[macro name="PlayRustlingClothes"]
    [playse storage="../sound/se/rustlingclothes.m4a" loop="false"]
[endmacro]

; カチャッと音がするSEを再生する
[macro name="PlayKacha"]
    [playse storage="../sound/se/kacha.m4a" loop="false"]
[endmacro]

; 一眼レフで撮影するSEを再生する
[macro name="PlayPhotographing"]
    [playse storage="../sound/se/camerashutter.m4a" loop="false"]
[endmacro]

; 何かをはめ込むSEを再生する
[macro name="PlayEmbed"]
    [playse storage="../sound/se/embed.m4a" loop="false"]
[endmacro]

; チェストを開けるSEを再生する
[macro name="PlayOpenChest"]
    [playse storage="../sound/se/openchest.m4a" loop="false"]
[endmacro]

; ペンで紙を擦るSEを再生する
[macro name="PlayScrubPencil"]
    [playse storage="../sound/se/scrubpencil.m4a" loop="false"]
[endmacro]

; 木が軋むSEを再生する
[macro name="PlayCreak"]
    [playse storage="../sound/se/creak.m4a" loop="false"]
[endmacro]

; 鞄の中のものを漁るSEを再生する
[macro name="PlayGosoGoso2"]
    [playse storage="../sound/se/gosogoso2.m4a" loop="false"]
[endmacro]

; 矢印ボタンを押下するSEを再生する
[macro name="PlayArrowButtonClick"]
    [playse storage="../sound/se/arrowbuttonclick.m4a" loop="false"]
[endmacro]

; ボタンを押下する順番を間違えるSEを再生する
[macro name="PlayWrong"]
    [playse storage="../sound/se/wrong.m4a" loop="false"]
[endmacro]

; ガチャガチャするSEを再生する
[macro name="PlayGachaGacha"]
    [playse storage="../sound/se/gachagacha.m4a" loop="false"]
[endmacro]

; 素振りするSEを再生する
[macro name="PlaySwing"]
    [playse storage="../sound/se/swing.m4a" loop="false"]
[endmacro]

; 電気のスイッチを切り替えるSEを再生する
[macro name="PlaySwitching"]
    [playse storage="../sound/se/switching.m4a" loop="false"]
[endmacro]

; 絨毯をめくるSEを再生する
[macro name="PlayTurnOver"]
    [playse storage="../sound/se/turnover.m4a" loop="false"]
[endmacro]

; 駆け足のSEを再生する
[macro name="PlayRun"]
    [playse storage="../sound/se/run.m4a" loop="false"]
[endmacro]

; 紙が落ちるSEを再生する
[macro name="PlayFallOfPaper"]
    [playse storage="../sound/se/fallofpaper.m4a" loop="false"]
[endmacro]

; 強めにドアを開けるSEを再生する
[macro name="PlayOpenDoor2"]
    [playse storage="../sound/se/opendoor2.m4a" loop="false"]
[endmacro]

; ------------------------------
; キャラクター
; ------------------------------

; 桜良(通常)を画面右手に表示する
[macro name="ShowNormalSakuraOnRight"]
    [chara_show name="sakura" time="500" layer="3" width="730" height="1990" left="960" top="20"]
[endmacro]

; 桜良(通常)を画面中央に表示する
[macro name="ShowNormalSakuraOnCenter"]
    [chara_show name="sakura" time="500" layer="3" width="730" height="1990" left="550" top="20"]
[endmacro]

; 深雪(通常)を画面左手に表示する
[macro name="ShowNormalMiyukiOnLeft"]
    [chara_show name="miyuki" time="500" layer="3" width="730" height="1990" left="160" top="20"]
[endmacro]

; 深雪(通常)を画面中央に表示する
[macro name="ShowNormalMiyukiOnCenter"]
    [chara_show name="miyuki" time="500" layer="3" width="730" height="1990" left="550" top="20"]
[endmacro]

; 桜良(通常)と深雪(通常)を表示する
[macro name="ShowNormalSakuraAndMiyuki"]
    [ShowNormalSakuraOnRight]
    [ShowNormalMiyukiOnLeft]
[endmacro]

; レイヤー3に設定した桜良の画像を削除する
[macro name="FreeSakura"]
    [freeimage layer="3" name="sakura"]
[endmacro]

; レイヤー3に設定した深雪の画像を削除する
[macro name="FreeMiyuki"]
    [freeimage layer="3" name="miyuki"]
[endmacro]

; ------------------------------
; アイテム
; ------------------------------

; アイテムインベントリを表示する
[macro name="ItemInventory"]
    ; 通常アイテム用
    [iscript]
        tf.usingItemInventory1 = 0
        tf.usingItemInventory2 = 0
        tf.usingItemInventory3 = 0
        tf.usingItemInventory4 = 0
        tf.usingItemInventory5 = 0
        tf.usingItemInventory6 = 0
        tf.usingItemInventory7 = 0
    [endscript]
    ; 特別アイテム用
    [iscript]
        tf.usingItemInventory8 = 0
        tf.usingItemInventory9 = 0
        tf.usingItemInventory10 = 0
    [endscript]
    ; インベントリ画像
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="150" name="inventory1"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="250" name="inventory2"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="350" name="inventory3"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="450" name="inventory4"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="550" name="inventory5"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="650" name="inventory6"]
    [image storage="../image/share/inventory.png" layer="1" x="1780" y="750" name="inventory7"]
[endmacro]

; アイテム画像を表示する
[macro name="ItemImage"]
    [layer2True]
    [if exp="f.isCableGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode1/cable.png" layer="2" x="1780" y="250" width="100" height="100" visible="true" name="cable"]
    [endif]
    [if exp="f.isDriverGet == 1"]
        [iscript]
            tf.usingItemInventory1 = 1
        [endscript]
        [image storage="../image/episode1/driver_item.png" layer="2" x="1780" y="150" width="100" height="100" visible="true" name="driver"]
    [endif]
    [if exp="f.isLightCoverGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode1/lightcover_item.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="lightcover"]
    [endif]
    [if exp="f.isHangerGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode2/hanger_item.png" layer="2" x="1780" y="250" width="100" height="100" visible="true" name="hanger"]
    [endif]
    [if exp="f.isPencilGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode2/pencil.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="pencil"]
    [endif]
    [if exp="f.isBlueBlockGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode2/blueblock_item.png" layer="2" x="1780" y="450" width="100" height="100" visible="true" name="blueblock"]
    [endif]
    [if exp="f.isRedBlockGet == 1"]
        [iscript]
            tf.usingItemInventory5 = 1
        [endscript]
        [image storage="../image/episode2/redblock_item.png" layer="2" x="1780" y="550" width="100" height="100" visible="true" name="redblock"]
    [endif]
    [if exp="f.isGreenBlockGet == 1"]
        [iscript]
            tf.usingItemInventory6 = 1
        [endscript]
        [image storage="../image/episode2/greenblock_item.png" layer="2" x="1780" y="650" width="100" height="100" visible="true" name="greenblock"]
    [endif]
    [if exp="f.isDressGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode2/dress.png" layer="2" x="1780" y="450" width="100" height="100" visible="true" name="dress"]
    [endif]
    [if exp="f.isCurtainGet == 1"]
        [iscript]
            tf.usingItemInventory5 = 1
        [endscript]
        [image storage="../image/episode2/curtain_item.png" layer="2" x="1780" y="550" width="100" height="100" visible="true" name="curtain"]
    [endif]
    [if exp="f.isCompassGet == 1"]
        [iscript]
            tf.usingItemInventory2 = 1
        [endscript]
        [image storage="../image/episode3/compass.png" layer="2" x="1780" y="250" width="97" height="100" visible="true" name="compass"]
    [endif]
    [if exp="f.isJacketGet == 1"]
        [iscript]
            tf.usingItemInventory3 = 1
        [endscript]
        [image storage="../image/episode3/jacket_item.png" layer="2" x="1780" y="350" width="100" height="100" visible="true" name="jacket"]
    [endif]
    [if exp="f.isFutonGet == 1"]
        [iscript]
            tf.usingItemInventory4 = 1
        [endscript]
        [image storage="../image/episode3/futon.png" layer="2" x="1780" y="450" width="100" height="91" visible="true" name="futon"]
    [endif]
[endmacro]

; 画面右上のアイテムボックスを表示する
[macro name="ItemBox"]
    [layer1True]
    [ItemInventory]
    [ItemImage]
[endmacro]

; 画面右上のアイテムボックスを非表示にする
[macro name="FreeItemBox"]
    [iscript]
        f.isUsing = 0
    [endscript]
    ; インベントリ画像
    [free layer="1" name="inventory1"]
    [free layer="1" name="inventory2"]
    [free layer="1" name="inventory3"]
    [free layer="1" name="inventory4"]
    [free layer="1" name="inventory5"]
    [free layer="1" name="inventory6"]
    [free layer="1" name="inventory7"]
    ;　アイテム画像
    [free layer="2" name="cable"]
    [free layer="2" name="driver"]
    [free layer="2" name="lightcover"]
    [free layer="2" name="hanger"]
    [free layer="2" name="pencil"]
    [free layer="2" name="blueblock"]
    [free layer="2" name="redblock"]
    [free layer="2" name="greenblock"]
    [free layer="2" name="dress"]
    [free layer="2" name="curtain"]
    [free layer="2" name="compass"]
    [free layer="2" name="jacket"]
    [free layer="2" name="futon"]
[endmacro]

; アイテム使用時のクリック判定
[macro name="SelectItemClickable"]
    [if exp="tf.usingItemInventory1 == 1"]
        [clickable x="1780" y="150" width="100" height="100" target="%target_1" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory2 == 1"]
        [clickable x="1780" y="250" width="100" height="100" target="%target_2" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory3 == 1"]
        [clickable x="1780" y="350" width="100" height="100" target="%target_3" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory4 == 1"]
        [clickable x="1780" y="450" width="100" height="100" target="%target_4" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory5 == 1"]
        [clickable x="1780" y="550" width="100" height="100" target="%target_5" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory6 == 1"]
        [clickable x="1780" y="650" width="100" height="100" target="%target_6" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
    [if exp="tf.usingItemInventory7 == 1"]
        [clickable x="1780" y="750" width="100" height="100" target="%target_7" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]"]
    [endif]
[endmacro]

; アイテム使用時の確認メッセージ
[macro name="ConfirmUseItem"]
    [PlayUsingItemDecision]
    [nolog]
    #
    このアイテムを使用しますか？
    [endnolog]
[endmacro]

; アイテム使用時の「はい」「いいえ」ボタン
[macro name="YesNoButton"]
    [glink color="bth06" storage="%storage_yes" target="%target_yes" width="80" x="240" y="960" size="24" text="はい" clickse="../sound/se/decision.m4a"]
    [glink color="bth06" storage="%storage_no" target="%target_no" width="80" x="470" y="960" size="24" text="いいえ" clickse="../sound/se/cancel.m4a"]
[endmacro]

; 正しくないアイテムを使用した時のメッセージ
[macro name="MessageToUsingWrongItem"]
    [nolog]
    #
    このアイテムは違うようだ。[p]
    [endnolog]
[endmacro]

; 昼夜切り替えスイッチ押下時に元の画像を削除
[macro name="FreeImagesWhenSwitching"]
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
[endmacro]

; ------------------------------
; 画面遷移
; ------------------------------

; 拡大マップからの戻るボタン
[macro name="BackFromEnlargedMap"]
    [if exp="sf.usingDevice == 'SP' "]
        [button graphic="share/arrow_01_down.png" enterimg="share/arrow_01_down_hover.png" target="%target" x="910" y="950"]
    [elsif exp="sf.usingDevice == 'PC' "]
        [button graphic="share/arrow_01_down.png" enterimg="share/arrow_01_down_hover.png" target="%target" x="910" y="980"]
    [endif]
[endmacro]

; ステージルームへ移動する
[macro name="JumpStageRoom"]
    [jump storage="Gimmick/episode1.ks" target="*StageRoom"]
[endmacro]

; スタジオルームへ移動する
[macro name="JumpStudioRoom"]
    [jump storage="Gimmick/episode2.ks" target="*StudioRoom"]
[endmacro]

; ベッドルームへ移動する
[macro name="JumpBedRoom"]
    [jump storage="Gimmick/episode3.ks" target="*BedRoom"]
[endmacro]

; ------------------------------
; その他共通処理
; ------------------------------

; メッセージウィンドウ非表示ボタン
[macro name="hiddenMessageWindow"]
    [button graphic="share/sysbtn_02_screen.png" enterimg="share/sysbtn_02_screen_hover.png" x="1420" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="window"]
[endmacro]

; オートボタン
[macro name="AutoButton"]
    [button graphic="share/sysbtn_02_auto.png" enterimg="share/sysbtn_02_auto_hover.png" x="1540" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="auto" hint="AUTO"]
[endmacro]

; バックログボタン
[macro name="BacklogButton"]
    [button graphic="share/sysbtn_02_log.png" enterimg="share/sysbtn_02_log_hover.png" x="1660" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="backlog" hint="LOG"]
[endmacro]

; スキップボタン
[macro name="SkipButton"]
    [button graphic="share/sysbtn_02_skip.png" enterimg="share/sysbtn_02_skip_hover.png" x="1780" y="20" clickse="../sound/se/decision2.m4a" fix="true" role="skip" hint="SKIP"]
[endmacro]

; シナリオパート開始時に操作ボタン類を表示する
[macro name="ControlButtons"]
    [clearfix]
    [hidemenubutton]
    [hiddenMessageWindow]
    [AutoButton]
    [BacklogButton]
    [SkipButton]
[endmacro]

; シナリオパート終了時に操作ボタン類を閉じて、メニューボタンを表示する
[macro name="MenuButton"]
    [showmenubutton]
    [cancelskip]
    [autostop]
[endmacro]

; 背景を変更する
[macro name="ChangeBackGround"]
    [bg storage="%storage" time="%time|100" method="%method"]
[endmacro]

; 背景を変更する（思い出3専用）
[macro name="ChangeBackGroundOfEpisode3"]
    [if exp="f.isRoomLightNight == 0"]
        [ChangeBackGround storage="%storage_noon"]
    [else]
        [ChangeBackGround storage="%storage_night"]
    [endif]
[endmacro]

; 通常のクリック判定
; 開発/検証モード：灰色｜通常モード：透明
[macro name="clickJudgment"]
    [clickable x="%x" y="%y" width="%width" height="%height" target="%target" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]" cond="sf.bootMode == 'develop' || sf.bootMode == 'kenshou' "]
    [clickable x="%x" y="%y" width="%width" height="%height" target="%target" opacity="0" mouseopacity="0" color="&sf.colorScheme[3]" cond="sf.bootMode == 'normal' "]
[endmacro]

; 選択した用語の詳細を表示する
[macro name="openDetailDescription"]
    [button graphic="%graphic" target="*OpenDescription" x="100" y="%y" enterimg="%enterimg" clickse="../sound/se/itemdecision.m4a" exp="%exp" name="%descriptionNo"]
    [if exp="tf.isCharacter == 1"]
        [image storage="%storage" layer="1" x="%image_x|1010" y="%image_y|355" width="%width|234" height="%height|634" name="picture"]
        [ptext layer="1" text="%furigana" x="%x" y="370" size="25" name="furigana"]
        [ptext layer="1" text="%name" x="1350" y="400" size="50" name="name"]
        [ptext layer="1" text="年齢：" x="1350" y="530" size="25" name="age_header"]
        [ptext layer="1" text="%age" x="1430" y="530" size="25" name="age"]
        [ptext layer="1" text="血液型：" x="1600" y="530" size="25" name="bloodtype_header"]
        [ptext layer="1" text="%bloodtype" x="1710" y="530" size="25" name="bloodtype"]
        [ptext layer="1" text="誕生日：" x="1350" y="580" size="25" name="birthday_header"]
        [ptext layer="1" text="%birthday" x="1460" y="580" size="25" name="birthday"]
        [ptext layer="1" text="身長：" x="1600" y="580" size="25" name="stature_header"]
        [ptext layer="1" text="%stature" x="1680" y="580" size="25" name="stature"]
        [ptext layer="1" text="出身地：" x="1350" y="630" size="25" name="birthplace_header"]
        [ptext layer="1" text="%birthplace" x="1460" y="630" size="25" name="birthplace"]
        [ptext layer="1" text="趣味：" x="1600" y="630" size="25" name="hobby_header"]
        [ptext layer="1" text="%hobby" x="1680" y="630" size="25" name="hobby"]
        [ptext layer="1" text="特技：" x="1350" y="680" size="25" name="specialskill_header"]
        [ptext layer="1" text="%specialskill" x="1430" y="680" size="25" name="specialskill"]
        [ptext layer="1" text="モチーフ：" x="1600" y="680" size="25" name="motif_header"]
        [ptext layer="1" text="%motif" x="1730" y="680" size="25" name="motif"]
        [ptext layer="1" text="%description" x="1350" y="780" size="25" name="description"]
    [else]
        [image storage="%storage" layer="1" x="%image_x|950" y="%image_y|400" width="%width|300" height="%height|300" name="picture"]
        [ptext layer="1" text="%furigana" x="%x" y="370" size="25" name="furigana"]
        [ptext layer="1" text="%name" x="1350" y="400" size="50" name="name"]
        [ptext layer="1" text="%description" x="1350" y="530" size="25" name="description"]
    [endif]
[endmacro]

; 用語切替時にレイヤーを削除する
[macro name="deleteDetailDescription"]
    [free layer="1" name="picture"]
    [free layer="1" name="furigana"]
    [free layer="1" name="name"]
    [free layer="1" name="age_header"]
    [free layer="1" name="age"]
    [free layer="1" name="bloodtype_header"]
    [free layer="1" name="bloodtype"]
    [free layer="1" name="birthday_header"]
    [free layer="1" name="birthday"]
    [free layer="1" name="stature_header"]
    [free layer="1" name="stature"]
    [free layer="1" name="birthplace_header"]
    [free layer="1" name="birthplace"]
    [free layer="1" name="hobby_header"]
    [free layer="1" name="hobby"]
    [free layer="1" name="specialskill_header"]
    [free layer="1" name="specialskill"]
    [free layer="1" name="motif_header"]
    [free layer="1" name="motif"]
    [free layer="1" name="description"]
[endmacro]

; 用語切替時にボタン画像を元に戻す
[macro name="returnSelectedButton"]
    [button graphic="%graphic" target="*OpenDescription" x="100" y="%y" enterimg="%enterimg" clickse="../sound/se/itemdecision.m4a" exp="%exp" name="%name"]
[endmacro]

; 用語解説ページのページング処理
[macro name="Glossary_Pagination"]
    [button graphic="../others/plugin/theme_kopanda_bth_06_blue/image/config/back.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/config/back2.png" target="*Backtitle" x="1680" y="60" clickse="../sound/se/cancel.m4a"]
    [free layer="1" name="pageNo"]
    [ptext layer="1" text="&tf.pageNo + ' / ' + tf.maxPageNo " x="450" y="960" size="24" name="pageNo"]
    [if exp="tf.isLastPage == 'false' "]
        [button graphic="glossary/button_back_next.png" enterimg="glossary/button_back_hover_next.png" target="%target_next" x="680" y="940" clickse="../sound/se/pagechange.m4a"]
    [endif]
    [if exp="tf.isFirstPage == 'false' "]
        [button graphic="glossary/button_back_prev.png" enterimg="glossary/button_back_hover_prev.png" target="%target_prev" x="100" y="940" clickse="../sound/se/pagechange.m4a"]
    [endif]
[endmacro]
[return]