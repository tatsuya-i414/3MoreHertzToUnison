; ------------------------------------------------------------
; その他共通処理用マクロ
; ------------------------------------------------------------
; バックログのみ改行
[macro name="hr"]
    [iscript]
        tf.system.backlog.push("");
    [endscript]
[endmacro]

; バックログと表画面で改行
[macro name="rhr"]
    [r]
    [iscript]
        tf.system.backlog.push("");
    [endscript]
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

; 会話中に場所を表記する（画面左部）
[macro name="DispLocation"]
    [image storage="../image/share/button_select_02_hover.png" layer="1" x="-250" y="30" width="997" height="72" name="location"]
    [ptext layer="1" text="%text" x="80" y="45" size="48" color="&sf.colorScheme[4]" shadow="" overwrite="true" name="location_text"]
[endmacro]

; 表示中の場所の表記を削除する
[macro name="DeleteDispLocation"]
    [free layer="1" name="location"]
    [free layer="1" name="location_text"]
[endmacro]

; 通常のクリック判定
; 開発/検証モード：灰色｜通常モード：透明
[macro name="clickJudgment"]
    [clickable x="%x" y="%y" width="%width" height="%height" target="%target" opacity="30" mouseopacity="50" color="&sf.colorScheme[3]" cond="sf.bootMode == 'develop' || sf.bootMode == 'kenshou' "]
    [clickable x="%x" y="%y" width="%width" height="%height" target="%target" opacity="0" mouseopacity="0" color="&sf.colorScheme[3]" cond="sf.bootMode == 'normal' "]
[endmacro]

; ローディングアニメーション開始（※index.htmlに同様の処理あり）
[macro name="StartLoading"]
    [html]
        <div class="loadingWrap">
        <div class="spinner">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
        </div>
        <p>Now Loading...</p>
        </div>
    [endhtml]
[endmacro]

; ローディングアニメーション終了
[macro name="StopLoading"]
    [iscript]
        $('.loadingWrap').css({'display':'none'});
    [endscript]
[endmacro]

; セーブポイント
[macro name="SavePoint"]
    [clearfix]
    [hidemenubutton]
    [wait time="1500"]
    [call storage="Utility/selectSave.ks" target="*SelectSave"]
    [StartLoading]
    [wait time="2500"]
    [StopLoading]
[endmacro]

; 昼夜切り替えスイッチ押下時に元の画像を削除（思い出3）
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
[return]