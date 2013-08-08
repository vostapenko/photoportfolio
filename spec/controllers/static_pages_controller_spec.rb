require 'spec_helper'

describe StaticPagesController do

  describe "GET 'about'" do
    it "returns http success" do
      visit '/about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      visit '/contact'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      visit '/help'
      response.should be_success
    end
  end

end
