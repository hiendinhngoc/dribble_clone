# == Schema Information
#
# Table name: shots
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  user_shot   :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ShotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
