class CreateBrands < ActiveRecord::Migration[8.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.boolean :active
      t.boolean :published
      t.boolean :is_popular
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
