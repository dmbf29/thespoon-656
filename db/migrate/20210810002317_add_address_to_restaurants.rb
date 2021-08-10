class AddAddressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :address, :string
    # method :table, :column, :type
  end
end
