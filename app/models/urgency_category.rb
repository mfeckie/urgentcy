class UrgencyCategory < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  has_many :bookings

  def time_in_minutes
    (acceptable_wait_hours * 60) + acceptable_wait_minutes
  end
end