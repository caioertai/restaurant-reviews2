Rails.application.routes.draw do
  resources :reviews, only: :destroy

  # /restaurants/...
  resources :restaurants do
    # .../top
    get :top, on: :collection

    # .../:id/chef
    get :chef, on: :member

    # Don't nest member routes
    resources :reviews, only: [:new, :create]
  end
end
