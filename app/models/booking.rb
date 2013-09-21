class Booking < ActiveRecord::Base
  belongs_to :location
  belongs_to :patient
  belongs_to :surgeon
  belongs_to :surgical_procedure
  belongs_to :surgical_specialty
  belongs_to :urgency_category

  accepts_nested_attributes_for :patient


end