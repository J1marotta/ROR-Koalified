require 'rails_helper'

RSpec.describe 'profiles/show', type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
                                  name: 'Name',
                                  driving_history_check_data: 'MyText',
                                  police_check_data: 'MyText',
                                  bio: 'MyText',
                                  car: 'MyText',
                                  avatar_data: 'MyText',
                                  user: nil,
                                  license_data: 'MyText'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
