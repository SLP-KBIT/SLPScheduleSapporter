# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    event_id 1
    user_id 1
    content "MyText"
  end
end
