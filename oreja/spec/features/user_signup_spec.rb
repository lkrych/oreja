require 'rails_helper.rb'

RSpec.describe "Sign up", :type => :feature do
    
    before :each do
        @user_count = User.all.count
    end
    
    scenario "User submits invalid signup information" do
        visit "/signup"
    
        fill_in "user_name", :with => ""
        fill_in "user_email", :with => "user@invalid"
        fill_in "user_password", :with => "foo"
        fill_in "user_password_confirmation", :with => "bar"
        
        click_button "Create my account"
        
        expect(@user_count).to eq(0)
        expect(page).to have_text("The form contains 4 errors.")
  end
  
  scenario "User submits valid signup information" do
    
        visit "/signup"
    
        fill_in "user_name", :with => "JIll Tief"
        fill_in "user_email", :with => "user@valid.com"
        fill_in "user_password", :with => "foobar"
        fill_in "user_password_confirmation", :with => "foobar"
        
        click_button "Create my account"
        
        @user_count = User.all.count
        
        expect(@user_count).to eq(1)
        expect(page).to have_text("Welcome to Oreja!")
  end
end