Rails.application.routes.draw do
#   namespace :api do
#     namespace :v1 do
#       get 'users/index'
#       get 'users/create'
#     end
#   end
#   namespace :api do
#     namespace :v1 do
#       get 'melodies/index'
#       get 'melodies/create'
#     end
#   end
    namespace :api do
        namespace :v1 do
          resources :melodies, only: [:index, :create, :show]
        end
    end

    namespace :api do
        namespace :v1 do
          resources :users, only: [:index, :create]
        end
    end
end
