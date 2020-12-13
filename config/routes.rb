Rails.application.routes.draw do
  root to: "tasks#index"
  # root "tasks#index" でもOK
  post "callback", to: "line_bot#callback"
  resources :tasks
  # resources :line_bot

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
