# docker-compose Ruby on Rails + MySQL + Nuxt.js サンプル

## 起動
```
docker-compose up
```

### フロントにアクセス

```
http:/localhost:8000
```

## セットアップ

```
# DBの作成
docker-compose up -d
docker-compose exec rails bundle exec rails db:create
# DBのマイグレーション
docker-compose exec rails bundle exec rails db:migrate
# DBのseed
docker-compose exec rails bundle exec rails db:seed
```

#各アプリの変更点

## railsの変更点

```
- app/controllers/users_controller.rb
  - ユーザ一覧取得用API追加
- app/views/users/index.json.jbuilder
  - ユーザ一覧取得用APIのビュー追加
- config/routes.rb
  - ユーザ一覧取得用ルート追加
- config/environments/development.rb
  - railsホストを受け入れるように修正
  - Nuxtからのproxyアクセスはrailsという名前のホストになる
- database.yml
  - データベース情報を修正
- Gemfile
  - pry-railsを追加
```

## nuxtの変更点

```
- pages/index.vue
  - ユーザ一覧を表示するように修正
- nuxt.config.js
  - axiosのproxyの設定を追加、ポートを変更
- package.json
  - @nuxtjs/axios の追加
```
