Rails.application.routes.draw do
  devise_for :users
  resources :jobs

  root 'static_pages#landing_page'
end
