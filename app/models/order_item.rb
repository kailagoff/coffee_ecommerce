class OrderItem < ApplicationRecord
  # has_many :products
  # # belongs_to :orders
  belongs_to :order
  belongs_to :product

  # validates :quantity, :presence => true
end
