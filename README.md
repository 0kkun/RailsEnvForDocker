
https://qiita.com/azul915/items/5b7063cbc80192343fc0

# 起動 Rails new

```
docker-compose run web rails new . --force --database=mysql --skip-bundle
```

# config/database.ymlを書き換える

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: password # docker-compose.ymlのMYSQL_ROOT_PASSWORD
  host: db # docker-compose.ymlのservice名
```

# コンテナの起動


```
# コンテナをビルド
docker-compose build
```

```
# -dオプションをつけてバックグラウンド実行するとこの後新しいシェルを立ち上げる必要がなくなる
docker-compose up
```

# データベース作成

```
docker-compose run web rake db:create
```

# ブラウザでlocalhost:3000にアクセスしてサーバーの起動を確認

# サーバーを止める

```
docker-compose down
```

# Dockerfileやdocker-compose.ymlの変更を反映、railsサーバーを再起動

```
docker-compose up --build
```

# bundle installなどのコマンドを実行したい

```
docker-compose run web bundle install
```