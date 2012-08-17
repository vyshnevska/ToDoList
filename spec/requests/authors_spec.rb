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
    #it { should have_selector 'h1', text: 'A list of authors' }
    it "should have the title 'A list of authors'" do
      visit '/authors'
      page.should have_selector('h1', :text=>"A list of authors")
    end
  end
  
  describe "#new" do
    it "takes three parameters and returns an Author object" do
      visit '/authors/new'
      @author=Author.new
      @author.should be_an_instance_of Author
    end
  end
  # describe '#create' do
  #   it 'creates a new author' do
  #     Author.count.should == @count + 1
  #    flash[:notice].should be
  #    response.should redirect_to(author_path(assigns(:author)))
  #   end
  #  end
  #describe "PUT 'update/:id'" do
   # it "allows an author to be updated" do
    #  @author =Author.new
   #   @author.name="New name"
   #   @author.photo=nil
      #@params = { :name => "new name", :photo => nil }
     # put :update, :id => @author.id, :author => @params
      # @author.reload
    
      # @author.name.should == @params[:name]
      # @author.photo.should == @params[:photo] 
   #   if @author.save 
   #     get edit_author_path, :id => @author.id
   #     assert assigns(:author)
   #   end
   # end
  #end
end
