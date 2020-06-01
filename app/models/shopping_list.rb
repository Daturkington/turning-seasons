class ShoppingList < ApplicationRecord
  belongs_to :user
  has_many :shopping_list_items, dependent: :destroy
  has_many :recipes, through: :shopping_list_items, dependent: :destroy
  has_many :quantities, through: :recipes, dependent: :destroy
  has_many :ingredients, through: :quantities, dependent: :destroy
end
