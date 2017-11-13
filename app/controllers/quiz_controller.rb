class QuizController < ApplicationController
    def new
        
    end
    
    def create
        @quiz = Quiz.new(Quiz_params)
        
        
        if @quiz.save
           
            redirect_to @quiz
        else
            render 'new'
        end
    end
    
    def show
        @quiz = Quiz.find(params[:id])
    end
    
    def index
        @quiz = Quiz.all
    end
    
    def new
       @quiz = Quiz.new 
    end
    
    def edit
        @quiz = Quiz.find(params[:id])
    end    
        
    def update
        @quiz = Quiz.find(params[:id])
        if @quiz.update(Quiz_params)
            redirect_to @quiz
        else
            render 'edit'
        end
    end
    
    def destroy
       @quiz = Quiz.find(params[:id])
       @quiz.destroy
       
       redirect_to Quiz_path
    end    
end

private
def Quiz_params
    params.require(:Quiz).permit(:title, :text)
end

