class AddProducts < ActiveRecord::Migration[5.1]
  def change
  	Product.create :title => 'hawaian', 
  	:description => 'this is hawaian pizza',
  	:price => 350,
  	:size => 30,
  	:is_spicy => false,
  	:is_veg => false,
  	:is_best_offer => false,
  	:path_to_image => '/images/hawaian.jpg'

  	Product.create :title => 'peperoni', 
  	:description => 'nice peperoni',
  	:price => 400,
  	:size => 30,
  	:is_spicy => false,
  	:is_veg => false,
  	:is_best_offer => false,
  	:path_to_image => '/images/peperoni.jpg'
  
  Product.create :title => 'vegeterian', 
  	:description => 'this is amazing vegeterian pizza',
  	:price => 300,
  	:size => 30,
  	:is_spicy => false,
  	:is_veg => false,
  	:is_best_offer => false,
  	:path_to_image => '/images/veg.jpg'
    end
end
