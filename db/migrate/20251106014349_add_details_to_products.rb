class AddDetailsToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :part_number, :string
    add_column :products, :color, :string
  end
end
