class RatesController < ApplicationController

  def create
    @question = Qusetion.find(params[:question_id])
    @question.iine(current_user)
  end

  def destroy
    @question = Rate.find(params[:id]).question
    @question.uniine(current_user)
  end

end
