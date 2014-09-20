# == Schema Information
#
# Table name: attends
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Attend, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
