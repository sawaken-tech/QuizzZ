class MypagesController < ApplicationController

  before_action :set_user, :set_question

  def show
  end

  def edit_profile
  end

  def update_profile
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_question
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:id])
  end

end
