class OrderItem < ApplicationRecord
  belongs_to :oderDetails
  belongs_to :paymentDetails
end
