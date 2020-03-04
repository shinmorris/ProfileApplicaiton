class CreateForumPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :forum_posts do |t|
      t.timestamps
      t.string :body
      t.string :forum_post_image
    end
  end
end
