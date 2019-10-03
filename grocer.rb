def consolidate_cart(cart)
  clean_cart = {}
  cart.each do |item_hash|
    item_hash.map({}) do |item, attributes|
      clean_cart[item] ||=attributes
      clean_cart[item][:count] ? clean_cart[item][:count] +=1 : new_cart[item[[:count] = 1]]
    end
  end
  clean_cart
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
