class RatesController < ApplicationController

  def create
    @question = Qusetion.find(params[:question_id])
    unless @question.iine?(current_user)
      @question.iine(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @question = Rate.find(params[:id]).question
    if @question.iine?(current_user) 
      @question.uniine(current_user)
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

end
