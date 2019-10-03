def consolidate_cart(cart)
  clean_cart = {}
  cart.each do |item_hash|
    item_hash.each do |item, attributes|
      clean_cart[item] ||=attributes
      clean_cart[item][:count] ? clean_cart[item][:count] +=1 : clean_cart[item][:count] = 1
    end
  end
  clean_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |item_coupon_hash|
    item=coupon_hash[:item]

    if !cart[item].nil? && cart[item][:count] >= coupon_hash[:num]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
