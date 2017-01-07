require 'rails_helper.rb'

RSpec.describe "Log in",  :type => :feature do
    
    before :each do
        @user = FactoryGirl.create(:user)
    end
    
    scenario "login with valid information" do
        
        visit '/login'
        fill_in :Email, :with => @user.email
        fill_in :Password, :with => 'foobar'
        
        click_button "Log in"
    
        expect(page).to have_text(@user.name)
        
    end
    
    scenario "login with valid information" do
        
        visit '/login'
        fill_in :Email, :with => @user.email
        fill_in :Password, :with => 'foobar'
        
        click_button "Log in"
        
        page.find(:xpath, "//a[@href='/logout']").click #click logout
    
        expect(page).to have_text("Sign up now!")
        
    end
  
end