require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :Name => "Name",
        :Driving_History_check_data => "MyText",
        :Police_check_data => "MyText",
        :bio => "MyText",
        :Car => "MyText",
        :avatar_data => "MyText",
        :User => nil,
        :license_data => "MyText"
      ),
      Profile.create!(
        :Name => "Name",
        :Driving_History_check_data => "MyText",
        :Police_check_data => "MyText",
        :bio => "MyText",
        :Car => "MyText",
        :avatar_data => "MyText",
        :User => nil,
        :license_data => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
