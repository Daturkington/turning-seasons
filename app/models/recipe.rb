class Recipe < ApplicationRecord
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
  has_many :shopping_list_items, dependent: :destroy
  has_one :favourite
end
