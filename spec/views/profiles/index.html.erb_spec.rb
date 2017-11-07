require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :name => "Name",
        :driving_history_check_data => "MyText",
        :police_check_data => "MyText",
        :bio => "MyText",
        :car => "MyText",
        :avatar_data => "MyText",
        :user => nil,
        :license_data => "MyText"
      ),
      Profile.create!(
        :name => "Name",
        :driving_history_check_data => "MyText",
        :police_check_data => "MyText",
        :bio => "MyText",
        :car => "MyText",
        :avatar_data => "MyText",
        :user => nil,
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
