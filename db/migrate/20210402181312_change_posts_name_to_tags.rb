class ChangePostsNameToTags < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :name, :tags
  end
end
