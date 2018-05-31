class Order < ApplicationRecord
  has_one :ticket
  has_one :product
end
