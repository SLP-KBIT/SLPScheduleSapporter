# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    user_id 1
    event_id 1
    image "MyString"
  end
end
