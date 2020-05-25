class RemoveForeignKeyShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    remove_reference :shopping_list_items, :ingredient
  end
end
