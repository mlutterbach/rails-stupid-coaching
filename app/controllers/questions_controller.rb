class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if @ask.end_with?('?')
      @answer = @answer[1]
    elsif @ask.end_with?('!')
      @answer = @answer[0]
    else
      @answer = @answer[2]
    end
  end
end
