require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :Name => "MyString",
      :Driving_History_check_data => "MyText",
      :Police_check_data => "MyText",
      :bio => "MyText",
      :Car => "MyText",
      :avatar_data => "MyText",
      :User => nil,
      :license_data => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[Name]"

      assert_select "textarea[name=?]", "profile[Driving_History_check_data]"

      assert_select "textarea[name=?]", "profile[Police_check_data]"

      assert_select "textarea[name=?]", "profile[bio]"

      assert_select "textarea[name=?]", "profile[Car]"

      assert_select "textarea[name=?]", "profile[avatar_data]"

      assert_select "input[name=?]", "profile[User_id]"

      assert_select "textarea[name=?]", "profile[license_data]"
    end
  end
end
