class CartItem < ApplicationRecord
  belongs_to :shoppingSession
  belongs_to :product
end
