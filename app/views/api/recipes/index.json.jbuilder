json.array! @recipes.each do |recipe|
	json.partial! "recipe.json.jbuilder", recipe: recipe

	json.formatted do
		json.created_at recipe.friendly_created_at
		json.prep_time recipe.friendly_prep_time
		json.ingredients recipe.ingredients_array
		json.directions recipe.directions_array
	end

	json.user do
		json.partial! recipe.user, partial: "api/users/user", as: :user
	end
end

