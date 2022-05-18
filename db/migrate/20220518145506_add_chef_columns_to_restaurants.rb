class AddChefColumnsToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :chef_name, :string
    add_column :restaurants, :chef_rating, :integer
  end
end
