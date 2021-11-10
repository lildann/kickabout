class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :latitude, :decimal, :precision => 10, :scale => 6
    add_column :users, :longitude, :decimal, :precision => 10, :scale => 6
    add_column :users, :location, :string
    add_column :users, :telephone, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
