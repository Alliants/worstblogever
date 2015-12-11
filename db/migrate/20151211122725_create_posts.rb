class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title, limit: 255, null: false
      t.text :body, null: false
      t.datetime :posted_on, null: false

      t.timestamps null: false
    end
  end
end
