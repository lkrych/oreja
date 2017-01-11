FactoryGirl.define do
  factory :user do
    id 1
    name 'Michael'
    email 'Michael@valid.com'
    password 'foobar'
    password_digest User.digest('foobar')
  end
end
