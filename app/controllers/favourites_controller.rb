class FavouritesController < ApplicationController
  # before_action :set_user, only: [:destroy, :create]
  before_action :set_recipe, only: [:new, :create]

  def index
    @favourites = Favourite.all
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new(recipe_id: @recipe.id)
    @favourite.user = current_user
    if @favourite.save
      redirect_to recipes_path
     else
      render :new
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to recipes_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

end
