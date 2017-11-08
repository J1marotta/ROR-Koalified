require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :user => nil,
        :stripe_id => "Stripe",
        :availabilities => nil
      ),
      Booking.create!(
        :user => nil,
        :stripe_id => "Stripe",
        :availabilities => nil
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Stripe".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
