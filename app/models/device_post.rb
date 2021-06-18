class DevicePost < ApplicationRecord
  self.table_name = "devices_posts"

  belongs_to :device
  belongs_to :post
end
