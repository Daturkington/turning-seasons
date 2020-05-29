class RemoveDefaultFromQuantitiesMeasurement < ActiveRecord::Migration[6.0]
  def change
    remove_column :quantities, :measurement, :integer, default: 1
    add_column :quantities, :measurement, :integer
  end
end
