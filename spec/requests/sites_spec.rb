require 'spec_helper'

describe "Sites" do

  describe "Home page" do

    it "should have the content 'NAT Server'" do
      visit '/site/home'
      page.should have_content('NAT Server')
    end
  end

  describe "Features page" do

    it "should have the content 'NAT Server'" do
      visit '/site/features'
      page.should have_content('NAT Server')
    end
  end

end
