class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.integer :price
      t.string :day
      t.time :length
      t.boolean :booked
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
