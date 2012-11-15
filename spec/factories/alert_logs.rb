# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alert_log do
    alert_id 1
    executed_on "2012-11-15"
  end
end
