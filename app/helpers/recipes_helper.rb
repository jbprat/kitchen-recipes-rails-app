module RecipesHelper
  # Returns the current logged-in user
  def recipe
    @recipe ||= Recipe.find_by(id: @recipe.id)
  end
end
