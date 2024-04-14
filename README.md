# README

## usersテーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| email               | string     | null: false, foreign_key: unique |
| password            | string     | null: false, foreign_key: true   |
| nickname            | string     | null: false                      |
| image               | string     |                                  |
| first_name          | string     | null: false                      |
| family_name         | string     | null: false                      |
| introduction        | text       |                                  |

## addressテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| postal_code         | integrate        | null: false                      |
| prefecture          | string           | null: false                      |
| city                | string           | null: false                      |
| address             | integrate        | null: false                      |
| building_name       | string           |                                  |
| user                | references       | null:false, foreign_key: true    |

## itemsテーブル
| Column              | Type           | Options                          |
| ------------------- | ----------     | -------------------------------- |
| name                | string         | null: false                      |
| description         | text           | null: false, foreign_key: true   |
| price               | integrate      | null: false, foreign_key: true   |
| user                | references     | null: false, foreign_ key: true  |