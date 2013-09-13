require 'spec_helper'

describe Patient do
  let(:patient) { FactoryGirl.build_stubbed(:patient) }

  subject { patient }

  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should respond_to :mrn }
  it { should respond_to :date_of_birth }
  it { should respond_to :ward_location }

  it { should have_many(:medical_conditions).through(:patient_medical_conditions) }
  it { should have_many :bookings }

  it { should be_valid }



end