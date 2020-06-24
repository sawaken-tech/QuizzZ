# README

##　DB設計image図
![db設計](https://user-images.githubusercontent.com/60286772/85498404-94cba380-b61a-11ea-80fc-de40174ccbdc.png)

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
|answer_image|text||
|explain|string|null: false|
|genre|string|null: false|
|question_id|reference|optional: true|
|four_select1|string||
|four_image1|text||
|four_select2|string||
|four_image2|text||
|four_select3|string||
|four_image3|text||
|sort_select1|string||
|sort_image1|text||
|sort_select2|string||
|sort_image2|text||
|sort_select3|string||
|sort_image3|text||
|description_image|text||

### answer_Association
- belongs_to: question


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