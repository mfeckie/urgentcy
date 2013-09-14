class Patient < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]
  
  has_many :patient_medical_conditions
  has_many :medical_conditions, through: :patient_medical_conditions

  has_many :bookings

  def age
    #TODO What if they are less than 1? should show months / weeks / days
    ((Time.now.to_time - date_of_birth.to_time) / 1.years).to_i unless date_of_birth.nil?
  end

  def combined_details
    "#{last_name}, #{first_name} - #{mrn}"
  end

end