require 'spec_helper'

describe "checklists/new" do
  before(:each) do
    assign(:checklist, stub_model(Checklist).as_new_record)
  end

  it "renders new checklist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checklists_path, "post" do
    end
  end
end
