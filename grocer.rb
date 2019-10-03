def consolidate_cart(cart)
  clean_cart = {}
  cart.each do |items|
    items.map({}) do |item, attributes|
      clean_cart[item] ||=attributes
    
    memo[key] = value
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
