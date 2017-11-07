class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
     rename_column :availabilities, :length, :start_time
  end
end
