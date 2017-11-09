require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has an email' do
    testuser = User.create!(email: 'test@gmail.com')
    expect(testuser.email).to eq('test@gmail.com')
  end
end

RSpec.describe User, type: :model do
  it 'has a password' do
    testuser = User.create!(password: '123456')
    expect(testuser.password).to eq('123456')
  end
end
