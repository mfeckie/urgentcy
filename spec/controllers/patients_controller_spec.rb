require 'spec_helper'

describe PatientsController do
  let(:patients) { FactoryGirl.create_list(:patient, 10) }
  let(:test_patient) { Patient.create(last_name: 'McTesterton', first_name: 'Testy', date_of_birth: Date.today, mrn: 'TESTMRN') }
  before :each do
    create_and_sign_in
  end

  it 'returns all patients when search without any parameters' do
    patient_list = patients
    get :search, format: :json
    assigns(:patients).should eq(patient_list)
  end
  describe 'returns a filtered list when search parameters are give' do
    before :each do
      test_patient
    end
    it 'mrn' do
      patient_list = patients
      get :search, mrn: 'TESTMRN', format: :json
      assigns(:patients).should include(test_patient)
    end

    it 'last_name' do
      patient_list = patients
      get :search, last_name: 'McTesterton', format: :json
      assigns(:patients).should include(test_patient)
    end


    it 'first_name' do
      patient_list = patients
      get :search, first_name: 'Testy', format: :json
      assigns(:patients).should include(test_patient)
    end


  end

end