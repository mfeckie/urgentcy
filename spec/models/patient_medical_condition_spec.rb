require 'spec_helper'

describe PatientMedicalCondition do
  let(:pmc) { PatientMedicalCondition.new}

  subject { pmc }

  it { should respond_to :patient_id }
  it { should respond_to :medical_condition_id }

  it { should belong_to :patient }
  it { should belong_to :medical_condition }

end