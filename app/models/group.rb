class Group < ApplicationRecord

  has_many :users, through: :groups_users
  has_many :messages, through: :groups_messages
  has_many :groups_users
  validates :name, presence: true, uniqueness: true

end
