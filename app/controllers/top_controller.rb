class TopController < ApplicationController
	#GET /recipes
	def index
		@recipes = Recipe.all
	end

	#GET /recipes/:id
	def show		

	end

	#GET /recipes/new
	def new 
		
	end

end
