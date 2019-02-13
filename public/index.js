/* global axios */

axios.get("https://infinite-reef-83603.herokuapp.com/api/recipes").then(function(response){
	var recipes = response.data;
	console.log(recipes);
});