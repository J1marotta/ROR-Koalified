module AvailabilitiesHelper
  def date_range
    monday_cycle = Date.today
    finish_cycle = Date.today + 7.days

    cycle = (monday_cycle..finish_cycle).to_a
  end
end
