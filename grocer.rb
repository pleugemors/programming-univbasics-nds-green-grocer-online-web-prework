def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  row = 0 
  while collection[row] do 
    if collection[row][:item]== name
      return collection[row]
    end
    row += 1 
  end
end

def consolidate_cart(cart)
  grouped = []
  row = 0 
  while cart[row] do 
    row2 = 0
    flag = 0 
    while grouped[row2] do 
      if grouped[row2][:item] == cart[row][:item]
        grouped[row2][:count] += 1 
        flag = 1 
        break
      end
      row2 += 1 
    end
    if flag == 0 
      grouped << cart[row]
      grouped[grouped.length-1][:count] = 1 
      
    end 
    
    row += 1 
  end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  grouped
end

def apply_coupons(cart, coupons)
  cons_cart = consolidate_cart(cart)
  row = 0 
  while coupons[row] do 
    row2 = 0 
    while cart[row] do 
      # See if coupon matches any item in cart
      #puts cart[row2][:item]
      #puts coupons[row][:item]
      if cons_cart[row2][:item] == coupons[row][:item]
        # if item matches see if there is sufficient quantity
        #puts cart[row2][:count]
        #puts coupons[row][:num]
        if cons_cart[row2][:count] == coupons[row][:num] || cons_cart[row2][:count] > coupons[row][:num]
            puts "HOLY HOLY HOLY HOLY HOLY HOLY MOLY"
            # update number for whole sale
            # guessing only one transaction per coupon
          cart[row2][:num] -= coupons[row][:num]
            # add coupon to end
          new_item = {}
          cost = coupons[row][:cost]/coupons[row][:num]
          
          puts cost
          puts cost
          puts cost
          puts cost
          puts cost
          
          name = new_item[:item] + "W/COUPON"
          puts name
          puts name
          new_item[:item] = "#{name} W/COUPON"
          new_item[:price] = cost # cost per each item
          new_item[:clearance] = true 
          new_item[:count] = coupons[row][:num]
          puts new_item
          puts new_item
          puts new_item
          puts new_item
          puts new_item
          cart[cart.length] = new_item
          break
        end 
      end 
      row2 += 1 
    end
    
    row += 1   
  end 
  cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
