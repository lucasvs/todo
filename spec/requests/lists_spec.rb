require 'spec_helper'

describe "Lists" do
  describe "GET /lists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lists_path
      response.status.should be(302)
    end
  end
end
