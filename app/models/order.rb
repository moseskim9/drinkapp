class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_lines

  def make_subtotal
    subtotal = 0
    self.order_lines.each do |order_line|
      if order_line.size == "Small"
        subtotal += order_line.quantity * order_line.item.price
      elsif order_line.size == "Medium"
        subtotal += order_line.quantity * order_line.item.price
      else
        subtotal += order_line.quantity * order_line.item.price
      end
    end
    subtotal
  end

  # def size_and_price
  #     if self.order_line.size == "Small"
  #       self.order_line.item.price
  #     elsif self.order_line.size == "Medium"
  #       self.order_line.item.medium_price
  #     else
  #       self.order_line.item.large_price
  #     end
  # end

end
