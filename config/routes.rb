Rails.application.routes.draw do
  
  namespace :app do
    namespace :controllers do
      namespace :api do
        get 'v1/recipes'
      end
    end
  end
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create, :index]
    end
  end 

end
