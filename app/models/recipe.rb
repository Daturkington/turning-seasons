class Recipe < ApplicationRecord
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
  has_many :shopping_list_items, dependent: :destroy
  has_one :favourite, dependent: :destroy
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
end
