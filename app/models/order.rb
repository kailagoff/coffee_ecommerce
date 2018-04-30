class Order < ApplicationRecord
  validates :status, :presence => true
  validates :total_price, :presence => true
end
