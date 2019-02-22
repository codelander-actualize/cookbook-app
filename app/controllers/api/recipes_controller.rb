class Api::RecipesController < ApplicationController

	def index
		search_term = params[:search]
		@recipes = Recipe.where("title LIKE ?", "%#{search_term}%").order(:id) #array of recipe hashes from the db
		render 'index.json.jbuilder'
	end

	def show
		@recipe = Recipe.find_by(id: params["id"]) #single recipe hash from the db
		render 'show.json.jbuilder'
	end

	def create
		@recipe = Recipe.new(
			title: params["title"],
			ingredients: params["ingredients"],
			directions: params["directions"],
			prep_time: params["prep_time"],
			image_url: params["image_url"],
			user_id: params["user_id"]
		)
		if @recipe.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity
		end
	end

	def update
		# .find always takes in JUST an id
		@recipe = Recipe.find(params[:id])

		@recipe.title = params["title"] || @recipe.title
		@recipe.ingredients = params["ingredients"] || @recipe.ingredients
		@recipe.directions = params["directions"] || @recipe.directions
		@recipe.prep_time = params["prep_time"] || @recipe.prep_time
		@recipe.image_url = params["image_url"] || @recipe.image_url

		if @recipe.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity
		end
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		render json: {message: "Recipe successfully destroyed."}
	end

end
