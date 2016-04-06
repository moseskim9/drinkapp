class Store < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :items
  has_many :orders
  has_many :order_lines, through: :items
end
