class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :product

#in procces
  #def calculate_total_order
  #  self.orders.each do |order|
  #    p self.total
  #    p self.quantity
  #  end
  #end

end
