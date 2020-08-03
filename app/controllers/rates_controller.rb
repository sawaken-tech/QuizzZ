class RatesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_rate

  def create
    user = current_user
    question = Question.find(params[:question_id])
    rate = Rate.create(user_id: user.id, question_id: question.id)
  end

  def destroy
    user = current_user
    question = Question.find(params[:question_id])
    rate = Rate.find_by(user_id: user.id, question_id: question.id)
    rate.delete
  end


  private

  def set_like
    @question = Question.find(params[:question_id])
  end



end
