require 'spec_helper'

describe "DurationFrequencies" do
  describe "GET /duration_frequencies" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get duration_frequencies_path
      response.status.should be(200)
    end
  end
end
