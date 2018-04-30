class Product < ApplicationRecord
  belongs_to :order_item

  validates :name, :presence => true
  validates :price, :presence => true
end
