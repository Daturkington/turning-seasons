class ShoppingListsController < ApplicationController
    before_action :set_shopping_list, only: [:show]

  def show
  end

  private

  def set_shopping_list
    @shoppinglist = ShoppingList.find(params[:id])
  end
end
