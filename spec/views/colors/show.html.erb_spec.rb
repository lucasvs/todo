require 'spec_helper'

describe "colors/show" do
  before(:each) do
    @color = assign(:color, stub_model(Color))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
