Rails.application.routes.draw do
  devise_for :users

  resources :feeds, except: %i[edit update] do
  end

  root "feeds#index"
end
