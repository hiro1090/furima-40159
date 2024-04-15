# README

## usersテーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| email               | string     | null: false, foreign_key: true   |
| encrypted_password  | string     | null: false, foreign_key: true   |
| nickname            | string     | null: false                      |
| first_name          | string     | null: false                      |
| family_name         | string     | null: false                      |
| family_name_kana    | string     | null: false                      |
| first_name_kana     | string     | null: false                      |
| profile             | text       |                                  |
| birthday            | string     | null: false                      |
## addressesテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| postal_code         | string           | null: false                      |
| prefecture_id       | string           | null: false                      |
| city                | string           | null: false                      |
| address             | string           | null: false                      |
| building_name       | string           |                                  |
| user_id             | references       | null:false, foreign_key: true    |

## users_transactsテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| users_id     | references | null: false, foreign_key: true                |
| transacts_id | references | null: false, foreign_key: true                |
## transactsテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| evaluate   | string     | null: false                                     |
| confirm    | string     | null: false                                     |
| comment    | string     | null: false                                     |
| seller_id  | references | null:false. foreign_key: true                   |
| buyer_id   | references | null:false. foreign_key: true                   |
| item_id    | references | null:false. foreign_key: true                   |
## itemsテーブル
| Column              | Type           | Options                          |
| ------------------- | ----------     | -------------------------------- |
| name                | string         | null: false                      |
| description         | text           | null: false, foreign_key: true   |
| price               | integrate      | null: false, foreign_key: true   |
| user_id             | references     | null: false, foreign_ key: true  |
| item_condition      | references     | null: false, foreign_ key: true  |
| size_id             | references     | null: false                      |
| delivery_change_id  | references     | null: false, foreign_ key: true  |
| delivery_day_id     | references     | null: false, foreign_ key: true  |
| delivery_way_id     | references     | null: false, foreign_ key: true  |
| area                | references     | null: false, foreign_ key: true  |
| category            | references     | null: false, foreign_ key: true  |