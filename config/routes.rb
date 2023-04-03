Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :boards
      post '/columns', to: 'columns#create'
      delete 'columns', to: 'columns#destroy'
      post '/tasks', to: 'tasks#create'
      put '/tasks', to: 'tasks#update'
      delete '/tasks', to: 'tasks#destroy'
      put '/move_tasks/:id', to: 'tasks#move'
      get '/tasks/:id', to: 'tasks#show'
      put '/order_tasks/:id', to: 'columns#update_task_orders'
      put '/columns', to: 'columns#update'
      put '/order_columns', to: 'boards#update_column_order'
      put '/labels', to: 'labels#update'
      post '/labels', to: 'labels#create'
      post '/task_labels', to: 'task_labels#create'
      get '/labels', to: 'labels#index'
      delete '/task_labels', to: 'task_labels#destroy'
      delete '/labels', to: 'labels#destroy'
    end
  end
end
