class AddIsMainToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :is_main, :boolean
  end
end
