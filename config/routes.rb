Rails.application.routes.draw do
  get 'new_quiz/index'

  get 'list/index'

  get 'quiz_list/index'

  get 'register/index'

  get 'login/index'

  get 'quiz/index'

  get 'welcome/index'

  resources :new_quizzes do
    resources :questions
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
