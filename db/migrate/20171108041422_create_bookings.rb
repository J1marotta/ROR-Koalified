class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.string :stripe_id
      t.references :availabilities, foreign_key: true

      t.timestamps
    end
  end
end
