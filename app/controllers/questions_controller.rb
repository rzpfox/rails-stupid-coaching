class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @response = params[:question]

    if @response == "I am going to work right now!"
      @coach_answer = "Great!"
    elsif @response == "What time is it?"
      @coach_answer = Time.now.strftime("%H:%M")

    elsif @response.include? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
