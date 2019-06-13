class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shot, optional: true
end