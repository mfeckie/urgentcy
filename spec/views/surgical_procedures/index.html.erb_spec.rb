require 'spec_helper'

describe "surgical_procedures/index" do
  before(:each) do
    assign(:surgical_procedures, [
      stub_model(SurgicalProcedure,
        :name => "Name"
      ),
      stub_model(SurgicalProcedure,
        :name => "Name"
      )
    ])
  end

  it "renders a list of surgical_procedures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
