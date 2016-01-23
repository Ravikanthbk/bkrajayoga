Rails.application.routes.draw do

#  resources :photos, only: [:new, :create, :index, :destroy]

  namespace :admin do
  resources :photos
  end

#  get 'user_registrations/new'
#  post 'user_registrations'
  resources :user_registrations

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will 
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

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

  get 'events/events_calendar'
  get 'events/all'
  get 'events/courses'
  get 'events/local_activities'
  get 'events/lectures'
  get 'events/workshops'
  get 'events/seminars'

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
