Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get "graph/:file"     =>  "graph#show"
  get "live"            =>  "live#index"

end
