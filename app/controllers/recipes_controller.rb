class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new
		#IMPLICIT RENDERING OF HTML ONLY
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def create
		@recipe = Recipe.new(
			title: params[:title],
			ingredients: params[:ingredients],
			directions: params[:directions],
			prep_time: params[:prep_time],
			image_url: params[:image_url],
			user_id: 1
		)
		@recipe.save
		redirect_to "/recipes"
	end

end
