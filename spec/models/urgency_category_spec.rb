require 'spec_helper'

describe UrgencyCategory do
  let(:urgency_category) {FactoryGirl.create(:urgency_category)}

  subject { urgency_category }

  it { should respond_to :name }
  it { should respond_to :number }
  it { should respond_to :acceptable_wait_hours }
  it { should respond_to :acceptable_wait_minutes }
  it { should be_valid }

  it { should have_many :bookings }

  describe "Convenience methods" do
    before :each do
      @uc = FactoryGirl.create(:urgency_category, acceptable_wait_hours: 1, acceptable_wait_minutes: 10)
    end

    it 'should convert the hours and minutes to minutes' do
      expect(@uc.time_in_minutes).to eq(70)
    end

  end

end