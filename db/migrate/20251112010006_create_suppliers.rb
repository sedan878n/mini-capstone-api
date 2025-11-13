class CreateSuppliers < ActiveRecord::Migration[8.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.boolean :active

      t.timestamps
    end
  end
end
