json.id @recipe.id
json.title @recipe.title
json.ingredients @recipe.ingredients
json.directions @recipe.directions
json.prep_time @recipe.prep_time
json.image_url @recipe.image_url
json.created_at @recipe.created_at
json.current_user current_user

json.formatted do
	json.created_at @recipe.friendly_created_at
	json.prep_time @recipe.friendly_prep_time
	json.ingredients @recipe.ingredients_array
	json.directions @recipe.directions_array
end
