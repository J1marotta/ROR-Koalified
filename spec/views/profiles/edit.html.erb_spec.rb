require 'rails_helper'

RSpec.describe 'profiles/edit', type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
                                  name: 'MyString',
                                  driving_history_check_data: 'MyText',
                                  police_check_data: 'MyText',
                                  bio: 'MyText',
                                  car: 'MyText',
                                  avatar_data: 'MyText',
                                  user: nil,
                                  license_data: 'MyText'
    ))
  end

  it 'renders the edit profile form' do
    render

    assert_select 'form[action=?][method=?]', profile_path(@profile), 'post' do
      assert_select 'input[name=?]', 'profile[name]'

      assert_select 'textarea[name=?]', 'profile[driving_history_check_data]'

      assert_select 'textarea[name=?]', 'profile[police_check_data]'

      assert_select 'textarea[name=?]', 'profile[bio]'

      assert_select 'textarea[name=?]', 'profile[car]'

      assert_select 'textarea[name=?]', 'profile[avatar_data]'

      assert_select 'input[name=?]', 'profile[user_id]'

      assert_select 'textarea[name=?]', 'profile[license_data]'
    end
  end
end
