class RemovePriceFromAvailabilities < ActiveRecord::Migration[5.1]
  def change
    remove_column :availabilities, :price, :integer
  end
end
