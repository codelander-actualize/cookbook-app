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

  describe "POST /api/recipes" do
    it "create a new recipe" do
      user = User.create(name: "Bob", email: "bobert@gmail.com", password: "password")
      post "/api/recipes", params: {title: "Unicorn meat", ingredients: "fresh unicorn, sugar", directions: "make", prep_time: 60, user_id: user.id}
      recipe = JSON.parse(response.body)
      expect(recipe["title"]).to eq("Unicorn meat")
    end

    it "should return an error status code with invalid data" do
      post "/api/recipes", params: {}
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "PATCH /api/recipes/:id" do
     it "updates a recipe" do
       id = Recipe.first.id
       patch "/api/recipes/#{id}", params: {title: "Updated title"}
       recipe = JSON.parse(response.body)
       expect(recipe["title"]).to eq("Updated title")
       expect(recipe["ingredients"]).to eq("sugar, food coloring")
     end

     it "returns an error status code with invalid data" do
       id = Recipe.first.id
       patch "/api/recipes/#{id}", params: {title: ""}
       expect(response).to have_http_status(:unprocessable_entity)
     end
   end

  describe "DELETE /api/recipes/:id" do
    it "deletes a recipe" do
      id = Recipe.first.id
      delete "/api/recipes/#{id}"
      expect(Recipe.count).to eq(2)
    end
  end

end
