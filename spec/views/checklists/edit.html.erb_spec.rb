require 'spec_helper'

describe "checklists/edit" do
  before(:each) do
    @checklist = assign(:checklist, stub_model(Checklist))
  end

  it "renders the edit checklist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checklist_path(@checklist), "post" do
    end
  end
end
