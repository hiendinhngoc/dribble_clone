# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  response   :text
#  user_id    :integer
#  shot_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shot, optional: true
end
