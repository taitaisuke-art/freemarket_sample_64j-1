
# README

## users テーブル

| Column          | Type   | Options                 |
| --------------- | ------ | ----------------------- |
| nickname        | string |                         |
| email           | string | null: false,unique:true |
| first_name      | string | null: false             |
| last_name       | string | null:false              |
| first_name_kana | string | null:false              |
| last_name_kana  | string | null:false              |
| birthday        | string | null:false              |
| telephone       | string | null:false              |
| icon            | text   |                         |
| text            | text   | null:false              |

### Association

has_one:address, dependent: :destroy
has_many:messages, dependent: :destroy
has_many:items, dependent: :destroy
has_many:comments, dependent: :destroy
has_many:likes, dependent: :destroy

## address テーブル

| Column          | Type    | Options                     |
| --------------- | ------- | --------------------------- |
| first_name      | string  | null: false                 |
| last_name       | string  | null:false                  |
| first_name_kana | string  | null:false                  |
| last_name_kana  | string  | null:false                  |
| post_cord       | integer | null:false                  |
| prefectures     | string  | null:false                  |
| city            | string  | null:false                  |
| address         | string  | null:false                  |
| building        | text    |                             |
| telephone       | string  |                             |
| user_id         | integer | null:false,foreign_key:true |

### Association

belongs_to:user

## likes テーブル

| Column  | Type    | Options                     |
| ------- | ------- | --------------------------- |
| item_id | integer | null:false,foreign_key:true |
| user_id | integer | null:false,foreign_key:true |

### Association

belongs_to:item
belongs_to:user

## items テーブル

| --------------- | ------- | ---------- |
| Column | Type | Options |
| name | string | null:false |
| size | string | |
| condition | string | null:false |
| shipping_method | string | null:false |
| shipping_days | string | null:false |
| shipping_area | string | null:false |
| shipping_price | integer | null:false |
| price | integer | null:false |
| text | text | null:false |
| seller_id | integer | null:false |
| buyer_id | integer | |
| brand_id | integer | |
| category_id | references | null:false,foreign_key:true|

### Association

belongs_to:user
belongs_to:category, dependent: :destroy
has_many:item_images, dependent: :destroy
has_many:messages, dependent: :destroy
belongs_to:bland, dependent: :destroy
has_many:likes, dependent: :destroy
has_many:comments, dependent: :destroy

## categories テーブル

| Column | Type   | Options    |
| ------ | ------ | ---------- |
| name   | string | null:false |

### Association

has_many:items

## item_images テーブル

| Column  | Type    | Options                     |
| ------- | ------- | --------------------------- |
| image   | text    |                             |
| item_id | integer | null:false,foreign_key:true |

### Association

belongs_to:item

## comments テーブル

| Column  | Type    | Options                     |
| ------- | ------- | --------------------------- |
| text    | text    | null:false                  |
| item_id | integer | null:false,foreign_key:true |
| user_id | integer | null:false,foreign_key:true |

### Association

belongs_to:item
belongs_to:user

## messages テーブル

| Column    | Type    | Options                     |
| --------- | ------- | --------------------------- |
| text      | text    | null:false                  |
| item_id   | integer | null:false,foreign_key:true |
| buyer_id  | integer | null:false,foreign_key:true |
| seller_id | integer | null:false,foreign_key:true |

### Association

belongs_to:item
belongs_to:user

## brands テーブル

| Column | Type   | Options    |
| ------ | ------ | ---------- |
| name   | string | null:false |

### Association

has_many:items
has_many:genres,through: :brands_genres
has_many:brands_genres

## brands_genres テーブル

| Column   | Type    | Options                     |
| -------- | ------- | --------------------------- |
| brand_id | integer | null:false,foreign_key:true |
| genre_id | integer | null:false,foreign_key:true |

### Association

belongs_to:brand
belongs_to:genre

## genres テーブル

| Column | Type   | Options    |
| ------ | ------ | ---------- |
| name   | string | null:false |

### Association

has_many:brands,through: :brands_genres
has_many:brands_genres
