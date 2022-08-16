Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  get 'task/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'task/:id', to: 'tasks#update'

  get 'task/:id', to: 'tasks#show', as: 'task'

  delete 'task/:id', to: 'tasks#destroy', as: 'task_delete'
  # resources :tasks
end
