Rails.application.routes.draw do
  devise_for :users

  resources :bikes do
    collection do
      get '/compare', to: 'bikes#compare', as: :compare
    end
  end 
end
