class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :body
      t.string :commentable_type
      t.integer :commentable_id

      t.timestamps
    end
  end
end
