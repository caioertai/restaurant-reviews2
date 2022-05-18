Rails.application.routes.draw do

  # /restaurants/...
  resources :restaurants do
    # .../top
    get :top, on: :collection
    # For multiple
    # collection do
    #   get "top"
    #   get "search"
    #   get "worst"
    # end

    # .../:id/chef
    get :chef, on: :member
    # For multiple
    # member do
    #   get "top"
    #   get "search"
    #   get "worst"
    # end

  end
end
