class ChangeSeasonColumnInIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :season
    add_column :ingredients, :season, :integer, array: true, default: []
  end
end
