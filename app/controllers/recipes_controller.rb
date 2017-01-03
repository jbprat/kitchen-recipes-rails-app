class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:success] = t('.success')
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.friendly.find(params[:id])
  end

private

  def recipe_params
    permitted_params = [:name, :level, :cook_time, :instructions, :ingredients]

    params.require(:recipe).permit(*permitted_params).tap do |recipe|
      recipe.merge! author_id: current_user.id
    end
  end
end
