Rails.application.routes.draw do

  root to: 'users#index'
  get 'users/index', as: 'index'

  get 'users/show/:type/' => 'users#show', as: "show_users"

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'sales/index'

  get 'sales/show'

  get 'sales/new'

  get 'sales/create'

  get 'sales/edit'

  get 'sales/update'

  get 'sales/destroy'

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  get 'vendors/index' => 'vendors#index', as: 'index_vendors'

  get 'vendors/show/:id' => 'vendors#show', as: 'show_vendors'

  get 'vendors/new'

  get 'vendors/create'

  get 'vendors/edit' => 'vendors#edit', as: 'edit_vendors'

  get 'vendors/update'

  delete 'vendors/destroy' => 'vendors#destroy', as: 'delete_vendors'

  get 'markets/index' => 'markets#index', as: 'index_markets'

  get 'markets/show/:id/:type' => 'markets#show', as: 'show_markets'

  get 'markets/new' => 'markets#new', as: 'new_markets'

  post 'markets/create' => 'markets#create', as: 'create_markets'

  get 'markets/:id/edit' => 'markets#edit', as: 'edit_markets'

  patch 'markets/:id/update' => 'markets#update', as: 'update_markets'

  delete 'markets/destroy' => 'markets#destroy', as: 'delete_markets'

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
