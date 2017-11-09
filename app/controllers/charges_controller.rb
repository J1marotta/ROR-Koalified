class ChargesController < ApplicationController
	before_action :authenticate_user!

	def new
	end

def create
  # Amount in cents
  @amount = 4500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Book this Availability',
    :currency    => 'AUD'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

redirect_to thanks_path
end

def thanks
end
