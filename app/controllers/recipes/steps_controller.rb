class Recipes::StepsController < ApplicationController
	def new
		@recipe = Recipe.find(params[:recipe_id])
	end

	def create
		recipe = Recipe.find(params[:recipe_id])
		step = recipe.steps.build(step_params)		#なんかhas_manyが関係してるらしい
		# step = Step.create(step_params)
		# recipe.save
		if step.save	#commitに成功した場合

		else
			render status: :bad_request
		end
	end

	private
		# なんか制限するやつ
		def step_params
			params.fetch(:step, {}).permit(:description)
		end
end
