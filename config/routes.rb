Rails.application.routes.draw do
  get 'task/new'

  get 'projects/index'
  resources :projects do
     resources :tasks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
