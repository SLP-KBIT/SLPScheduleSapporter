# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    content "MyText"
    user_id 1
    location "MyString"
    start_at "2014-09-21 02:04:30"
    end_at "2014-09-21 02:04:30"
  end
end
