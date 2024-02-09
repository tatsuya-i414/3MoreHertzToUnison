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
#思い出3導入
次の部屋はここみたいだね[p]

#思い出3導入
布団を探そう！そして寝よう！[p]

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