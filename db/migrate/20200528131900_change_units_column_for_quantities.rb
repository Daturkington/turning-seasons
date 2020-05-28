class ChangeUnitsColumnForQuantities < ActiveRecord::Migration[6.0]
  def change
    change_column :quantities, :unit, :string
  end
end
