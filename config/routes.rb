Rails.application.routes.draw do
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end

  root to: 'bikes#index'

  resources :bikes do
    collection do
      get '/compare', to: 'bikes#compare', as: :compare
    end
  end 
end
