class AddForeignKeyToShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :shopping_list_items, :recipe, foreign_key: true
  end
end
