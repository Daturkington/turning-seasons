class Ingredient < ApplicationRecord
  has_many :quantities
  has_many :recipes, through: :quantities

  def in_season?
    self.season.include?(Date.today.strftime("%-m").to_i)
  end
end
