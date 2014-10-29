class AddUserToPostsAndProjects < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :integer
  	add_column :projects, :user_id, :integer
  	add_index :posts, :user_id
  	add_index :projects, :user_id
  end
end
