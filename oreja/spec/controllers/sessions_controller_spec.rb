require 'rails_helper'


RSpec.describe "Test Sessions", :type => :request do

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
end
