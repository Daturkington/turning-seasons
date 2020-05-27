class ShoppingListItemsController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @shoppinglistitem = Shoppinglistitem.new
  end

  def create
    @shoppinglistitem = Shoppinglistitem.new(params[:recipe_id])
    @shoppinglistitem.user = current_user
    if @shoppinglistitem.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
