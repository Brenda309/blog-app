class RenameUserIdToAuthorId < ActiveRecord::Migration[7.0]
  def up
    rename_column :posts, :user_id, :author_id
    rename_column :likes, :user_id, :author_id
    rename_column :comments, :user_id, :author_id
  end

  def down
    rename_column :posts, :user_id, :author_id
    rename_column :likes, :user_id, :author_id
    rename_column :comments, :user_id, :author_id
  end
end
