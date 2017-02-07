Rails.application.routes.draw do
  resources :users
    resources :germinations
    resources :spek_selections
    resources :irb_selections
    resources :three_offsprings
    resources :two_offsprings 
    resources :one_offsprings
    resources :seeds
    resources :crossings
    resources :colors

    resources :genetic_banks do
        resources :genetic_bank_pictures
    end

    #    rutas para seleccionar el color de una variedad mediante ajax
    get 'selectColorTwoOffspring/:id' => 'two_offsprings#selectColor'
    get 'selectColorThreeOffspring/:id' => 'three_offsprings#selectColor'
    get 'selectColorIrbSelections/:id' => 'irb_selections#selectColor'
    
    get 'getCrossing/:id' => 'crossings#getCrossing'
    get 'getSeed/:id' => 'seeds#getSeed'
    
    get 'numSeedsNumRepeat' => 'seeds#numSeedsNumRepeat'
    get 'numSeedsCodeCross' => 'seeds#numSeedsCodeCross'
    
    get 'numGerminationsNumRepeat' => 'germinations#numGerminationsNumRepeat'
    get 'numGerminationsCodeCross' => 'germinations#numGerminationsCodeCross'
    
    # ruta para conocer padre y madre de un codigo
    get 'codeCrossParents/:id' => 'crossings#codeCrossParents'

    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"
    root 'genetic_banks#index'

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
