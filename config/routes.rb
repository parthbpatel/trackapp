Rails.application.routes.draw do

  resources :projects, only: [:index, :show, :create, :destroy]

  resources :tasks, only: [:create, :destroy] do
    member do
      get :start, :stop, :finish
    end
  end

  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
