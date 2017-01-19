FactoryGirl.define do
  factory :user do
    id 1
    name 'Michael'
    email 'Michael@valid.com'
    password 'foobar'
    password_digest User.digest('foobar')
  end
  
  factory :invalid_user, parent: :user do 
    name nil
  end
  
  factory :valid_user, parent: :user do
    name 'banana'
    email 'banana@valid.com'
  end
  
  factory :alternate_user, parent: :user do
    
    id 2
    name 'Sterling Archer'
    email 'duchess@example.gov'
    password 'password'
    password_digest User.digest('password')
  end
  
end
