class FavouritesController < ApplicationController
  # before_action :set_user, only: [:destroy, :create]
  before_action :set_recipe, only: [:new, :create, :destroy]

  def index
    @favourites = Favourite.all
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new(recipe_id: @recipe.id)
    @favourite.user = current_user
    @favourite.save
    redirect_to_source
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to_source
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def redirect_to_source
    if request.referrer.blank?
      redirect_to recipes_path
    elsif Rails.application.routes.recognize_path(request.referrer)[:action] == "show"
      redirect_to recipe_path(@recipe)
    elsif Rails.application.routes.recognize_path(request.referrer)[:action] == "index"
      redirect_to recipes_path(anchor: "recipe-#{@recipe.id}")
    end
  end

end
