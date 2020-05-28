class ShoppingListItem < ApplicationRecord
  belongs_to :recipe
  belongs_to :shopping_list
  has_many :quantities, through: :recipe
  has_many :ingredients, through: :quantities
end
