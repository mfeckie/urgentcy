require 'spec_helper'

describe MedicalCondition do
  let(:medical_condition) { FactoryGirl.build_stubbed(:medical_condition) }

  subject { medical_condition }

  it { should respond_to :name }
  it { should be_valid }

  it { should have_many(:patients).through(:patient_medical_conditions)}

end