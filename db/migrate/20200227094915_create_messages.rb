class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.timestamps
      t.string :body
      t.string :image
      t.bigint :group_id,foreign_key: 'group_id'
      t.bigint :user_id, foreign_key: 'user_id'
    end
  end
end
