class Patient < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]
  
  has_many :patient_medical_conditions
  has_many :medical_conditions, through: :patient_medical_conditions

  has_many :bookings

  def age
    ((Time.now.to_time - date_of_birth.to_time) / 1.years).to_i
  end

  def combined_details
    "#{last_name}, #{first_name} - #{mrn}"
  end

end