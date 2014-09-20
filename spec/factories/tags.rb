# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  event_id   :integer          not null
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tag do
    event_id 1
    name "MyString"
  end
end
