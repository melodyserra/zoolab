Rails.application.routes.draw do
get '/zoos', to: 'zoos#index'
post '/zoos', to: 'zoos#create'
get 'zoos/create/new', to: 'zoos#new'
get '/zoos/:id', to: 'zoos#show', as: 'zoo'
get '/zoos/:id/edit', to: 'zoos#edit', as: 'edit_zoo'
patch '/zoos/:id', to: 'zoos#update'
post '/zoos/:id', to: 'zoos#update'
delete '/zoos/:id', to: 'zoos#destroy'

get '/animals', to: 'animals#index'
post '/animals', to: 'animals#create'
get 'animals/create/new', to: 'animals#new'
get '/animals/:id', to: 'animals#show', as: 'animal'
get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
patch '/animals/:id', to: 'animals#update'
post '/animals/:id', to: 'animals#update'
delete '/animals/:id', to: 'animals#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
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
