# README

# QuizzZ
![スクリーンショット 2020-07-07 18 44 48](https://user-images.githubusercontent.com/60286772/86763397-42f73480-c082-11ea-897c-5c1bfb0f5c97.png)

http://18.177.238.160/

#### テストアカウント
1  
name: test001  
mail: question-001-test@gmail.com  
pass: quiz001  

2  
name: test002  
mail: question-002-test@gmail.com  
pass: quiz002  


## 概要
> 自分で問題を作り、他の人が作った問題を解けるアプリケーション  
>
> 自身が学んだことをアウトプットし、他の人が作った問題を解いてインプットする場  
>
> 同じ学習をしている仲間を見つけて、その仲間とつながれるプラットフォーム  

## 制作背景
> 学んだことのアウトプットとして、手軽に問題を作成していろいろな人に解いてもらう場ができたらおもしろいと思い制作した。  
> 何かを身に着けたいと思って学習を始めた時、インプットは個人でできるが、
> インプットしたことをアウトプットする場はなかなか見つからない。  
> 学生時代にテスト前、友人同士で問題を出し合って知識を定着していたイメージで、
> このアプリケーションを通して、同じ学習をしている仲間同士で問題を作って解き合う場になったら
> 学習意欲がわき、継続して学習に取り書かれるのではないかと思い、制作に至る

## 実装予定の内容
- 選択問題、記述問題、並び替え問題が作れる、解ける(現在は４択問題のみ)
- 問題をジャンルごとで分ける
- 個人のスコアのようなものをつけれるようにする
- 問題と作成者に対して評価、コメントができる


## DB設計image図
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