class Message < ApplicationRecord
  belongs_to :user,foreign_key: 'user_id'
  belongs_to :group,foreign_key: 'group_id'
  # has_many :groups_messages
  # has_many :groups, through: :groups_messages
  has_many :messages_users_like
  # validates :body, presence: true, unless: :image?
  # # bodyカラムが空の場合は保存しない、というバリデーション
  # mount_uploader :image, ImageUploader
  validates :body, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
