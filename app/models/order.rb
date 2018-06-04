class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :product

#in procces
  def calculate_total_order
    total_order = 0
    price_unit = 0
      self.order.each do |order|
      price_unit = "#{order.product.price}"
      total_order = self.quantity * price_unit
    end
    self.total = total_order
    self.save
    p self.total
  end
end
