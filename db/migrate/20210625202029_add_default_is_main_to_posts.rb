class AddDefaultIsMainToPosts < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :is_main, false
  end
end
