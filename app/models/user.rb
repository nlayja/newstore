class User < ApplicationRecord
  has_many :tickets

  def name_an_email
    p "the client name is #{self.name} and his/ner email is #{self.email}"
  end
end
