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
      if cart["#{item} W/COUPON"]
        cart["#{item} W/COUPON"][:count] += (1 * coupon_hash[:num])
      else
        cart["#{item} W/COUPON"] = {
          :price =>coupon_hash[:cost]/coupon_hash[:num],
          :clearance => cart[item][:clearance],
          :count => coupon_hash[:num]
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
