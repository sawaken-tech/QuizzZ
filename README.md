# README

##　DB設計image図
![QuizzZ＿DB設計](https://user-images.githubusercontent.com/60286772/84636378-7cc79600-af2f-11ea-873e-7d6f9ce74471.png)

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true, index: true|
|mail|string|null: false, unique: true|
|password|string|null: false, unique: true|
|rate_id|iforegin||
|comment_id|foregin||
|score|foregin||

### user_Association
- has_many: questions
- has_many: comments
- has_many: rates
- has_one: score


## scoresテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|total_correct|integer||
|four_correct|integer||
|sort_correct|integer||
|description_correct|integer||
|total_score|integer||

### score_Association
- belongs_to: user


## questionsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false, index: true|
|sentence|text|null: false|
|question_format|string|null: false|
|rate_id|foregin||
|comment_id|foregin||

### question_Association
- belongs_to: user
- has_one: answer
- has_many: comments
- has_many: rates


## answersテーブル
|Column|Type|Options|
|------|----|-------|
|answer|string|null: false|
|explain|string|null: false|
|select|foregin|null: false|
|genre|string|null: false|
|question_id|reference|optional: true|

### answer_Association
- belongs_to: question
- has_one: fours
- has_one: sorts
- has_one: descriptions


## foursテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|answer_id|integer||
|image|text||

### four_Association
- belongs_to: answer


## sortsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|answer_id|integer||
|image|text||

### sort_Association
- belongs_to: answer


## descriptionsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|answer_id|integer||
|image|text||

### description_Association
- belongs_to: answer


## commentテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|question_id|integer||
|comment|text||

### comment_Association
- belongs_to: user
- belongs_to: question

## rateテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|question_id|integer||
|rate|text||

### rate_Association
- belongs_to: user
- belongs_to: question