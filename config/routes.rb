Rails.application.routes.draw do

  resources :users
  resources :resumes, only:[:index, :new, :create, :destroy]

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
