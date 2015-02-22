Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :blogposts do
    resources :comments
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
      root 'welcome#index' 
   

   match "/users/sign_out", via: [:get, :delete], to: "devise/sessions#destroy"

  get '/blogposts/index.html.erb', to: 'blogposts#index'
  get '/profiles/team.html.erb', to: 'profiles#team'
  get '/profiles/Haya.html', to: 'profiles#Haya'
  get '/profiles/Amr.html', to: 'profiles#Amr'
  get '/profiles/Sandra.html', to: 'profiles#Sandra'
  get '/profiles/Marina.html', to: 'profiles#Marina'
  get '/profiles/Sara.html', to: 'profiles#Sara'
  get '/profiles/Seif.html', to: 'profiles#Seif'
  get '/profiles/Omar.html', to: 'profiles#Omar'
  get '/profiles/Christianne.html', to: 'profiles#Christianne'
  get '/customs/Contact Us.html', to: 'customs#Contact Us'
  get '/profiles/customs/Contact Us.html', to: 'customs#Contact Us'
  get '/blogposts/customs/Contact Us.html', to: 'customs#Contact Us'
  get '/Home.html', to: 'customs#Home'
  get '/profiles/customs/Home.html', to: 'customs#Home'
  get '/blogposts/customs/Home.html', to: 'customs#Home'



   # <%= link_to "sign out", destroy_user_sessions_path, :method => :delete %> views
 
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
