require 'rails_helper'
require 'test_helper'

RSpec.describe "Test Sessions", :type => :request do
  
  before :each do
    @user = FactoryGirl.create(:user)
  end

  it "test login" do
    get login_path
    expect(response).to be_success
  end
  
  it "renders the right template during login" do
      get login_path
      expect(response).to render_template('sessions/new')
    end
    
  it "handles an invalid login" do
      post login_path, params: { session: { email: "", password: "" } }
      expect(response).to render_template('sessions/new')
      expect(flash[:danger]).to be_present
      get signup_path
      expect(flash[:danger]).to_not be_present
  end
  
  it 'handles a valid login' do
    post login_path, params: { session: { email: @user.email, password: "foobar" } }
    expect(is_logged_in?).to eq(true)
  end
  
  it 'correctly handles a log out' do
    post login_path, params: { session: { email: @user.email, password: "foobar" } }
    expect(is_logged_in?).to eq(true)
    delete logout_path
    expect(is_logged_in?).to eq(false)
  end
  
  scenario "test login with remembering" do
    log_in_as_integration(@user, remember_me: '1')
    expect(cookies['remember_token']).to_not be_empty
  end
    
  scenario "test login without remembering" do
    #log in to set the cookie and then log in and verify that the cookie is deleted
    log_in_as_integration(@user, remember_me: '1')
    log_in_as_integration(@user, remember_me: '0')
    expect(cookies['remember_token']).to be_empty
  end
end
