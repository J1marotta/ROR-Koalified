class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :driving_history_check_data
      t.text :police_check_data
      t.text :bio
      t.text :car
      t.text :avatar_data
      t.references :user, foreign_key: true
      t.text :license_data

      t.timestamps
    end
  end
end
