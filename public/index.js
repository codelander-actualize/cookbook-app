/* global axios */

console.log("index.js connected");

axios.get("http://localhost:3000/api/recipes").then(function(response){
	var recipes = response.data;
	console.log(recipes);
})