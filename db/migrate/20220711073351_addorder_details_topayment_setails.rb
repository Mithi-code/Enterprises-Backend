class AddorderDetailsTopaymentSetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_details, :payment_details, index: true
  end
end
