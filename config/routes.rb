Rails.application.routes.draw do
  
  root to: "tasks#all"
  
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'

  # hopefully all of the routing is done by here 

  resources :tasks do
    member do
      get:delete
    end
    collection do
      get :export
    end
  end

  resources :categories do
    member do
      get :delete
    end
    collection do
      get :export
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


