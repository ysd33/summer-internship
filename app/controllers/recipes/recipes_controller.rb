class Recipes::RecipesController < ApplicationController
	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
		@recipe = Recipe.new
	end
	
	def create
		# @recipe = Recipe.new(params[:recipe])
		# @recipe.save

		recipe = Recipe.create(recipe_params)
		# recipe.save
		if recipe.save	#commitに成功した場合
			redirect_to new_recipe_step_path(recipe)
		else
			render :new
		end
	end

	def edit
		@recipe = Recipt.find(params[:id])

	def update
		recipe = Recipe.create(recipe_params)
		# recipe.save
		if recipe.save	#commitに成功した場合
			redirect_to new_recipe_step_path(recipe)
		else
			render :new
		end
	end


	private
		# なんか制限するやつ
		def recipe_params
			params.fetch(:recipe, {}).permit(:title, :description, :image_url)
		end
end
