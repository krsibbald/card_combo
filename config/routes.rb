Rails.application.routes.draw do


  resources :card_spots
  resources :combos do
    collection do
      get :export
    end
  end
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cards#index'
end
