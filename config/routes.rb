Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :spaces do
    resources :bookings, only: %i[create]
  end
    resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
      collection do
        get :hostings
      end
    end
    patch '/confirm', to: "bookings#confirm"
end
