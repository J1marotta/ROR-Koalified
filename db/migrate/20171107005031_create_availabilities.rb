class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.string :day
      t.datetime :start_time
      t.boolean :booked
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
