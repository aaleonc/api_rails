Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        collection do
          post 'create'
          get 'list'
        end
      end
      resources :authentications do
        collection do
          post 'login'
        end
      end
      resources :readings do
        collection do
          get 'read_pokemon'
        end
      end
    end
  end
end
