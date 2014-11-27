require 'spec_helper'
require 'static_pages_controller'

describe StaticPagesController do
  describe "#home" do
    it "returns the search page" do
      visit root_path
      response.status.should be(200)
    end
  end
end