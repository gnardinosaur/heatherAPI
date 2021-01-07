Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create, :index]
      resources :recipe_books, only: :index
    end
  end 

end
