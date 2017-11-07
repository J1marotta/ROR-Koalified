require "rails_helper"

RSpec.describe User, :type => :model do
  it "has an email" do
    testuser = User.create!(email: "test@gmail.com")


		expect(testuser.email).to eq("test@gmail.com")
  end
end
