require 'spec_helper'

describe "surgical_procedures/new" do
  before(:each) do
    assign(:surgical_procedure, stub_model(SurgicalProcedure,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new surgical_procedure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", surgical_procedures_path, "post" do
      assert_select "input#surgical_procedure_name[name=?]", "surgical_procedure[name]"
    end
  end
end
