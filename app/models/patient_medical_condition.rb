class PatientMedicalCondition < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy, :create]

  belongs_to :patient
  belongs_to :medical_condition
end