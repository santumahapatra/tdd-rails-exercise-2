require 'spec_helper'
require 'static_pages_controller'

describe StaticPagesController do
  describe "#home" do
    it "returns the search form page" do
      visit root_path
      response.status.should be(200)
    end
  end

  describe "#search" do
    it "returns the search form page" do
      visit search_path
      response.status.should be(200)
    end
  end
end