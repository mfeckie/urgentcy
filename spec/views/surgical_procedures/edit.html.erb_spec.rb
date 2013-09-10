require 'spec_helper'

describe "surgical_procedures/edit" do
  before(:each) do
    @surgical_procedure = assign(:surgical_procedure, stub_model(SurgicalProcedure,
      :name => "MyString"
    ))
  end

  it "renders the edit surgical_procedure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", surgical_procedure_path(@surgical_procedure), "post" do
      assert_select "input#surgical_procedure_name[name=?]", "surgical_procedure[name]"
    end
  end
end
