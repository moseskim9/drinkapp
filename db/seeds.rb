# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.cre name: 'Chicago name: 'Copenhagen' }])#   Mayor.create(name: 'Emanuel', city: cities.first)

OrderLine.destroy_all
Order.destroy_all
Item.destroy_all
Store.destroy_all


# list = ["lemon", "mint leaves", "coke", "orange juice", "apple juice", "pear juice", "whisky", "absinth"]
# ingredient_list = []

# list.each do |element|
#  ingredient_list << Ingredient.create(name: element)
# end

store_coco_fresh = Store.create!({
  image: "http://austinot.com/wp-content/uploads/2015/07/Cocos-Cafe-Boba-Tea-1024x683.jpg",
  name: "Coco Fresh Tea & Juice",
  address: "129 E 45th St, New York",
  postcode: "90013",
  city: "Los Angeles",
  country: "USA"
})
store_beer_belly = Store.create!({
  image: "http://cdn.pastemagazine.com/www/articles/LABEERBARS-NEWMAIN.jpg",
  name: "Beer Belly",
  address: "532 S Western, Los Angeles",
  postcode: "90020",
  city: "Los Angeles",
  country: "USA"
})
store_stumptown = Store.create!({
  image: "http://www.pbwc.ca/images/stumptown-stubby-04.jpg",
  name: "Stumptown",
  address: "7871 Santa Monica Blvd, West Hollywood",
  postcode: "90020",
  city: "Los Angeles",
  country: "USA"
})
store_boba_time = Store.create!({
  image: "http://www.welikela.com/wp-content/uploads/2015/08/factory-tea-boba.jpg",
  name: "Boba Time",
  address: "701 S Vermont Ave, Los Angeles",
  postcode: "90020",
  city: "Los Angeles",
  country: "USA"
})
store_clover_juice = Store.create!({
  image: "http://losangeles.grubstreet.com/20130124_clover_560x375.jpg",
  name: "Clover Juice",
  address: "342 S La Brea Ave, Los Angeles",
  postcode: "90020",
  city: "Los Angeles",
  country: "USA"
})
store_starbucks = Store.create!({
  image: "http://media3.s-nbcnews.com/j/msnbc/Components/Photo_StoryLevel/080226/080226-starbucks-hmed10a.grid-6x2.jpg",
  name: "Starbucks",
  address: "1912 Pike Pl, Seattle",
  postcode: "90012",
  city: "Seattle",
  country: "USA"
})
store_711 = Store.create!({
  image: "http://media2.wxyz.com/photo/2015/01/29/7-11%20robbery,%2006-20-14_1422543137400_12862758_ver1.0_640_480.JPG",
  name: "7/11",
  address: "535 S State St, Chicago",
  postcode: "90027",
  city: "Chicago",
  country: "USA"
})
store_sul_beans = Store.create!({
  image: "http://cfile1.uf.tistory.com/image/253F143552481D5905E46C",
  name: "Sul & Beans",
  address: "621 S Western Ave #208, Los Angeles",
  postcode: "90027",
  city: "Los Angeles",
  country: "USA"
})
store_lemonade = Store.create!({
  image: "http://www.poiseblog.com/uploads/3/7/0/5/37053913/3890226_orig.jpg",
  name: "Lemonade",
  address: " 505 S Flower St, Los Angeles",
  postcode: "90027",
  city: "Los Angeles",
  country: "USA"
})
store_urth_cafe = Store.create!({
  image: "http://cdn.visitwesthollywood.com/sites/default/master/files/zzdata-Urth-Caffe_bee37636-5056-a348-3a845e93a32c003c.jpg",
  name: "Urth Cafe",
  address: " 451 S Hewitt St Los Angeles,",
  postcode: "90027",
  city: "Los Angeles",
  country: "USA"
})
store_cafe_dulce = Store.create!({
  image: "http://3apq7g38q3kw2yn3fx4bojii.wpengine.netdna-cdn.com/wp-content/uploads/2015/07/iced-coffee-750x500.jpg",
  name: "Cafe_Dulce",
  address: " 134 Japanese Village Plz Bldg E, Los Angeles",
  postcode: "90027",
  city: "Los Angeles",
  country: "USA"
})
store_perch = Store.create!({
  image: "https://media-cdn.tripadvisor.com/media/photo-s/08/f6/55/80/the-perch.jpg",
  name: "Perch",
  address: " 448 S Hill St, Los Angeles",
  postcode: "90027",
  city: "Los Angeles",
  country: "USA"
})

[
  # this array is for store 1
  # COCO FRESH TEA & JUICE
  { name: "Black Tea", price: 2.30    },
  { name: "House Milk Tea", price: 2.99    },
  { name: "Pudding Milk Tea", price: 2.99    },
  { name: "Taro Milk Tea", price: 2.76    },
  { name: "2 Ladies (Milk Tea w/Pudding and Pearls", price: 3.67    },
  { name: "Tea Latte", price: 3.67    },
  { name: "Matcha Latte With Red Bean", price: 3.67    },
  { name: "Cream Green Tea", price: 2.30    },
  { name: "Green Tea", price: 2.30    },
  { name: "Bubble Tea (Pearl Milk Tea)", price: 3.22    },
  { name: "Jasmine Milk Tea", price: 3.22    },
  { name: "Cream Taro Milk Tea", price: 3.22    },
  { name: "3 Buddies", price: 3.67    },
  { name: "Matcha Latte", price: 3.22    },
  { name: "Cream Black Tea", price: 3.22    },
  { name: "Chocolate Milk Tea", price: 2.76    },
  { name: "Grapefruit Green Tea", price: 4.13    },
  { name: "Lemon Green Tea", price: 4.13    },
  { name: "Lemon Dunk", price: 4.82    },
  { name: "Orange juice", price: 4.13    },
  { name: "House Milk Tea", price: 2.53    },
  { name: "Passion Fruit Green Tea", price: 3.22    },
  { name: "Green Tea Yogurt", price: 3.67    },
  { name: "Grapefruit Yogurt", price: 4.13    },
  { name: "Passion Mango Slush", price: 3.22    },
  { name: "Taro Slush", price: 3.67    },
  { name: "Grapefruit Juice", price: 4.13    },
  { name: "Lemon Black Tea", price: 4.13    },
  { name: "Mango Green Tea", price: 3.22    },
  { name: "Orange Green Tea", price: 4.13    },
  { name: "Mango Green Tea", price: 3.22    },
  { name: "Tropical Special", price: 4.13    },
  { name: "Mango Yogurt", price: 3.67    },
  { name: "Lemon Yogurt", price: 4.59    },
  { name: "Mango Slush", price: 3.67    }
].each do |item_attributes|
  store_coco_fresh.items.create!(item_attributes)
end

[
  #BEER BELLY
  { name: "Jupiler Beer", price: 5.00    },
  { name: "Caldera", price: 5.00    },
  { name: "Maui Bikini Blonde", price: 5.00    },
  { name: "Hanger 24 Helles Lager", price: 5.00    },
  { name: "Black Market Aftermath Pale Ale", price: 5.00    },
  { name: "Ballast Point Sculpin IPA", price: 5.00    },
  { name: "Golden Road Hefeweizen", price: 5.00   },
  { name: "Modern Times Balck House Stout", price: 6.00    },
  { name: "Modern Times Fortunate Islands Wheat", price: 6.00    },
  { name: "Modern Times Blazing World Amber", price: 6.00    },
  { name: "Logsdon Seizoen Bretta", price: 22.00    },
  { name: "The Bruery Saison Rue", price: 19.00    },
  { name: "Liefmans Cuvee Brut", price: 18.00    },
  { name: "Azima Cava (Sparkling Wine)", price: 31.00    },
  { name: "Blackwater Blanc MMXXII", price: 28.00    },
  { name: "Julian Hard Cider", price: 12.00    },
  { name: "Craft Sodas", price: 3.00    },
].each do |item_attributes|
  store_beer_belly.items.create!(item_attributes)
end

[
  #STUMPTON
  { name: "All natural Boylan Cola (12oz)", price: 3.00    },
  { name: "Bundaberg Ginger Beer (375ml", price: 3.00    },
  { name: "Virgil's Cherry Cream Soda", price: 3.00    },
  { name: "Harney & Sons Organic Peach Tea (16oz)", price: 4.00    },
  { name: "Stumpton Cold Brew Coffee (10.5oz)", price: 5.00    },
  { name: "Stumpton Cold Brew Coffee w /Chocolate (16 oz)", price: 5.00    },
  { name: "All Natural Boylan Diet Cola (12oz)", price: 3.00    },
  { name: "Bundberg Grapefruit Soda (275 ml)", price: 3.00    },
  { name: "Virgils Rootbeer (12oz)", price: 3.00    },
  { name: "Harney & Sons Organica Green Tea", price: 4.00    },
  { name: "Stumpton Cold Brew Coffee w/ Milk (16 oz)", price: 5.00    }
].each do |item_attributes|
  store_stumptown.items.create!(item_attributes)
end

[
  #BOBA TIME
  { name: "Organic Earl Grey 12oz", price: 2.25    },
  { name: "Organic Assam Sewper 12 oz", price: 2.25    },
  { name: "Japan Pineapple Papaya 12oz", price: 2.25    },
  { name: "China Chun Hao Jasmine 12oz", price: 2.25    },
  { name: "Organic White Pomegranate 12oz", price: 2.25    },
  { name: "Iced Tea Organic Black Plumberry 12oz", price: 2.25    },
  { name: "Iced Tea Organic Crimson Berry 12oz", price: 2.25    },
  { name: "Organic Masala Chai Latte 18oz", price: 4.75    },
  { name: "Organic Assam Sewper Milk Tea Latte 18oz", price: 4.75    },
  { name: "Speciality Japanese-style Hario Hand Drip 12oz", price: 4.50    },
  { name: "Dulce Iced Coffee 18oz", price: 2.50    },
  { name: "Iced Caffe Latte 18oz", price: 3.75    },
  { name: "Iced Americano 18oz", price: 2.75    },
  { name: "Espresso", price: 2.25    },
  { name: "Macchiato", price: 2.75    },
  { name: "Lamill Drip 12oz", price: 1.95    },
  { name: "Cappuccino", price: 3.50    },
  { name: "Cafe Au Lait 16oz", price: 3.00    },
  { name: "Cafe Latte 12oz", price: 4.25    }
].each do |item_attributes|
  store_boba_time.items.create!(item_attributes)
end

[
  #CLOVER JUICE
  { name: "Taro Slush", price: 2.25    },
  { name: "Strawberry Slush", price: 2.25    },
  { name: "Watermelon Slush", price: 2.25    },
  { name: "Mango Slush", price: 2.25    },
  { name: "Kiwi Slush", price: 2.25    },
  { name: "Peach Slush", price: 2.25    },
  { name: "Green Apple Slush", price: 2.25    },
  { name: "Cantaloupe Slush", price: 2.25    },
  { name: "Pineapple Slush", price: 2.25    },
  { name: "Passion Fruit Slush", price: 2.25    },
  { name: "Mixed Grains Slush", price: 2.25    },
  { name: "Grape Slush", price: 2.25    },
  { name: "Lychee Slush", price: 2.25    },
  { name: "Lemon Slush", price: 2.25    },
  { name: "Citron Slush", price: 2.25    },
  { name: "Honeydew Slush", price: 2.25    },
  { name: "Milk Tea Slush", price: 2.25    },
  { name: "Thai Milk Tea Slush", price: 2.25    },
  { name: "Orange Mango Slush", price: 2.25    }
].each do |item_attributes|
  store_clover_juice.items.create!(item_attributes)
end

#LEMONADE
[
  { name: "Old Fashioned", price: 3.00    },
  { name: "Coconut Apple", price: 3.00    },
  { name: "Guava Limeade", price: 3.00    },
  { name: "Blueberry Mint", price: 3.00    },
  { name: "Blood-Orange", price: 3.00    },
  { name: "Arnold Palmer", price: 3.00    }
].each do |item_attributes|
  store_lemonade.items.create!(item_attributes)
end

[
  #URTH CAFE
  { name: "Espresso (single)", price: 2.75    },
  { name: "Espresso (doulbe)", price: 3.25    },
  { name: "Espresso Macchiato (single)", price: 3.25    },
  { name: "Espresso Macchiato (double)", price: 3.75    },
  { name: "Caffe Bebero (single)", price: 3.25    },
  { name: "Cafe Bebero (double)", price: 3.75    },
  { name: "Cappuccino (small)", price: 3.50    },
  { name: "Cappuccino (medium)", price: 3.95    },
  { name: "Cappuccino (large)", price: 4.25    },
  { name: "Italian Cappuccino (small)", price: 3.50    },
  { name: "Italian Cappuccino (medium)", price: 3.95    },
  { name: "Italian Cappuccino (large)", price: 4.25    },
  { name: "Gran Caffe Cappuccino (small)", price: 3.50    },
  { name: "Gran Caffe Cappuccino (medium)", price: 3.95    },
  { name: "Gran Caffe Cappuccino (large)", price: 4.25    },
  { name: "Cafe Latte (small)", price: 3.50    },
  { name: "Cafe Latte (medium)", price: 3.95    },
  { name: "Cafe Latte (large)", price: 4.25    },
  { name: "Spanish Latte (small)", price: 4.00    },
  { name: "Spanish Latte (medium)", price: 4.50    },
  { name: "Spanish Latte (large)", price: 4.75    },
  { name: "Honey Vanilla Latte (small)", price: 4.00    },
  { name: "Honey Vanilla Latte (medium)", price: 4.50    },
  { name: "Honey Vanilla Latte (large)", price: 4.75    },
  { name: "Cafe Mocha (small)", price: 4.00    },
  { name: "Cafe Mocha (medium)", price: 4.50    },
  { name: "Cafe Mocha (large)", price: 4.75    },
  { name: "Mocha Mint (small)", price: 4.25    },
  { name: "Mocha Mint (medium)", price: 4.75    },
  { name: "Mocha Mint (large)", price: 4.95    },
  { name: "Caffe Quadra (small)", price: 4.25    },
  { name: "Caffe Quadra (medium)", price: 4.75    },
  { name: "Caffe Quadra (large)", price: 4.95    },
  { name: "Rude Awakening (small)", price: 3.00    },
  { name: "Rude Awakening (medium)", price: 3.25    },
  { name: "Rude Awakening (large)", price: 3.50    }
].each do |item_attributes|
  store_urth_cafe.items.create!(item_attributes)
end

[
  #CAFE DULCE
   { name: "All natural Boylan Cola (12oz)", price: 3.00    },
  { name: "Bundaberg Ginger Beer (375ml", price: 3.00    },
  { name: "Virgil's Cherry Cream Soda", price: 3.00    },
  { name: "Harney & Sons Organic Peach Tea (16oz)", price: 4.00    },
  { name: "Stumpton Cold Brew Coffee (10.5oz)", price: 5.00    },
  { name: "Stumpton Cold Brew Coffee w /Chocolate (16 oz)", price: 5.00    },
  { name: "All Natural Boylan Diet Cola (12oz)", price: 3.00    },
  { name: "Bundberg Grapefruit Soda (275 ml)", price: 3.00    },
  { name: "Virgils Rootbeer (12oz)", price: 3.00    },
  { name: "Harney & Sons Organica Green Tea", price: 4.00    },
  { name: "Stumpton Cold Brew Coffee w/ Milk (16 oz)", price: 5.00    }
].each do |item_attributes|
  store_cafe_dulce.items.create!(item_attributes)
end

[
  #PERCH
  { name: "Clean Green 16oz", price: 4.25    },
  { name: "Coco Snow 16oz", price: 8.50    },
  { name: "Gingersnap 16oz", price: 8.50    },
  { name: "Glow 16oz", price: 8.50    },
  { name: "Go Big 16oz", price: 8.50    },
  { name: "Gold N Greens 16oz", price: 8.50    },
  { name: "Pink Chia 16oz", price: 8.50    },
  { name: "Rev'D Up 16oz", price: 4.25    },
  { name: "The Quench 16oz", price: 8.50    },
  { name: "Veg'D 16oz", price: 9.50    },
  { name: "The Clover 16oz", price: 8.50    },
  { name: "Menage A Trois 16oz", price: 8.50    },
  { name: "Coco H2O 16oz", price: 8.50    },
  { name: "Black Chia 16oz", price: 8.50    },
  { name: "Le Lait", price: 10.00    },
  { name: "Rose LAIT", price: 12.00    },
  { name: "Caramel Sale", price: 12.00    },
  { name: "Gingersnap", price: 3.00    },
  { name: "Gold N Greens", price: 3.00    },
  { name: "Quench", price: 3.00    },
  { name: "1 Day Beginner Cleanse", price: 70.00    },
  { name: "1 Day Intermediate Cleanse", price: 70.00    },
  { name: "1 Day Advanced Cleanse", price: 70.00    }
].each do |item_attributes|
  store_perch.items.create!(item_attributes)
end



# stores.each_with_index do |store, index|
#   if index + 1 <= allitems.length
#     allitems[index].each do |item|
#       newitem = store.items.create!(item)
#     end
#   end
# end

# stores.each_with_index do |store, index|
#   allitems[index].each do |item|
#     item = Item.create(item)
#     item.update(store_id: store)
#   end
# end
