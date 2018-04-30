class OrderItem < ApplicationRecord
  # has_many :products
  belongs_to :orders

  # validates :quantity, :presence => true
end
