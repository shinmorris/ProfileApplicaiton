class CreateGroupsMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :groups_messages do |t|
      t.references :group, null: false, foreign_key: true
      t.references :message, null: false, foreign_key: true
      t.timestamps
    end
  end
end
