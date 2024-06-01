# ゲーム名
novel-escape(仮)
<br><br>

# ドキュメント
- [シナリオ管理（Notion）](https://www.notion.so/be497e282b5d433f92e89066e61487a7?pvs=4)
- [ギミック管理（Miro）](https://miro.com/app/board/uXjVMu73o-0=/?share_link_id=43222203281)
- [制作スケジュール（GoogleDrive）](https://docs.google.com/spreadsheets/d/1QQv_C-i48v1J4FhACiTby4wgs-4jLAomFaia72DbZKg/edit#gid=977611269)
<br>

# 開発環境
- Visual Studio Code
- TyranoScript syntax（拡張機能）
- TyranoStudio V120
<br>

# 使用言語
TyranoScript V5
<br><br>

# プラグイン
- ローディング画面表示プラグイン（https://mamecho.booth.pm/items/3011729）
- ゲームUIセット vol.16（https://ko10panda.booth.pm/items/3969477）
<br>

# ブランチ管理
Git-Flow準拠とする。

- [master] ブランチと [develop] ブランチが常設されている状態
- [hotfix] ブランチと [feature] ブランチを適宜作成する
- [master]はリリースしたソースのみを集約するブランチ
- [develop]はリリース前の機能追加を積み上げる開発用ブランチ、リリースタイミングで[master]にマージ
- [hotfix]はバグ対応などの緊急作業用ブランチ、[master]から切って[master]と[develop]にマージ
- [feature]は作業用のブランチ、[develop]から切って[develop]にマージ、 マージ後に削除
<br>

# コミットコメントルール
コミットコメントは "[GitHubの課題キー]:[コミットコメント]" とすること。<br>
（例）#50:アイテム選択時のクリック判定をマクロ化
<br><br>

# 開発用デプロイ
[https://develop.t-ishimaru.jp](URL "http://develop.t-ishimaru.jp")