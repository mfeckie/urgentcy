class SurgicalSpecialty < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  validates_uniqueness_of :name

  has_many :bookings
end
