class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.string :sku
      t.float :price, precision: 10, scale: 2
      t.integer :stock_quantity, default: 0
      t.boolean :is_active, default: true
      t.boolean :is_published, default: false
      t.timestamps
    end
  end
end
