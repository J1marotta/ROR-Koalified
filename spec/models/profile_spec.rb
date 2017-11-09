require 'rails_helper'

RSpec.describe Profile, type: :model do
  it 'has a name field' do
    testv = Profile.new(name: 'James')
    expect(testv.name = 'james')
  end
end

RSpec.describe Profile, type: :model do
  it 'has a license field' do
    testv = Profile.new(license_data: '146350.jpeg')
    expect(testv.license_data = '146350.jpeg')
  end
end
