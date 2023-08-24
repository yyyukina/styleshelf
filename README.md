# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false ,unique: true |
| encrypted_password | string | null: false               |

### Association
has_many :closets


## closets

| Column             | Type      | Options  |
| ------------------ | --------- | -------- |
| category_id        | integer   |          |
| size_id            | integer   |          |
| color_id           | integer   |          |
| season_id          | integer   |          |
| brand              | string   |          |
| memo               |  text     |          |
| user               | references| null: false,foreign_key: true |

### Association
belongs_to :user


## styles

| Column             | Type      | Options     |
| ------------------ | ------ ---| ----------- |
| title              | string    |             |
| season_id          | integer   |             |
| memo               | text      |             |
| item               | references| null: false,foreign_key: true |

### Association


## wish_lists

| Column             | Type      | Options     |
| ------------------ | ------ ---| ----------- |
| category_id        | integer   | null: false |
| item_name          | string    | null: false |
| memo               | text      |             |

### Association

