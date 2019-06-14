# frozen_string_literal: true

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

class Shot < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  mount_uploader :user_shot, UserShotUploader
  is_impressionable
  acts_as_votable
end
