class QuestionsController < ApplicationController

  before_action :set_question, only: [:slove, :result, :edit]

  # 問題一覧表示
  def index
    @questions = Question.all
  end

  # 問題解く
  def slove
  end

  # 問題結果
  def result
  end

  # 問題作成
  def new
    @question = Question.new
  end

  # 問題作成
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

  # 問題作成
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

  # 作成問題一覧
  def index_edit
  end

  # 問題編集 
  def edit
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
      :answer_image,
      :explain,
      :genre,
      :question_id,
      :four_select1,
      :four_image1,
      :four_select2,
      :four_image2,
      :four_select3,
      :four_image3,
      :sort_select1,
      :sort_image1,
      :sort_select2,
      :sort_image2,
      :sort_select3,
      :sort_image3,
      :description_image
      )
  end

  def set_question
    @question = Question.find(params[:id])
  end


end