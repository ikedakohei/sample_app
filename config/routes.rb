Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'tops#index'
    end
    unauthenticated :user do
      root 'devise/registrations#new'
    end
  end
end
