require 'test_helper'
require 'rails_helper'

RSpec.describe "Test Sessions Helper" do
    
    before :each do
        @user = FactoryGirl.create(:user)
        remember(@user)
    end
    
    describe "testing remember branch of current_user method" do
        
        it "should return the current user when the session is nil" do
            expect(@user).to eq(current_user)
            expect(is_logged_in?).to eq(true)
        end
        
        it "should return nil when remember_digest is reset" do 
            @user.update_attribute(:remember_digest, User.digest(User.new_token))
            expect(current_user).to eq(nil)
            expect(is_logged_in?).to eq(false)
        end
    end
end