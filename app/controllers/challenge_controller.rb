class ChallengeController < ApplicationController

  # 試験モード実装予定
  def test
    @rand = Question.where( 'id >= ?', rand(Question.first.id..Question.last.id) ).first
  end

end
