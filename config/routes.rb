Rails.application.routes.draw do
  root to: 'animes#index'
  resources :animes
  resources :holy_grounds

end
