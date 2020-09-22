# テーブル設計

## User
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |
| email | string | null: false |
| password | string | null: false |
| admin | boolean  | null: false, default: false |


## Pazzle
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |
| image | string | null: false |

## Association
- has_many :shapes, through: :pazzle_shapes
- has_many :pazzle_shapes


## Shape
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |

## Association
- has_many :pazzles, through: :pazzle_shapes
- has_many :pazzle_shapes


## Kanji
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |
| correct_reading | string | null: false |
| wrong_reading1 | string | null: false |
| wrong_reading2 | string | null: false |
| wrong_reading3 | string | null: false |
| hen_id | integer | null: false |


## PurchasingGame
| Column | type | Options |
| ------ | ---- | ------- |
| genre_id | integer | null: false |
| ten_thousand_yen | integer | null: false |
| thousand_yen | integer | null: false |
| hundred_yen | integer | null: false |
| fifty_yen | integer | null: false |
| ten_yen | integer | null: false |
| five_yen | integer | null: false |
| one_yen | integer | null: false |


## Association
- has_many :products

## Product
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |
| price | integer | null: false |
| image | string | null: false |
| purchasing_game | references | foreign_key: true, null: false |

## Association
- belongs_to :purchasing_game

## Science
| Column | type | Options |
| ------ | ---- | ------- |
| name | string | null: false |
| genre_id | integer | null: false |

