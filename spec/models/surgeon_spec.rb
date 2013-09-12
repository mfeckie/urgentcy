require 'spec_helper'

describe Surgeon do
  let(:surgeon) { FactoryGirl.build_stubbed(:surgeon)}

  subject { surgeon }

  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should respond_to :telephone_number }
  it { should respond_to :mobile_number }
  it { should respond_to :pager }
  it { should be_valid }

end
