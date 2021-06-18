class CreateDevicesPostsJoinTable < ActiveRecord::Migration[6.0]
  create_join_table :devices, :posts do |t|
    t.index :device_id
    t.index :post_id
  end
end
