require 'spec_helper'

describe UrgencyCategory do
  let(:urgency_category) {FactoryGirl.create(:urgency_category)}

  subject { urgency_category }

  it { should respond_to :name }
  it { should respond_to :number }
  it { should respond_to :acceptable_wait_hours }
  it { should respond_to :acceptable_wait_minutes }
  it { should be_valid }

  describe "Convenience methods" do

  end

end