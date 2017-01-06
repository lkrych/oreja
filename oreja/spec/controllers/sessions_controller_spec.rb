require 'rails_helper'


RSpec.describe "Test Sessions", :type => :request do

  it "test login" do
    get login_path
    expect(response).to be_success
  end
end
