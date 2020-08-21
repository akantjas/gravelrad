Rails.application.routes.draw do
  root to: 'bikes#index'
  
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end

  resources :bikes do
    collection do
      get '/compare', to: 'bikes#compare', as: :compare
    end
  end 
end
