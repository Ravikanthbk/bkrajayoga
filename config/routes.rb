Rails.application.routes.draw do
#  get 'user_registrations/new'
#  post 'user_registrations'
  resources :user_registrations

  namespace :admin do
    resources :venues
  end
  mount Ckeditor::Engine => '/ckeditor'
  #get 'experiences/show'

  #get 'articles/show'

  resources :articles do
    resources :comments
  end

  resources :experiences do
    resources :comments
  end

  namespace :admin do
    resources :articles do
      resources :comments
    end
  end

  namespace :admin do
    resources :experiences do
      resources :comments
    end
  end

  get 'events/courses'

  get 'events/local_activities'

  get 'events/lectures'

  namespace :admin do
    resources :events
  end

  namespace :admin do
    resources :event_types
  end

  get 'contact_us/local'

  get 'contact_us/head_quaters'

  get 'contact_us/internation'

  get 'about_us/index'

  get 'about_us/history'

  get 'about_us/founder'

  get 'about_us/leaders'

  get 'about_us/experiences'

  get 'about_us/meditation'

  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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
