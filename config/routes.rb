Rails.application.routes.draw do
  resources :hitcher_likes
  resources :driver_likes
  resources :takes
  resources :rides
  get 'sessions/new'
  # list favoriate users
  get 'list1' => 'users#list'
  get 'welcome/index'
  root 'welcome#index'
  get 'listdriverlike' => 'users#listdriver'
  get 'listhitcherlike' => 'users#listhitcher'

  
  # list user's information to other users
  get 'userprofile' => 'users#userprofile'


  get 'hitchers/index'

  get 'drivers/index'

  get 'signup' => 'users#new'
  get 'login'  => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
  post 'login' => 'sessions#create' 
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'drivers#index'
  resource :welcome 
     resources :drivers
     resources :hitchers
  
    post '/drivers/index', :controller => 'drivers', :action => "index"
    
    post '/hitchers/index', :controller => 'hitchers', :action => "index"

    post 'users/index', :controller => 'users', :action => "index"    

    resources :driver do
        resources :drivercomments
    end
    
    resources :hitcher do
        resources :hitchercomments
    end

    resources :user do
        resources :usercomments
    end
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
