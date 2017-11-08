require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :user => nil,
      :stripe_id => "MyString",
      :availabilities => nil
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[user_id]"

      assert_select "input[name=?]", "booking[stripe_id]"

      assert_select "input[name=?]", "booking[availabilities_id]"
    end
  end
end
