Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes do
    collection do
      get '/compare', to: 'bikes#compare', as: :compare
    end
  end
end
