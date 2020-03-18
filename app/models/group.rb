class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages, through: :groups_messages
  validates :name, presence: true, uniqueness: true

end
