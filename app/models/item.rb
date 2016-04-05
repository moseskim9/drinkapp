class Item < ActiveRecord::Base
  belongs_to :store
  has_many :order_lines
end
