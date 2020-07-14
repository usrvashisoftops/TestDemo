class AnswersController < ApplicationController
  def question_specific_answers
    @answers = Answer.where(question_id: params[:question_id])
    respond_to do |format|
      format.json @answers
    end
  end

  def user_specific_answers
    @answers = Question.where(user_id: params[:user_id])
    respond_to do |format|
      format.json @answers
    end
  end
end
