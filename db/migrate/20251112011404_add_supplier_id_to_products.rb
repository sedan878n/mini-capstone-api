class AddSupplierIdToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :supplier_id, :string
    add_index :products, :supplier_id
  end
end
