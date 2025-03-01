; 背景画像：深雪自室（フリー素材、余裕があれば作成）
[DispLocation text="深雪の部屋"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `深雪の部屋` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[PlayRustlingClothes]
#深雪
んん...[p]

[ShowMiyuki_Center face="trouble"]
#深雪
あれ、私、あの部屋で眠ったはずじゃ...[p]

#深雪
あの部屋で桜良とたくさん話して...[p]

; 深雪漫符：びっくり
[DispSurprised_Center]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
そうだ、桜良は！？[p]

[FreeDispSurprised]
[PlayFallOfPaper]
#深雪
えっ、これは...[p]

;[autostop]
;[skipstop]
;[ItemDisp storage="../image/episode1/cable.png"]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
「おめでとう！[rhr]
_　脱出成功だよ！！」[p]

#深雪
「これからも二人仲良くね！」[p]

#深雪
「追伸：もっと勇気を出すといいことあるかも！」...？[p]

;[autostop]
;[skipstop]
;[FreeItemDisp]
; 深雪漫符：ぐるぐる
#深雪
何なのこれは？[p]

#深雪
ひとまず、あの部屋からは脱出できたということ？。[rhr]
よく見ればここ、私の部屋ね...[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
つまり本当にあれは撮影だった、ってこと？[rhr]
誘拐の線も考えたけれど...[p]

#深雪
ひとまず、桜良の無事はこの目で見ないと安心できない。[rhr]
事務所へ行ってみましょう。[p]

[HideMiyuki]
; 場面転換
; 背景画像は事務所のロビーのイメージ（フリー素材、余裕があれば作成）
[DeleteDispLocation]
[DispLocation text="事務所のロビー"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `事務所のロビー` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
[PlayOpenDoor2]
; 深雪漫符：集中線
[DispSaturatedLine_Center]
[ShowMiyuki_Center face="seriously"]
#深雪
桜良！！[p]

[FreeDispSaturatedLine]
#マネージャー
わっ、どうしたんですか深雪さん！？[p]

[ChangeCharaFace name="miyuki" face="impatience"]
#深雪
ごめんなさい、つい。[p]

#マネージャー
桜良さんがどうかしました？[rhr]
ライブ前のような気迫ですが...[p]

#深雪
それが...[p]
[messageFalse]
[PlayFootStep]
[wait time="4000"]
[PlayOpenDoor]
[messageTrue]
[iscript]
    f.charaPosition[0] = 'miyuki'
    f.charaPosition[1] = 'left'
[endscript]
[ChangeCharaPosition]
[ShowSakura_Right]
#桜良
おはようございます！[p]

[ChangeCharaFace name="miyuki" face="smile"]
#深雪
桜良、無事でよかった！[p]

; 桜良漫符：音符
[DispMusicalNote_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
あっ、深雪ちゃんおはよう！[rhr]
昨日は楽しかったね！[p]

[FreeDispMusicalNote]
#深雪
もう、こっちの気も知らないで...[p]

#マネージャー
あら、二人ともいつの間にそんなに仲良くなったんですか？[p]

#桜良
えっ、だって昨日脱出ゲームの企画で！[p]

#マネージャー
...企画？そんな話聞いてないですが...[p]

; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="surprise"]
; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="seriously"]
#桜良と深雪
！！[p]

[FreeDispQS]
[FreeDispSurprised]
#マネージャー
もしかして、夜遅くからお二人で[rhr]
オンラインゲームでもされていたんですか？[p]

#マネージャー
仲良しなのはいいですが、[rhr]
夜更かしはほどほどにしてくださいね。[p]

#桜良
夜更かし？[rhr]
でももごっ！[p]

; 深雪がシュバッと桜良にかぶさる
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
はい、気をつけます。[rhr]
ところで一つ聞いてもいいですか？[p]

#マネージャー
大丈夫ですよ。[p]

#深雪
昨日の桜良と私、気づいたら家にいたんですが、[rhr]
仕事が終わった後の私たちについて覚えていますか？[p]

; 桜良と深雪が定位置に戻る
[ChangeCharaFace name="sakura" face="seriously"]
#マネージャー
ああ、お二人ともお仕事が終わった後眠ってしまったんです、[rhr]
起こすのも忍びないからと私が迎えに行きました。[p]

#マネージャー
そのまま車でお二人の家へ送り届けましたよ。[rhr]
本当にぐっすり、といった感じでした。[p]

[ChangeCharaFace name="sakura" face="surprise"]
; 深雪漫符：もやもや
[DispFuzzy_Left]
[ChangeCharaFace name="miyuki" face="close_eye"]
#マネージャー
というか、お二人とも寝落ちするほど疲れているなんて...[rhr]
マネージャー失格ですね。[p]

[FreeDispFuzzy]
#マネージャー
大丈夫ですか、無理されていませんか？[p]

[ChangeCharaFace name="miyuki" face="normal"]
#深雪
平気よ、昨晩はよく眠れたわ。[rhr]
むしろ迷惑をかけたみたいでごめんなさい。[p]

[ChangeCharaFace name="sakura" face="trouble"]
#桜良
私、寝ちゃってたんだ...[rhr]
ごめんなさいマネージャー、気をつけます。[p]

#マネージャー
いえいえ、いつも頑張っていただいていますから、[rhr]
これくらいは当然のことです！[p]

#深雪
それじゃあ私たち、そろそろ仕事の準備を始めますね。[p]

#マネージャー
何かあればすぐ言ってくださいね！[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
はい！今日もよろしくお願いします！[p]

; 場面転換
; 事務所の廊下のような背景（フリー素材）
[DeleteDispLocation]
[DispLocation text="事務所の廊下"]
[iscript]
    let html=`
	<br>` +
    `●--------------------------------------------------------------●<br>` +
    `&emsp;` + `事務所の廊下` + `<br>` + 
    `●--------------------------------------------------------------●`;
    TG.ftag.startTag("pushlog", {text:html,} );
[endscript]
; 桜良漫符：汗
[DispSweat_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
み、深雪ちゃん、これって！[p]

[FreeDispSweat]
[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（まさか、本当に企画じゃなかったなんて...）[p]

[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
一つ確認だけれど、[rhr]
桜良にも脱出ゲームの記憶はあるのよね？[p]

[ChangeCharaFace name="sakura" face="seriously"]
#桜良
もちろん！深雪ちゃんもだよね？[p]

#深雪
当然よ。忘れるわけないじゃない。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
じゃあ、二人で同じ夢を見てたってことなのかな？[p]

; 深雪漫符：びっくり
[DispSurprised_Left]
[ChangeCharaFace name="miyuki" face="surprise"]
#深雪
そう、なるのかしら。[p]

[FreeDispSurprised]
#深雪
（マネージャーが嘘をつくとは思えない。[rhr]
_　本当に私たち二人が眠ってしまって、[rhr]
_　自宅に送ってくれたのなら...）[p]

#深雪
昨日のことは、本当に私たちが一緒に見ていた夢？[p]

; 桜良漫符：キラキラ
[DispSparkle_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
わあ...！なんだかおとぎ話みたい！！[p]

[FreeDispSparkle]
[DarkenBackground]
[ChangeCharaFace name="miyuki" face="seriously"]
#深雪
（私からすれば少し不気味だけど...）[p]

#深雪
（二人とも無事だし、桜良も怖がっていない。[rhr]
_　これ以上考えても結論は出ないわね）[p]

#深雪
（不思議な夢を見た...そういうことにしましょう）[p]

[ChangeCharaFace name="miyuki" face="precious"]
#深雪
（私も桜良と過ごせて楽しかったし...）[p]

[free_filter]
[ChangeCharaFace name="miyuki" face="normal"]
#深雪
この件は私たちの間の秘密にしましょう。[p]

[ChangeCharaFace name="sakura" face="close_mouth"]
#桜良
そうだね、流石に言っても信じてもらえないよね。[p]

; 桜良漫符：音符
[DispMusicalNote_Right]
[ChangeCharaFace name="sakura" face="smile"]
#桜良
でもでも、夢の中だけど二人で部屋を探索するの、楽しかったな！[p]

[FreeDispMusicalNote]
#桜良
謎解きはほとんど深雪ちゃんに解いてもらったけど、[rhr]
ソロライブとか、衣装着て写真撮ったりとか！[p]

#桜良
あとは、二人で寝転んでお喋りしたのも！[p]

[ChangeCharaFace name="miyuki" face="trouble"]
#深雪
（そうだ、私あの部屋で桜良と一緒に...）[p]

#深雪
（思い切って気持ちを伝えたはいいものの、[rhr]
_　今思い返すと...）[p]

[chara_move name="miyuki" left="120" anim="true" time="500" wait="true"]
[wait time="100"]
[ChangeCharaFace name="miyuki" face="blush"]
#深雪
あ、うん。そうね。[p]

; 桜良漫符：はてな
[DispQuestion_Right]
[ChangeCharaFace name="sakura" face="surprise"]
#桜良
深雪ちゃん？[p]

[FreeDispQuestion]
[chara_move name="miyuki" left="80" anim="true" time="500" wait="true"]
[wait time="100"]
#深雪
なんでもないの。[p]

#深雪
（どうしてだろう、前よりもずっと、[rhr]
_　桜良の笑顔が魅力的で目を合わせられない...）[p]

#深雪
仕事！仕事があるから先に行くわね！[p]

[chara_move name="miyuki" left="-2000" anim="true" time="5000" wait="false"]
[messageFalse]
[PlayRun]
[wait time="5000"]
[messageTrue]
; 桜良漫符：はてなびっくり
[DispQS_Right]
[ChangeCharaFace name="sakura" face="amazed"]
#桜良
ええっ、深雪ちゃん！？[rhr]
どうしたの急に！[p]

[FreeDispQS]
#桜良
私何かしちゃった！？[p]

; 画面演出：スチル表示予定
#深雪
違うわ。[p]

#深雪
あなたの笑顔が今日も素敵で、[rhr]
今の私には勇気が必要なの。[p]

#深雪
だ、だから！[rhr]
また後で、会いに行ってもいいかしら？[p]

#桜良
えっ！[p]

#桜良
...うん、もちろん！[rhr]
それじゃあまた後でね！[p]
[messageFalse]
[Freelayer1]
[HideAll]
[DeleteDispLocation]

[ChangeBackGround storage="episode1/white.png" time="2000"]
[return]