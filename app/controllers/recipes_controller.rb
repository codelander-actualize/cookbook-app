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

end
