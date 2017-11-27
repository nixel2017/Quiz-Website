class NewQuizzesController < ApplicationController
    protect_from_forgery prepend: true
 
    def new
        @quiz = CreateQuiz.new
    end
    
    def create
        @quiz = CreateQuiz.new(quiz_params)
        
     @quiz.save
     redirect_back(fallback_location: root_path)
    end
    
    def show
        @quiz = CreateQuiz.find(params[:id])
    end
    
    def index
        @quiz = CreateQuiz.all
    end
    
    
    def edit
         @quiz = CreateQuiz.find(params[:id])
    end    
        
    def update
        @quiz = CreateQuiz.find(params[:id])
        
        if @quiz.update(quiz_params)
            redirect_to new_quiz_url
        else
            render 'edit'
        end
    end
    
    def destroy
       @quiz = CreateQuiz.find(params[:id])
       @quiz.destroy
       
       redirect_to '/new_quizzes'
    end    
 

private
def quiz_params
    params.require(:new_quiz).permit(:name, :topic, :question, :option, :optionAAnswer, :optionBAnswer, :optionCAnswer, :optionDAnswer)
end


end