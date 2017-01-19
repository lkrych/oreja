require 'rails_helper'
require 'test_helper'

RSpec.describe UsersController, :type => :controller do
    
    before :each do
        @user = FactoryGirl.create(:user)
        @other_user = FactoryGirl.create(:alternate_user)
        @invalid_attributes = FactoryGirl.attributes_for(:invalid_user)
        @valid_attributes = FactoryGirl.attributes_for(:valid_user)
    end
    
    it "handles an unsuccessful edit" do
    log_in_as(@user)
    get :edit, :id => @user.id
    expect(response).to render_template('users/edit')
    put :update, id: @user, user: @invalid_attributes
    expect(response).to render_template('users/edit')
    expect(@user.name).to eq('Michael')
  end
  
  it "handles a successful edit" do
    log_in_as(@user)
    get :edit, :id => @user.id
    expect(@user.name).to eq("Michael")
    expect(@user.email).to eq("michael@valid.com")
    expect(response).to render_template('users/edit')
    put :update, id: @user, user: @valid_attributes
    @user.reload
    expect(@user.name).to eq("banana")
    expect(@user.email).to eq("banana@valid.com")
  end
  
  it "should redirect edit when not logged in" do
    get :edit, :id => @user.id
    expect(flash).to_not be_empty
    expect(response).to redirect_to(login_path)
  end

  it "should redirect update when not logged in" do
    put :update, id: @user, user: @valid_attributes
    expect(flash).to_not be_empty
    expect(response).to redirect_to(login_path)
  end
  
  it "should redirect edit when logged in as wrong user" do
    log_in_as(@other_user)
    get :edit, :id => @user.id
    expect(flash).to be_empty
    expect(response).to redirect_to(root_path)
  end

  it "should redirect update when logged in as wrong user" do
    log_in_as(@other_user)
    put :update, id: @user, user: @valid_attributes
    expect(flash).to be_empty
    expect(response).to redirect_to(root_path)
  end
end