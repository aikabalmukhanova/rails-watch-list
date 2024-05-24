Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: %i[new create show destroy] do
    resources :bookmarks, only: %i[create destroy]
  end
end
