# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alert do
    event "MyString"
    event_description "MyText"
    user_id 1
    period 1
    last_executed "2012-10-17"
    active false
  end
end
