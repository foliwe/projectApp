Rails.application.routes.draw do
  get 'task/new'

  get 'projects/index'

  root 'projects#index'

  resources :projects 
  resources :tasks
  resources :expenses
  resources :invoices
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
