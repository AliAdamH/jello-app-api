Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :boards 
      put '/tasks/:id', to: 'tasks#move'
      put '/order_tasks/:id', to: "columns#update_task_orders"
      put '/order_columns/:id', to: "boards#update_column_order"
    end
  end
end
