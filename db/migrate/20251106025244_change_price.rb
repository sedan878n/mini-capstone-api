class ChangePrice < ActiveRecord::Migration[8.1]
  def change
    change_column :products, :price, :decimal, precision: 10, scale: 3
  end
end
