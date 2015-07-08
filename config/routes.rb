Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #"/"
  root 'welcome#index'

  resources :pets do
    # "/pets/5/preview"
    # member do
    #   get :preview
    # end
    # "/pets/destroy?user_id=5"
    # collection do
    #   delete :epic_destroy, as: 'destroy'
    # end
  end
  # get "pets" => 'pets#index'
  # get "pets/new" => 'pets#new'
  # get "pets/:id/edit" => 'pets#edit'
  # get "pets/:id" => 'pets#show'
  # post "pets" => 'pets#create'
  # patch "pets/:id" => 'pets#update'
  # delete "pets/:id" => 'pets#destroy'

  resources :categories

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
