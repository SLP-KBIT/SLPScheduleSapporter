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

require 'rails_helper'

RSpec.describe Tag, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
