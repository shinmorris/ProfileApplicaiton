class User < ApplicationRecord

  # devise ---
  has_many :groups, through: :groups_users
  has_many :groups_users
  has_many :messages
  has_many :messages_likes
  has_many :forum_posts
  has_many :forum_posts_users
end
