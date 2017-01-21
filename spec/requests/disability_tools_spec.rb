require 'rails_helper'

RSpec.describe "DisabilityTools", type: :request do
  describe "GET /disability_tools" do
    it "works! (now write some real specs)" do
      get disability_tools_path
      expect(response).to have_http_status(200)
    end
  end
end
