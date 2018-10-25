Rails.application.routes.draw do

  # resources :doctors, only: [:index, :show]
  # resources :patients, only: [:index, :show]
  # resources :appointments, except: [:index]

  root 'doctors#index'

  get 'appointments/new', to: 'appointments#new', as: 'new_appointment'

  post 'appointments', to: 'appointments#create'

  get 'appointments/:id', to:'appointments#show', as: 'appointment'

  get 'appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'

  patch 'appointments/:id', to: 'appointments#update'

  delete 'appointments/:id', to: 'appointments#destroy'

  get 'patients', to: 'patients#index'

  get 'patients/:id', to: 'patients#show', as: 'patient'

  get 'doctors', to: 'doctors#index'

  get 'doctors/:id', to: 'doctors#show', as: 'doctor'

#   Prefix Verb   URI Pattern                      Controller#Action
#     root GET    /                                appointments#index
# appointments GET    /appointments(.:format)          appointments#index
# new_appointment GET    /appointments/new(.:format)      appointments#new
#          POST   /appointments(.:format)          appointments#create
# appointment GET    /appointments/:id(.:format)      appointments#show
# edit_appointment GET    /appointments/:id/edit(.:format) appointments#edit
#          PATCH  /appointments/:id(.:format)      appointments#update
#          DELETE /appointments/:id(.:format)      appointments#destroy
# patients GET    /patients(.:format)              patients#index
#  patient GET    /patients/:id(.:format)          patients#show
#  doctors GET    /doctors(.:format)               doctors#index
#   doctor GET    /doctors/:id(.:format)           doctors#show

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
