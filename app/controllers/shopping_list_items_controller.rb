class ShoppingListItemsController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @shoppinglistitem = ShoppingListItem.new
  end

  def create
    if user_signed_in?
      if current_user.shopping_list
        shopping_list = current_user.shopping_list
      else
        shopping_list = ShoppingList.create(user: current_user)
      end

      @shoppinglistitem = ShoppingListItem.new(recipe: @recipe)
      @shoppinglistitem.shopping_list = shopping_list
      @shoppinglistitem.save
      redirect_to_source
    end
  end

  def destroy
    @shoppinglistitem = ShoppingListItem.find(params[:id])
    @shoppinglistitem.destroy!
    redirect_to user_path(current_user)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
  
  def redirect_to_source
    if request.referrer.blank?
      redirect_to recipes_path
    elsif Rails.application.routes.recognize_path(request.referrer)[:action] == "show"
      redirect_to recipe_path(@recipe, anchor: "recipe-#{@recipe.id}")
    elsif Rails.application.routes.recognize_path(request.referrer)[:action] == "index"
      redirect_to recipes_path(anchor: "recipe-#{@recipe.id}")
    end
  end

end
