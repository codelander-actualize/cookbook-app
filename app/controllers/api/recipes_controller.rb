class Api::RecipesController < ApplicationController

	def one_recipe_method
		@recipe = Recipe.first #returns a hash
		render 'one_recipe.json.jbuilder'
	end

end
