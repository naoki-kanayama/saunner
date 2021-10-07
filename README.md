# READ ME

# アプリ名
## Saunner


# 概要
自分の行ったサウナの写真やコメントなどを投稿する事ができます。
また、投稿する際に都道府県を登録することで、旅行に行った際に、この都道府県にはどのようなサウナが
あり、どんな雰囲気なのかを知る事ができます。

# 開発状況
## 開発環境
  * 開発言語
    * Ruby/Ruby on rails/JavaScript
  * 開発ツール
    * GitHub/Visual Studio Code
## 開発期間
  * 開発期間
    * 9/8~9/22
  * 平均作業時間
    * 1日10時間

# 本番環境
## 動作環境URL
  * https://saunner.herokuapp.com/
  * ID:admin PASS:2222

## ログイン情報

  * Email:  hoge@hoge.com
  * password: hogehoge

# 制作背景
私はサウナが行く事が趣味であり、サウナに行くために他県まで旅行したり、SNSにもよくサウナの写真をあげています。
そこで、ユーザーが、この都道府県にはどんなサウナがあるんだろうと思った時に、SNSのような形で写真を見る事が
できるようなアプリケーションを作れば、私のような人にとって便利なものであり、サウナに行った事がないという人でも
興味を持つきっかけになるのではないかと思い、今回制作に至りました。
機能自体はまだまだ増やしたいと考えており、随時実装していく予定です。

# DEMO
## ログイン画面
### こちらのページからログインする事ができます。
### 会員登録ページにもこちらのページから遷移する事ができます。
[![Image from Gyazo](https://i.gyazo.com/58c8681a42bd491a78953b36d0470278.gif)](https://gyazo.com/58c8681a42bd491a78953b36d0470278)

## 会員登録画面
### こちらのページでニックネーム、メールアドレス、パスワードを入力することで会員登録する事が可能です。プロフィール画像は任意となっています。
[![Image from Gyazo](https://i.gyazo.com/1206c228c18ee0702526b3a4b4a5bc2d.jpg)](https://gyazo.com/1206c228c18ee0702526b3a4b4a5bc2d)

## 投稿画面
### こちらのページから投稿をする事ができます。タイトル、テキスト、写真、都道府県は必須入力となっています。また、写真は最大で3枚まで投稿する事ができます。
[![Image from Gyazo](https://i.gyazo.com/1215b79ac742750f630e47fcaa7350f7.gif)](https://gyazo.com/1215b79ac742750f630e47fcaa7350f7)


## 投稿一覧画面

### こちらのページで投稿の一覧を見る事ができます。画面の左側では最近の投稿が4件表示され、もっとみるボタンを押すことでさらに表示させる事ができます。画面の右側ではいいねされた回数が多い順番で投稿が表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/1bfea1ba746eb26de41e103d1bfc4727.gif)](https://gyazo.com/1bfea1ba746eb26de41e103d1bfc4727)

## 投稿詳細画面
### 投稿一覧ページから写真、タイトルのいずれかをクリックすることで投稿詳細画面に遷移する事ができます。こちらのページでは複数投稿された写真を見る事ができ、いいね、コメントを残す事ができます。また、テキスト欄の右下でどの都道府県でいつ頃投稿されたものなのかを確認することもできます。
[![Image from Gyazo](https://i.gyazo.com/11fe8b40e7bfad2558b5ff33c0568d6f.gif)](https://gyazo.com/11fe8b40e7bfad2558b5ff33c0568d6f)

## ユーザーページ
### 投稿一覧ページ、投稿詳細ページからユーザーページに遷移する事ができます。自分のユーザーページからはプロフィール編集、他者のユーザーページからはDMを送信する事ができます。
[![Image from Gyazo](https://i.gyazo.com/1a3f2b776b960ecacb16970325498ef7.gif)](https://gyazo.com/1a3f2b776b960ecacb16970325498ef7)

## プロフィール編集ページ
### こちらのページからプロフィールを編集する事ができます。また、ユーザー登録の際にプロフィール画像を投稿していない場合はこちらから変更することもできます。
[![Image from Gyazo](https://i.gyazo.com/9fe35a650f3b23068a2a1a381eef18b2.gif)](https://gyazo.com/9fe35a650f3b23068a2a1a381eef18b2)

## DMページ
### ユーザーページからDMページに遷移する事ができます。自分のメッセージが左側、相手から送られてきたメッセージは右側に表示されます。また、メッセージがいつ頃送られたものなのかを見ることもできます。
[![Image from Gyazo](https://i.gyazo.com/d59e69a9b6c7cc5498a33ac0a0e8f0fb.gif)](https://gyazo.com/d59e69a9b6c7cc5498a33ac0a0e8f0fb)

## 投稿検索
### 投稿一覧ページから投稿検索を行う事ができます。タイトルやテキストに検索した文字が含まれている投稿を表示する事ができます。
[![Image from Gyazo](https://i.gyazo.com/ce8bc2e2c642ca3e8f10a99a7446102c.gif)](https://gyazo.com/ce8bc2e2c642ca3e8f10a99a7446102c)

## 都道府県別投稿一覧
### 都道府県別の投稿を表示する事ができます。選択した都道府県で投稿がされていない場合は表示されません。
[![Image from Gyazo](https://i.gyazo.com/f7a029b90e5de87ef9069c50a5badae6.gif)](https://gyazo.com/f7a029b90e5de87ef9069c50a5badae6)

# テーブル設計

## Usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |
| profile            | text   |                           |
| image              | string |                           |

### Association
- has_many :posts
- has_many :comments
- has_many :likes
- has_many :like_posts
- has_many :user_rooms
- has_many :chats


## Postsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| title            | string     | null: false       |
| text             | text       | null: false       |
| image            | text       | null:false        |
| prefecture       | integer    | null: false       |
| user             | references | foreign_key: true |
| likes_count      | integer    |                   |

### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :liking_users
- belongs_to: prefecture


## Commentsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| text             | text       | null: false       |
| user             | references | foreign_key: true |
| post             | references | foreign_key: true |

### Association
- belongs_to: user
- belongs_to: post


## Likesテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| user             | references | foreign_key: true |
| item             | references | foreign_key: true |

### Association
- belongs_to: user
- belongs_to: item


## Prefectureテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| prefecture_id    | integer    | null: false       |
| ancestry         | integer    | null: false       |

### Association
- has_many: posts

## Chatsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| message          | string     | null: false       |
| user             | references | foreign_key: true |
| room             | references | foreign_key: true |

### Associations 
- belongs_to: user
- belongs_to: room

## Roomsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|

### Association

- has_many :chats
- has_many :user_rooms

## User_roomsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| user             | references | foreign_key: true |
| room             | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to ;room
