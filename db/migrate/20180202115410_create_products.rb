class CreateProducts < ActiveRecord::Migration[5.1]
  def change
  	create_table :products do |t|
  		t.string :title
  		t.text :description
  		t.decimal :price
  		t.decimal :size
  		t.boolean :is_spice
  		t.boolean :is_veg
  		t.boolean :is_best_veg
  		t.string :path_to_image
  		t.timestamps
  	end
  end
end
