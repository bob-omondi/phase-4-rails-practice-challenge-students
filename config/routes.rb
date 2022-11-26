Rails.application.routes.draw do
  resources :instructors, only: [:show] do
    # nested resource for students
    resources :students, only: [:show, :index]
  end 
  resources :instructors, only: [:show, :index, :create, :update, :destroy]

  resources :students, only: [:show, :index, :create, :update, :destroy]
end
