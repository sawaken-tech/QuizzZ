class ChallengeController < ApplicationController

  # 試験モード実装予定
  def test
    @shuffle = Question.all.shuffle.take(10)
  end

end
