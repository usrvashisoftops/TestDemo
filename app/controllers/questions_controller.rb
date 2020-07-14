class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    respond_to do |format|
      format.json @questions
    end
  end

  def user_specific_questions
    @questions = Question.where(user_id: params[:user_id])
    respond_to do |format|
      format.json @questions
    end
  end
end
