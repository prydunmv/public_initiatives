Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'ideas#index'
  resources :ideas do
    resources :votes, only: [] do
      collection do
        post :like
        post :unlike
        post :dislike
        post :undislike
      end
    end
  end
end
