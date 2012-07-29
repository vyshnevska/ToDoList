require 'spec_helper'

describe "Authors" do
  include Capybara::DSL;
  include Capybara::RSpecMatchers;
  describe "Index" do
     it "should have the content 'A list of authors'" do
      visit '/authors'
     #get 'authors'
    # response.should be_success
     page.should have_content "A list of authors"
   end
  end
end
