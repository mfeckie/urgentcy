class MedicalCondition < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  has_many :patient_medical_conditions
  has_many :patients, through: :patient_medical_conditions

end