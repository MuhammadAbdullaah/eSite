class AddFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :super_admin, :boolean, default: false
    add_column :users, :language, :string, default: 'en'
    add_column :users, :time_zone, :string
    add_column :users, :status, :string
    add_column :users, :currency_preferences, :string
    add_column :users, :interest, :string, array: true, default: []

    add_index :users, :super_admin
    add_index :users, :status
    add_index :users, :language
    add_index :users, :time_zone
    add_index :users, :currency_preferences
    add_index :users, :interest, using: 'gin'


  end
end
