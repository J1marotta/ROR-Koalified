class Availablity < ApplicationRecord
  belongs_to :user
  belongs_to :driver_id, :class_name => 'User'
end
