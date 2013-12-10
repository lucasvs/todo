require 'spec_helper'

describe "checklists/show" do
  before(:each) do
    @checklist = assign(:checklist, stub_model(Checklist))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
