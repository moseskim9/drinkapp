class OrderLine < ActiveRecord::Base
  belongs_to :item
  belongs_to :order
  has_one :store, through: :item

  validates :quantity, presence: true
end
