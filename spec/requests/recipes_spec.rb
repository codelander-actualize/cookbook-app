require 'rails_helper'

RSpec.describe "Recipes API", type: :request do
	before do
		user = User.create(name: "Bob", email: "bob@gmail.com", password: "password")
		Recipe.create(title: "Gummy worms", ingredients: "sugar, food coloring", directions: "make", prep_time: 5, user_id: user.id)
		Recipe.create(title: "Snail cereal", ingredients: "snails, cereal", prep_time: 5, directions: "make", user_id: user.id)
		Recipe.create(title: "Fish cookie", ingredients: "fish oil, flour, sugar", directions: "make", prep_time: 5, user_id: user.id)
	end

  describe "GET /api/recipes" do
    it "returns an array of recipes" do
      get "/api/recipes"
      recipes = JSON.parse(response.body)
      expect(recipes.length).to eq(3)
    end
  end

  describe "GET /api/recipes/:id" do
    it "returns an a recipe with the proper attributes" do
    	recipe_id = Recipe.first.id
      get "/api/recipes/#{recipe_id}"
      recipe = JSON.parse(response.body)
      expect(recipe["title"]).to eq("Gummy worms")
      expect(recipe["prep_time"]).to eq(5)
    end
  end

end
