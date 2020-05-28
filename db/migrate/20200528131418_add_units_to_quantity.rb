class AddUnitsToQuantity < ActiveRecord::Migration[6.0]
  def change
    add_column :quantities, :unit, :integer
  end
end
