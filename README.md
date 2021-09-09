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

### Association
- has_many :posts
- has_many :comments
- has_many :likes


## Postsテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| title            | string     | null: false       |
| text             | text       | null: false       |
| prefecture       | integer    | null: false       |
| user             | references | foreign_key: true |
| likes_count      | integer    |                   |

### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- belongs_to: place


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


## Placesテーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| prefecture_id    | integer    | null: false       |
| ancestry         | integer    | null: false       |

### Association
- has_many: posts