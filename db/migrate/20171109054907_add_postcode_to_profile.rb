class AddPostcodeToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :postcode, :string
  end
end
