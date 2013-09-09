require 'spec_helper'

describe SurgicalSpecialty do
  let(:specialty) {FactoryGirl.create(:surgical_specialty)}

  subject { specialty }

  it { should respond_to :name }



end
