require 'spec_helper'

describe "ReturnDurationTypes" do
  describe "GET /return_duration_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get return_duration_types_path
      response.status.should be(200)
    end
  end
end
