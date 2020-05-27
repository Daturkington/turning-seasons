class ShoppingListItemsController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @shoppinglistitem = ShoppingListItem.new
  end

  def create
    if current_user.shopping_list
      shopping_list = current_user.shopping_list
    else
      shopping_list = ShoppingList.create(user: current_user)
    end

    @shoppinglistitem = ShoppingListItem.new(recipe: @recipe)
    @shoppinglistitem.shopping_list = shopping_list
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
