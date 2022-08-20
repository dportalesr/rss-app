Rails.application.routes.draw do
  resources :feeds, except: %i[edit update] do
  end

  root "feeds#index"
end
