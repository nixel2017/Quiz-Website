Rails.application.routes.draw do
  get 'list/index'

  get 'quiz_list/index'

  get 'register/index'

  get 'login/index'

  get 'quiz/index'

  get 'welcome/index'

  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
