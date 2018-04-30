class Order < ApplicationRecord
  belongs_to :order_item

  validates :status, :presence => true
  validates :total_price, :presence => true
end
