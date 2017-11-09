class RemovePostcodeFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :postcode, :int
  end
end
