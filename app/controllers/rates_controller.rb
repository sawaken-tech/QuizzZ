class RatesController < ApplicationController

  def create
    user = current_user
    question = Question.find(params[:question_id])
    if Rate.create(user_id: user.id, question_id: question.id)
      redirect_to result_question_path(question)
    else
      redirect_to root_url
    end
  end


  def destroy
    user = current_user
    question = Question.find(params[:question_id])
    if rate = Rate.find_by(user_id: user.id, question_id: question.id)
      rate.delete
      redirect_to result_question_path(question)
    else
      redirect_to root_url
    end
  end

end
