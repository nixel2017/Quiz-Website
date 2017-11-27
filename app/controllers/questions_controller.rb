class QuestionsController < ApplicationController
    def create
        @quiz = CreateQuiz.find(params[:new_quiz_id])
        @comment = @quiz.questions.create(question_params)
        redirect_to new_quiz_path(@quiz)
    end
    
    private
        def question_params
            params.require(:question).permid(:question, :option, :optionAAnswer, :optionBAnswer, :optionCAnswer, :optionDAnswer)
        end
end
