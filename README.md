# furima-40159のER図

## usersテーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| email               | string     | null: false,                     |
| encrypted_password  | string     | null: false,                     |
| nickname            | string     | null: false                      |
| first_name          | string     | null: false                      |
| family_name         | string     | null: false                      |
| family_name_kana    | string     | null: false                      |
| first_name_kana     | string     | null: false                      |
| birthday            | date       | null: false                      |
- has_many :items
- has_many :users_transacts

## addressesテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| postal_code         | string           | null: false                      |
| prefecture_id       | integer          | null: false                      |
| city                | string           | null: false                      |
| address             | string           | null: false                      |
| building_name       | string           |                                  |
| user_transact       | references       | null:false, foreign_key: true    |
- belongs_to :user_transact

## users_transactsテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| user                | references       | null: false, foreign_key: true   |
| item                | references       | null: false, foreign_key: true   |
- belongs_to :user
- has_one :address
- belongs_to :item

## itemsテーブル
| Column              | Type           | Options                          |
| ------------------- | ----------     | -------------------------------- |
| name                | string         | null: false                      |
| description         | text           | null: false,                     |
| price               | integer        | null: false,                     |
| user                | references     | null: false, foreign_ key: true  |
| item_condition_id   | integer        | null: false,                     |
| delivery_charge_id  | integer        | null: false,                     |
| delivery_day_id     | integer        | null: false,                     |
| area_id             | integer        | null: false,                     |
| category_id         | integer        | null: false,                     |
- belongs_to :user
- has_one :user_transact