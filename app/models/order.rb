class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :product

  def calculate_total_order
    total_order = 0
    total_order = self.quantity * self.product.price
    self.total = total_order
    self.save
  end
end
