class Availability < ApplicationRecord
  belongs_to :user, optional: true

  # very ugly sql search function
  def self.search(search)
    where('day ILIKE ?', "%#{search}%")
  end


end
