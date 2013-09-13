require 'spec_helper'

describe Booking do
  let(:booking) { FactoryGirl.build_stubbed(:booking)}

  subject { booking }

  it { should respond_to :location_id }
  it { should respond_to :patient_id }
  it { should respond_to :surgeon_id }
  it { should respond_to :surgical_procedure_id }
  it { should respond_to :surgical_specialty_id }
  it { should respond_to :urgency_category_id }
  it { should respond_to :required_minutes }
  it { should respond_to :required_hours }
  it { should respond_to :availability }
  it { should respond_to :booking_status }


  # Associations

  it { should belong_to :location}
  it { should belong_to :patient }
  it { should belong_to :surgeon }
  it { should belong_to :surgical_procedure }
  it { should belong_to :surgical_specialty }
  it { should belong_to :urgency_category }


end