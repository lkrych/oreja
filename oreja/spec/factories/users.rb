FactoryGirl.define do
  factory :user do
    name 'Michael'
    email 'Michael@valid.com'
    password 'foobar'
    password_digest User.digest('foobar')
  end
end
