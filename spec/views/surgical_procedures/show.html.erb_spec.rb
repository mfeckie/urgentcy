require 'spec_helper'

describe "surgical_procedures/show" do
  before(:each) do
    @surgical_procedure = assign(:surgical_procedure, stub_model(SurgicalProcedure,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
