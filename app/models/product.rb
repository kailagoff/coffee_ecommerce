class Product < ApplicationRecord
  belongs_to :order_item, optional: true

  validates :name, :presence => true
  validates :price, :presence => true
end
