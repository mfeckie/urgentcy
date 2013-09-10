require 'spec_helper'

describe SurgicalSpecialty do
  let(:specialty) { FactoryGirl.create(:surgical_specialty)}

  subject { specialty }

  it { should respond_to :name }

  describe "Duplicate names" do
    before do
      @name = "Test Name"
      SurgicalSpecialty.create(name: @name)
    end

    it "Rejects duplicate specialty names" do
      @duplicate = SurgicalSpecialty.new(name: @name)
      @duplicate.should_not be_valid
    end

  end

end
