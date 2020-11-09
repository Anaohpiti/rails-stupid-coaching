class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present?
      @question = params[:question]
    else
      @question = "Pose une question !"
    end

    if @question == "I am going to work"
      # si la question c'est "I am going to work" ==> afficher  Great!
      @answer = "Great!"
      # si la question se termine par ? ==> afficher  Silly question, get dressed and go to work!.
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
      # pour les autres questions ==> afficher I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
