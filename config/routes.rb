Rails.application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "login" => "sessions#create", :as  => "login"

  resources :categories, :only => [:index, :show]

  resources :clinic_admin do
    resources :clincs
  end

  resources :patients do
    resources :reviews
    resources :appointments
  end

  resources :doctors do
    resources :appointments
    resources :reviews, :only => [:index, :show]
    resources :patients, :only => [:index, :show]
  end 

  resources :clinics do
    resources :reviews, :only => [:index, :show]
    resources :categories
    resources :doctors, :only => [:index, :show]
    # want to be able to see the doctors appointments
  end
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
