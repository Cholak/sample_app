require 'spec_helper'

describe "StaticPages" do
 
let(:base_title) {'Ruby on Rails Tutorial Sample App'}
  describe "Home page" do

    it "should have content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('h1', :text => 'sample page')
    end
  	
  	it "should have the title 'Help'"	do
  		visit root_path
  		page.should_not have_selector('title',
  			:text => "#{base_title} | Home")
  	end
end


describe "Help page" do

    it "should have the h1 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "Should have title 'Help'" do
    	visit help_path
    	page.should have_selector('title',
    		:text => "#{base_title} | Help")
    end
  end

 describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
    	visit about_path
    	page.should have_selector('title',
    		:text => "#{base_title} | About Us")
  end
 end

  describe "Contact Page"  do
 	
 	  it "Should have h1 'Contact'" do
 		 visit contact_path
 		 page.should have_selector('h1', :text => 'Contact')
 	  end
 
 	  it "Should have title 'Ruby on Rails Tutorial Sample App | Contact'" do
  		visit contact_path
 		  page.should have_selector('title', 
      :text => "#{base_title} | Contact")
 	  end

  end 
end
