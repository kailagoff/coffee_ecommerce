class Product < ApplicationRecord
  has_many :order_items

  has_attached_file :image, styles: { medium: "225x225#", thumb: '150X150#' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # validates :name, :presence => true
  # validates :price, :presence => true
end
