class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|

      t.timestamps
      t.string :body
      t.string :image
      t.references :group, foreign_key: true
      t.references :message, foreign_key: true
    end
  end
end
