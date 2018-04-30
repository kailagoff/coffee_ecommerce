class Order < ApplicationRecord
  has_many :order_items

  validates :status, :presence => true
  validates :total_price, :presence => true
end
