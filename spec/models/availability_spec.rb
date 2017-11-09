RSpec.describe Availability, :type => :model do
  it "It has a date" do
    Availability.create(day: "11-7-13")
    expect(Availability.day).to eq("11-7-13")
  end
end
