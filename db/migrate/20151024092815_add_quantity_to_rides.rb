class AddQuantityToRides < ActiveRecord::Migration
  def change
    add_column :rides, :quantity, :integer, default: 1
  end
end
