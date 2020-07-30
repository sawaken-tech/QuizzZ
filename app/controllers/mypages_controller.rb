class MypagesController < ApplicationController

  before_action :set_user, :set_question

  def show
  end

  def edit_profile
  end

  def update_profile
    if @user.update(user_params)
      redirect_to "/mypages/#{current_user.id}"
    else
      render edit_profile_mypage_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_question
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:id])
  end

end
