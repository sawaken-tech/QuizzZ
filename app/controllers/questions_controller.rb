class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    unless @question.valid?
      flash.now[:alert] = @question.errors.messages
      render :new and return
    end
    session["question.data"] = {question: @question.attributes}
    @answer = @question.build_answer
    render :new_answer
  end

  def create_answer
    
    @question = Question.new(session["question.data"]["question"])
    @answer = Answer.new(answer_params)
    unless @answer.valid?
      flash.now[:alert] = @answer.errors.messages
      render :new_answer and return
    end
    @question.build_answer(@answer.attributes)
    @question.save
    session["question.data"].clear

  end

  private
  def question_params
    params.require(:question).permit(
      :title,
      :sentence,
      :question_format
    ).merge(user_id: current_user.id)
  end

  def answer_params
    params.require(:answer).permit(
      :answer,
      :explain,
      :genre,
      :question_id
      )
  end
end