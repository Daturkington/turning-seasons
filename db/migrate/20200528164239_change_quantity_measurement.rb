class ChangeQuantityMeasurement < ActiveRecord::Migration[6.0]
  def change
    remove_column :quantities, :measurement
    add_column :quantities, :measurement, :integer, default: 1
  end
end
