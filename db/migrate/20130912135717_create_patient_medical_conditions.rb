class CreatePatientMedicalConditions < ActiveRecord::Migration
  def change
    create_table :patient_medical_conditions do |t|
      t.references :patient
      t.references :medical_condition
    end
  end
end
