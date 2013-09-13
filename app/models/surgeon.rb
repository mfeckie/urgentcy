class Surgeon < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  has_many :bookings

  def full_name
    "#{last_name}, #{first_name}"
  end
end
