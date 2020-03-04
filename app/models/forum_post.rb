class ForumPost < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :groups_messages
  has_many :messages_users_like
end
