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

### Association

- belongs_to :user
- belongs_to ;room
