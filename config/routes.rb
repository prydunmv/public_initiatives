Rails.application.routes.draw do
  devise_for :admin_accounts, {
    class_name: 'Account', controllers: ActiveAdmin::Devise.controllers
      .merge(registrations: 'registrations')
  }.merge(ActiveAdmin::Devise.config.except(:controllers))

  devise_for :accounts
  ActiveAdmin.routes(self)

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
    resources :initiator_proposals, only: [:new, :create, :edit, :update, :destroy] do
      resources :votes, only: [] do
        collection do
          post :vote_up
          post :vote_un
        end
      end
    end
  end
  resources :initiatives, only: [:index, :show, :destroy]
  resources :profiles, only: [:edit, :index, :update]
end
