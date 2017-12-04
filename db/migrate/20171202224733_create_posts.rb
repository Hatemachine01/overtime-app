class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :date
      t.text :rationale
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
