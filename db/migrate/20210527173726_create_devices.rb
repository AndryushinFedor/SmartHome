class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :title
      t.string :about
      t.integer :price
      t.string :image
      t.string :tags

      t.timestamps
    end
  end
end
