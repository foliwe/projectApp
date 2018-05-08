Rails.application.routes.draw do
  root to: 'dashboard#index'

<<<<<<< HEAD
  resources :employees
  resources :invoices
  resources :projects do
     resources :tasks
     resources :expenses

  end
=======
  get 'projects/index'

  root 'projects#index'

  resources :projects 
  resources :tasks
  resources :expenses
  resources :invoices
  
>>>>>>> 2ccbb8628ee8fbf8966c0af8515bdc9f52cc3d46
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
