require 'spec_helper'

describe "checklists/index" do
  before(:each) do
    assign(:checklists, [
      stub_model(Checklist),
      stub_model(Checklist)
    ])
  end

  it "renders a list of checklists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
