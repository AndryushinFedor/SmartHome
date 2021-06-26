class AddUserReferencesToDevices < ActiveRecord::Migration[6.0]
  def change
    add_reference :devices, :user, null: true, foreign_key: true
  end
end
