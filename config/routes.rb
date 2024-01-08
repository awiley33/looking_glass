Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :cards, only: [:index, :show]

      get 'spreads/one_card', to: 'spreads#one_card'
      get 'spreads/three_card', to: 'spreads#three_card'
    end
  end
end
