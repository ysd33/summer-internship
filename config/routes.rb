Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root "top#index"

	resources :recipes, only: %i(show), module: :recipes
  
end
