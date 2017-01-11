require 'rails_helper'
require 'test_helper'

RSpec.describe "Test Users", :type => :request do
    
    before :each do
        @user = FactoryGirl.create(:user)
        @attributes = FactoryGirl.attributes_for(:user)
    end
    
    it "handles an unsuccessful edit" do

    get edit_user_path(@user)
    expect(response).to render_template('users/edit')
    patch user_path(@user), params: { user: { name:  "",
                                              email: "foo@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }
    expect(response).to render_template('users/edit')
  end
end