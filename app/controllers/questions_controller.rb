class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:request]

    @answer = if @question == @question.upcase && @question != "I AM GOING TO WORK RIGHT NOW!"
      'I can feel your motivation!'
    else
      if @question.include?('?')
        'Silly question, get dressed and go to work!'
      elsif @question.downcase == 'i am going to work right now!'
        ''
      else
        "I don't care, get dressed and go to work!"
      end
    end
  end
end
