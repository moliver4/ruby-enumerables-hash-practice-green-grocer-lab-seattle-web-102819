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
  coupons.each do |coupon_hash| #hash of each item
    item=coupon_hash[:item]

    if cart[item] && cart[item][:count] >= coupon_hash[:num]
      if cart["#{item.upcase} W/COUPON"]
        cart["#{item.upcase} W/COUPON"][:count] += 1
      else
        cart["#{item.upcase} W/COUPON"] = {
          :price =>coupon_hash[:cost]/coupon_hash[:num],
          :clearance => coupon_hash[:clearance],
          :count => 1
          }
      end

      cart[item][:count] -= coupon_hash[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
