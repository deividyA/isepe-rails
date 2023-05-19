Rails.application.routes.draw do
  resources :subjects
  resources :tasks
  root "site#index"
  get 'site/index', to: "site#index"

end
