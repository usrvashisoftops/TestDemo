Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :users, only: [:]
  get '/answers/user_specific_answers', to: 'answers#user_specific_answers'
  get '/answers/question_specific_answers', to: 'answers#question_specific_answers'
  resource :questions, only: [:index]
  get '/questions/user_specific_questions', to: 'questions#user_specific_questions'
end
