require 'rails_helper.rb'

describe User, :type => :model do
    
    before :each do
        @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
        @valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
        @invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    end
    
    it 'is valid if model is valid' do
        expect(@user).to be_valid
    end
    
    it 'should have a name' do
        @user.name = " "
        expect(@user).to_not be_valid
    end
    
    it 'should have an email address' do
        @user.email = " "
        expect(@user).to_not be_valid
    end
    
    it "should not allow names to be too long" do 
        @user.name = "a" * 51
        expect(@user).to_not be_valid
    end
    
    it "should not allow emails to be too long" do
        @user.email = "a"* 244 + "@example.com"
        expect(@user).to_not be_valid
    end
    
    it "should allow valid email addresses" do
        @valid_addresses.each do |valid_address|
            @user.email = valid_address
            expect(@user).to be_valid, "#{valid_address.inspect} should be valid"
        end
    end
    
    it "should not allow invalid email addresses" do
        @invalid_addresses.each do |invalid_address|
            @user.email = invalid_address
            expect(@user).to_not be_valid, "#{invalid_address.inspect} should not be valid"
        end
    end
    
    it "should only allow unique e-mail addresses" do
        duplicate_user = @user.dup
        duplicate_user.email = @user.email.upcase
        @user.save
        expect(duplicate_user).to_not be_valid
    end
    
    it "should only save lowercase emails to db" do
        mixed_case_email = "Foo@ExAMPle.CoM"
        @user.email = mixed_case_email
        @user.save
        expect(@user.email).to eq(mixed_case_email.downcase)
    end
    
    describe "passwords should follow the following rules" do
        it "should not be blank" do
            @user.password = @user.password_confirmation = " " * 6
            expect(@user).to_not be_valid
        end
        
        it "should have a minimum length" do
            @user.password = @user.password_confirmation = "a" * 5
            expect(@user).to_not be_valid
        end
    end
    
end