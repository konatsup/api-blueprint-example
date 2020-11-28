# 環境構築
install:
	npm install -g aglio --unsafe-perm
	npm install -g drakov@1.0.4 

# モック(:3000)のサーバを立てる
up:
	drakov -f input.apib --public -p 3000

# ドキュメントを更新する
convert:
	aglio --theme-variables flatly -i input.apib -o public/index.html

# 生成されたHTMLをブラウザで開く
open:
	open ./public/index.html
