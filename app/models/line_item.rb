class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  attr_accessible :cart_id, :product_id
  attr_accessible :product
  def total_price
    product.price * quantity
  end
end
