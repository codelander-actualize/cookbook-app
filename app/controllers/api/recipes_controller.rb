class Api::RecipesController < ApplicationController

	def index
		@recipes = Recipe.all #array of recipe hashes from the db
		render 'index.json.jbuilder'
	end

	def show
		@recipe = Recipe.find_by(id: params["id"]) #single recipe hash from the db
		render 'show.json.jbuilder'
	end

	def create
		@recipe = Recipe.new(
			title: params["title"],
			chef: params["chef"],
			ingredients: params["ingredients"],
			directions: params["directions"],
			prep_time: params["prep_time"]
		)
		@recipe.save
		render 'show.json.jbuilder'
	end

	def update
		# .find always takes in JUST an id
		@recipe = Recipe.find(params[:id])

		@recipe.title = params["title"] || @recipe.title
		@recipe.chef = params["chef"] || @recipe.chef
		@recipe.ingredients = params["ingredients"] || @recipe.ingredients
		@recipe.directions = params["directions"] || @recipe.directions
		@recipe.prep_time = params["prep_time"] || @recipe.prep_time

		@recipe.save
		render 'show.json.jbuilder'
	end

end
