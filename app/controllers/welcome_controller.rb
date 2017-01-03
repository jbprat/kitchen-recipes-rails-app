class WelcomeController < ApplicationController
  def index
    @recipes = Recipe.all
    puts @recipes.inspect
  end
end
