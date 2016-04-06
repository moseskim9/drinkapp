class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_lines

  def make_subtotal
    subtotal = 0
    self.order_lines.each do |order_line|
      subtotal += order_line.quantity * order_line.item.price
    end
    subtotal
  end
end
