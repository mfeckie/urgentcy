require 'spec_helper'

describe MedicalCondition do
  let(:medical_condition) { FactoryGirl.create(:medical_condition) }

  subject { medical_condition }

  it { should respond_to :name }
  it { should be_valid }

end