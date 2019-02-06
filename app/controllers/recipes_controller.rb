class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new
		@users = User.all
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
			user_id: params[:user_id]
		)
		@recipe.save
		redirect_to "/recipes/#{@recipe.id}"
	end

	def edit
		@users = User.all
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])

		@recipe.title = params[:title]
		@recipe.ingredients = params[:ingredients]
		@recipe.directions = params[:directions]
		@recipe.prep_time = params[:prep_time]
		@recipe.image_url = params[:image_url]
		@recipe.user_id = params[:user_id]

		@recipe.save
		redirect_to "/recipes/#{@recipe.id}"
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to "/recipes"
	end

end
