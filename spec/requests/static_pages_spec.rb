require 'spec_helper'

describe "StaticPages" do
  include Capybara::DSL;
  include Capybara::RSpecMatchers;
  describe "Home Page" do
   it "should have the content 'Sample'" do
      visit '/static_pages/home'
      page.should have_content "Sample"
    end
    it "should have the title '|Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text=>"|Home")
    end
    
  end
  describe "Help Page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content "Help"
  end
  it "should have the p-tag with 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('p', :text=>"Help")
    end
  end
  describe "About Page" do
   it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content "About"
  end
  
  end
end
