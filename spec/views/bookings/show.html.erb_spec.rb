require 'rails_helper'

RSpec.describe 'bookings/show', type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
                                  user: nil,
                                  stripe_id: 'Stripe',
                                  availabilities: nil
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Stripe/)
    expect(rendered).to match(//)
  end
end
