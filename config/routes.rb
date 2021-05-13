Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:show, :destroy] do
    resources :plant_tags, only: [:create]
  end
    resources :plant_tags, only: [:destroy]
end
