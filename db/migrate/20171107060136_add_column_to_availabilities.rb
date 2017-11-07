class AddColumnToAvailabilities < ActiveRecord::Migration[5.1]
  def change
    add_column :availabilities, :start_time, :datetime
  end
end
