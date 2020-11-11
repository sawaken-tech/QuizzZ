class ChallengeController < ApplicationController

  # 試験モード実装予定
  def test
  end

  def play
    @shuffle = Question.all.shuffle.take(10)
  end

  def score
  end

end
