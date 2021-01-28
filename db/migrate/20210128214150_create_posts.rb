class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.datetime :published_at
      t.belongs_to User
      t.timestamps
    end
  end
end
