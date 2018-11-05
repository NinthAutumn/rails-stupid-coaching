class QuestionsController < ApplicationController

  ANSWER = {
    1 => "Great!",
    2 => "Silly question, get dressed and go to work!",
    3 => "I don't care, get dressed and go to work!"
  }


  def ask

  end

  def answer
    @question = params[:question]
    all_answer = ANSWER
    if @question.include? "?"
      @answer = all_answer[2]
    elsif @question == "I am going to work"
      @answer = all_answer[1]
    else
      @answer = all_answer[3]
    end
  end
end
