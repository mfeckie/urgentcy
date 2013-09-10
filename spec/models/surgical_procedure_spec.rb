require 'spec_helper'

describe SurgicalProcedure do
  let(:surgical_procedure) { FactoryGirl.create(:surgical_procedure)}

  subject {surgical_procedure}

  it { should respond_to :name }
  it { should be_valid }

  describe "Duplicates" do
    before do
      @name = {name: "Test name"}
      SurgicalProcedure.create(@name)
    end

    it "rejects duplicate names" do
      @duplicate = SurgicalProcedure.new(@name)
      expect(@duplicate.valid?).to be_false
    end

  end

end
