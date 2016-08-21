Rails.application.routes.draw do
  get 'users/profile' => 'users#show', as: 'user_profile'

  get 'books/index'

  get 'books/show'

  root 'pages#index'

  devise_for :users
  get 'regisrates' => 'regisrates#new', as: 'regisrates_new'
  post 'regisrates/create' => 'regisrates#create', as: 'regisrates_create'
  get 'search/books' => 'books#search', as: 'search_books'
  get 'books/:id' => 'books#show', as: 'show_books'
  get 'books' => 'books#index', as: 'index_books'
  get 'regisrate_results' => 'books#regisrate_results', as: 'regisrate_results'
  post 'reviews/create' => 'reviews#create', as: 'create_reviews'
  post 'borrow/create' => 'borrows#create', as: 'create_borrows'
  patch 'books/return' => 'borrows#return_book', as: 'return_books'
  patch 'users/return' => 'borrows#return_book_from_user_page', as: 'user_return_books'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".'

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
