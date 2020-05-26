class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    @recipes = Recipe.all
    @ingredients = Ingredient.all
    @recipe = Recipe.new
    if ShoppingList.find_by(completed: false)
      @shopping_list = ShoppingList.find_by(completed: false)
    else
      @shopping_list = ShoppingList.new
    end
  end

  def show
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
