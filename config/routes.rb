Rails.application.routes.draw do
  namespace :api do #creates api namespaced route (appens /api to route)
  	get "/one_recipe_url" => "recipes#one_recipe_method"
  end
end
