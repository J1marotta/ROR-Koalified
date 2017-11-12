require 'rails_helper'

RSpec.describe Availability, :type => :model do
  it "has a date" do
    tuesday = Availability.create(day: "11-7-13")
    expect(tuesday.day).to eq("11-7-13")
  end
end
