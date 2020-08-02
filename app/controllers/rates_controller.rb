class RatesController < ApplicationController

  def create
    @rate = current_user.rates.new(question_id: params[:question_id])
    if @rate.save
      redirect_to question_path
    end
  end

  def destroy
    @rate = Rate.find_by(user_id: current_user.id, question: params[:question_id])
    if @rate.destroy
      redirect_to question_path
    end
  end

end
