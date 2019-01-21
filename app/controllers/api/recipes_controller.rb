class Api::RecipesController < ApplicationController

	def index
		@recipes = Recipe.all #array of recipe hashes from the db
		render 'index.json.jbuilder'
	end

	def show
		# @recipe = Recipe.find(params["id"])
		@recipe = Recipe.find_by(id: params["id"]) #single recipe hash from the db
		render 'show.json.jbuilder'
	end

end
