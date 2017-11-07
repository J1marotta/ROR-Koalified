class Availability < ApplicationRecord
  belongs_to :user, optional: true
end
