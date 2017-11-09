RSpec.describe User, :type => :model do
  it "Increases number when you create" do
    lindeman = User.create!(email: "Andy@gmail.com", password: "1234567")
    chelimsky = User.create!(email: "dave@gmail.com", password: "765432`")

    expect(User.count).to eq(2)
  end
end
