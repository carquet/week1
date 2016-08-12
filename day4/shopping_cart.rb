class ShoppingCart

cart {}
prices {banana: 10, apple: 1}

update_prices
add_item_to_cart

.calcultate prices

.show





end



cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50

cosanueva1 = {banana: 10, apple: 3}

cart.modify cosanueva1

cosanueva2 = {banana: 10, apple: 1}

cart.modify cosanueva2
