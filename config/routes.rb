Objectspan::Application.routes.draw do
  
  resources :company_categorizations


  resources :item_categorizations


  resources :categories


  resources :purchase_item_feedbacks


  resources :purchase_feedbacks


  resources :company_contacts


  resources :company_countries


  resources :company_types


  resources :return_duration_types


  resources :exchange_duration_types


  resources :company_return_policies


  resources :company_category_return_policies


  resources :company_items


  resources :mail_in_rebate_statuses


  resources :purchase_item_statuses


  resources :payment_methods


  resources :purchase_items


  resources :duration_frequencies


  resources :purchases


  resources :return_categories


  resources :purchase_statuses


  resources :stores


  resources :states


  resources :countries


  resources :companies


  resources :groups


  resources :visibilities


  resources :store_types


  resources :items


  resources :makes
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  root to: 'static_pages#home'

  match '/product', to: 'static_pages#product'

  match '/contact', to: 'static_pages#contact'

  match '/signup', to: 'users#new'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
