KiranDermasurge::Application.routes.draw do
  resources :pages


  authenticated :user do
    root :to => 'static_pages#home'
  end
  
  root to: 'static_pages#home'
  
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users
  
  
  match '/about', to: 'static_pages#about'
  match '/acne_treatment', to: 'static_pages#acne_treatment'
  match '/scar_revision', to: 'static_pages#scar_revision'
  match '/micro_derma', to: 'static_pages#micro_derma'
  match '/peels', to: 'static_pages#peels'
  match '/photo_facial', to: 'static_pages#photo_facial'
  match '/mole_remove', to: 'static_pages#mole_remove'
  match '/botox', to: 'static_pages#botox'
  match '/facelift', to: 'static_pages#facelift'
  match '/laser_reface', to: 'static_pages#laser_reface'
  match '/body_shaping', to: 'static_pages#body_shaping'
  match '/mesotherapy', to: 'static_pages#mesotherapy'
  match '/vitiligo_surgical', to: 'static_pages#vitiligo_surgical'
  match '/vitiligo_medical', to: 'static_pages#vitiligo_medical'
  match '/hair_reduction', to: 'static_pages#hair_reduction'
  match '/hair_transplant', to: 'static_pages#hair_transplant'
  match '/hair_fall', to: 'static_pages#hair_fall'
  match '/breast_shaping', to: 'static_pages#breast_shaping'
  match '/nose_shape', to: 'static_pages#nose_shape'
  match '/dimple_creation', to: 'static_pages#dimple_creation'
  match '/genitalia', to: 'static_pages#genitalia'
  match '/ear', to: 'static_pages#ear'
  match '/whats_new', to: 'static_pages#whats_new'
  match '/our_doctors', to: 'static_pages#our_doctors'
  
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
