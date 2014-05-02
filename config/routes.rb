Rails.application.routes.draw do

  resources :testusers

  #root to: 'user#newuser_registration'
  
  root to: 'projects#signin'

  get "user/new_user"
  post "user/new_user"
  post "user/newuser"
  get "user/signin"
  post 'user/loggedin'
  get 'user/loggedin'
  get 'user/signout'
  delete 'user/signout'
  get 'user/contact'
  get 'user/current_Users'
  get 'user/user_Roles'
  get 'user/gadget_Inventory'

  get "projects/new_user"
  post "projects/new_user"
  post "projects/newuser"
  get "projects/signin"
  post 'projects/loggedin'
  get 'projects/signout'
  get 'projects/contact'
  get 'projects/current_Users'
  get 'projects/user_Roles'
  get 'projects/gadget_Inventory'

  #match ':controller(/:action(/:id))',:via => [:get, :post]
  #resources :user
  
  # post 'user_login_form'

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
