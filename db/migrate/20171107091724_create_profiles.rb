class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :Name
      t.text :Driving_History_check_data
      t.text :Police_check_data
      t.text :bio
      t.text :Car
      t.text :avatar_data
      t.references :User, foreign_key: true
      t.text :license_data

      t.timestamps
    end
  end
end
