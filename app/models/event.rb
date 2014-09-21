# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  content    :text             not null
#  user_id    :integer          not null
#  location   :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
  belongs_to :user
  has_many :attends
  has_many :users, through: :attends
  has_many :photos

  scope :attend, -> (user_id) { where user_id: user_id }
  scope :planning, -> { where('start_at > ?', DateTime.now) }
  scope :finished, -> { where('end_at < ?',   DateTime.now) }
end
