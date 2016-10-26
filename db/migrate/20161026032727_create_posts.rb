class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :content
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
