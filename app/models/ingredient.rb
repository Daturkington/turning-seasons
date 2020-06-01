class Ingredient < ApplicationRecord
  has_many :quantities, dependent: :destroy
  has_many :recipes, through: :quantities, dependent: :destroy

  def in_season?
    self.season.include?(Date.today.strftime("%-m").to_i)
  end
end
