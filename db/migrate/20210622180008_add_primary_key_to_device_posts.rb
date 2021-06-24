class AddPrimaryKeyToDevicePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :devices_posts, :id, :primary_key
  end
end
