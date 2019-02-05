Rails.application.routes.draw do
  namespace :api do #creates api namespaced route (appends /api to route)
  	get "/recipes" => "recipes#index"
  	get "/recipes/:id" => "recipes#show"
  	post "/recipes" => "recipes#create"
  	patch "/recipes/:id" => "recipes#update"
  	delete "/recipes/:id" => "recipes#destroy"

  	post "/users" => "users#create"
  	
  	post "/sessions" => "sessions#create"

  end

  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"
end
