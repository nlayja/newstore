class Ticket < ApplicationRecord
  belongs_to :user
  has_many :orders

  def calculate_and_save_total
    total_acum = 0
    self.orders.each do |order|
      total_acum = total_acum + order.total
    end
    self.total = total_acum
    self.save
    p self.total
  end

  def print_ticketx
    p "Ticket number: #{self.id}"
    p "Date of emission: #{self.date_ticket}"
    p "Client: #{self.user.name} / number: #{user_id}"
    order_number = 0
    quantity_product = 0
    total_order = 0
    concept_product = " "
    price_unit = 0
    #self.updated_at = " "
    self.orders.each do |order|
      order_number = "#{order.id}"
      quantity_product = "#{order.quantity}"
      concept_product = "#{order.product.concept}"
      price_unit = "#{order.product.price}"
      order.calculate_total_order if (order.total.nil? || 0)
      p "Order number: #{order_number} || Quantity product: #{quantity_product} || Concept: #{concept_product} || Price unit: #{price_unit} || Total order: #{order.total}"
    end
    self.calculate_and_save_total if self.total.nil? || 0

    p "Total ticket: #{self.total}"
    self.updated_at = Time.now
    self.save
    p self.updated_at
  end
end
#
