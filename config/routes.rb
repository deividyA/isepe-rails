Rails.application.routes.draw do
  resources :classroom_teachers
  resources :classroom_students
  resources :classrooms
  resources :teachers
  resources :students
  resources :people
  resources :subjects
  resources :tasks
  root "site#index"
  get 'site/index', to: "site#index"

end
