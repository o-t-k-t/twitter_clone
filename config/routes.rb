Rails.application.routes.draw do
  root to: 'top#index'

  resources :tweets, except: :show do
    collection do
      post :confirm
    end
  end
end
