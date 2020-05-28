class FavouritesController < ApplicationController
  # before_action :set_user, only: [:destroy, :create]
  before_action :set_recipe, only: [:new, :create]

  def index
    @favourites = Favourite.all
  end
  
  def new
    @favourites = Favourite.new
  end

  def create
    @favourites = Favourite.new(recipe_id: params[:recipe_id].to_i)
    @favourites.user = current_user
    if @favourites.save
      redirect_to user_path(current_user)
     else
      render :new
    end
  end

  def destroy
    @favourites = Favourite.find(params[:id])
    @favourites.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_recipe
    @recipes = Recipe.find(params[:recipe_id])
  end

end
