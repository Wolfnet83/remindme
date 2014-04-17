# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    sequence(:username) { |n| "username-#{n}"}
    sequence(:email) { |n| "email-#{n}@test.local"}
    password "123456"
  end

end
