Rails.application.routes.draw do
  devise_for :users

  root to: 'bikes#index'

  resources :bikes do
    collection do
      get '/compare', to: 'bikes#compare', as: :compare
    end
  end 
end
