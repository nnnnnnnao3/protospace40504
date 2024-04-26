# テーブル設計

## users テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ----------------------- |
| email              | string | null: false,unique:true |
| encrypted_password | string | null: false             |
| name               | string | null: false             |
| profile            | text   | null: false             |
| position           | text   | null: false             |

### Association

- has_many :comments
- has_many :prototype

## comments　テーブル

| Column    | Type       | Option                        |
| --------- | ---------- | ----------------------------- |
| content   | text       | null: false                   |
| prototype | references | null: false,foreign_kye: true |
| user      | references | null: false,foreign_kye: true |

### Association

- belongs_to :user
- belongs_to :prototype

## prototype　テーブル

| Column     | Type       | Option                        |
| ---------- | ---------- | ----------------------------- |
| title      | string     | null: false                   |
| catch_copy | text       | null: false                   |
| concept    | text       | null: false |
| user       | references | null: false,foreign_kye: true |

### Association

- has_many :comments
- belongs_to :user