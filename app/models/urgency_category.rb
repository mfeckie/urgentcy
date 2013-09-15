class UrgencyCategory < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  has_many :bookings

  def time_in_minutes
    (acceptable_wait_hours * 60) + acceptable_wait_minutes
  end

  def time_in_hours
    time_in_minutes / 60
  end

  def urgency_in_words
    "#{name} - #{acceptable_wait_hours} hours #{acceptable_wait_minutes} minutes"
  end

end