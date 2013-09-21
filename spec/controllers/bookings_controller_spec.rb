require 'spec_helper'

describe BookingsController do
  let(:booking_attributes) { FactoryGirl.attributes_for(:booking) }
  let(:nested_attributes) do
    {
        required_minutes: 10,
        required_hours: 1,
        notice_required: 'Very little',
        availability: 'Any time',
        booking_status: 'Unconfirmed',
        patient_attributes:
            {first_name: 'Dave',
             last_name: 'Patient',
             mrn: 12345567}


    }
  end


  before :each do
    create_and_sign_in
  end

  describe 'creating a booking' do
    it 'should accept booking without patient attributes' do
      expect { post :create, booking: booking_attributes }.to change(Booking, :count).by(1)
    end

    it 'should accept nested patient booking' do
      expect { post :create, booking: nested_attributes }.to change(Booking, :count).by(1)
    end

    it 'should accept nested patient booking and create patient' do
      expect { post :create, booking: nested_attributes }.to change(Patient, :count).by(1)
    end



  end

end
