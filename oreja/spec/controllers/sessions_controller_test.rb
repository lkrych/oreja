require_relative '../rails_helper.rb'

RSpec.describe SessionsController do
    describe "GET index" do
        it "should get new" do
            get login_path
            expect(response.status).to eq(200)
        end
    end
end