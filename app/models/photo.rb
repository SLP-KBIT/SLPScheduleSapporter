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

class Photo < ActiveRecord::Base
  validates :user_id, :event_id, :image, presence: true

  belongs_to :user
  belongs_to :event

  mount_uploader :image, ImageUploader
end
