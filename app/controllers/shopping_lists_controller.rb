class ShoppingListsController < ApplicationController
    before_action :set_shopping_list, only: [:show, :update]

  def show
  end

  def update
    @shopping_list.completed = 'true'
    @shopping_list.save
    redirect_back fallback_location: recipes_path
  end

  private

  def set_shopping_list
    @shopping_list = ShoppingList.find(params[:id])
  end

end
