class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(string)
    question_work = 'I am going to work'
    answer_work = 'Great!'
    answer_question = 'Silly question, get dressed and go to work!'
    answer_else = 'I don\'t care, get dressed and go to work!'

    if is_question?(string)
      answer_question
    elsif string == question_work
      answer_work
    else
      answer_else
    end
  end

  def is_question?(string)
    if string.nil?
      false
    else
      string.end_with?('?')
    end
  end
end
