class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ingredients = Ingredient.all
    if params[:ingredient]
      ingredient = Ingredient.find(params[:ingredient])
      @ingredien
      @recipes = []
      Recipe.all.each do |recipe|
        if recipe.ingredients.include?(ingredient)
          @recipes << recipe
        end
      end
    else
      @recipes = Recipe.all
      @recipe = Recipe.new
    end

    if ShoppingList.find_by(completed: false)
      @shopping_list = ShoppingList.find_by(completed: false)
    else
      @shopping_list = ShoppingList.new
    end
  end

  def show
    @review = Review.new
    @reviews = @recipe.reviews
    @average = @reviews.average(:rating).to_f
    @rating_average = (@average * 2.0).round / 2.0
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
