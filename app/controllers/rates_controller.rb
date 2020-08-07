class RatesController < ApplicationController

  def create
    @rate = Rate.new(user_id: @current_user_id, question_id: params[:question_id])
    @rate.save
    redirect_to("/questions/#{params[:question_id]}")
  end

  def destroy
    @rate = Rate.find_by(user_id: @current_user.id, question_id: params[:question_id])
    @rate.destroy
    redirect_to("/questions/#{params[:question_id]}")
  end

end
