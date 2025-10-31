class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.boolean :in_stock
      t.string :tags

      t.timestamps
    end
  end
end
