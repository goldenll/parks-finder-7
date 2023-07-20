Rails.application.routes.draw do
  root "welcome#index"
  resources :parks
  # get "/parks", to: "parks#index"
end
