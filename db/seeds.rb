# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Store.destroy_all
Item.destroy_all

# list = ["lemon", "mint leaves", "coke", "orange juice", "apple juice", "pear juice", "whisky", "absinth"]
# ingredient_list = []

# list.each do |element|
#  ingredient_list << Ingredient.create(name: element)
# end


stores = Store.create([
  {
    image: "http://austinot.com/wp-content/uploads/2015/07/Cocos-Cafe-Boba-Tea-1024x683.jpg",
    name: "Coco Fresh Tea & Juice",
    address: "129 E 45th St, New York",
    postcode: "90013",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://cdn.pastemagazine.com/www/articles/LABEERBARS-NEWMAIN.jpg",
    name: "Beer Belly",
    address: "532 S Western, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://www.pbwc.ca/images/stumptown-stubby-04.jpg",
    name: "Stumptown",
    address: "7871 Santa Monica Blvd, West Hollywood",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://www.welikela.com/wp-content/uploads/2015/08/factory-tea-boba.jpg",
    name: "Boba Time",
    address: "701 S Vermont Ave, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://losangeles.grubstreet.com/20130124_clover_560x375.jpg",
    name: "Clover Juice",
    address: "342 S La Brea Ave, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://media3.s-nbcnews.com/j/msnbc/Components/Photo_StoryLevel/080226/080226-starbucks-hmed10a.grid-6x2.jpg",
    name: "Starbucks",
    address: "1912 Pike Pl, Seattle",
    postcode: "90012",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://media2.wxyz.com/photo/2015/01/29/7-11%20robbery,%2006-20-14_1422543137400_12862758_ver1.0_640_480.JPG",
    name: "7/11",
    address: "535 S State St, Chicago",
    postcode: "90027",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://austinot.com/wp-content/uploads/2015/07/Cocos-Cafe-Boba-Tea-1024x683.jpg",
    name: "Coco Fresh Tea & Juice",
    address: "129 E 45th St, New York",
    postcode: "90013",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://cdn.pastemagazine.com/www/articles/LABEERBARS-NEWMAIN.jpg",
    name: "Beer Belly",
    address: "532 S Western, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://www.pbwc.ca/images/stumptown-stubby-04.jpg",
    name: "Stumptown",
    address: "7871 Santa Monica Blvd, West Hollywood",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://www.welikela.com/wp-content/uploads/2015/08/factory-tea-boba.jpg",
    name: "Boba Time",
    address: "701 S Vermont Ave, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },{
    image: "http://losangeles.grubstreet.com/20130124_clover_560x375.jpg",
    name: "Clover Juice",
    address: "342 S La Brea Ave, Los Angeles",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://media3.s-nbcnews.com/j/msnbc/Components/Photo_StoryLevel/080226/080226-starbucks-hmed10a.grid-6x2.jpg",
    name: "Starbucks",
    address: "1912 Pike Pl, Seattle",
    postcode: "90012",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://media2.wxyz.com/photo/2015/01/29/7-11%20robbery,%2006-20-14_1422543137400_12862758_ver1.0_640_480.JPG",
    name: "7/11",
    address: "535 S State St, Chicago",
    postcode: "90027",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://cfile1.uf.tistory.com/image/253F143552481D5905E46C",
    name: "Sul & Beans",
    address: "621 S Western Ave #208, Los Angeles",
    postcode: "90027",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://www.poiseblog.com/uploads/3/7/0/5/37053913/3890226_orig.jpg",
    name: "Lemonade",
    address: " 505 S Flower St, Los Angeles",
    postcode: "90027",
    city: "Los Angeles",
    country: "USA"
  }
])


coco = Store.first

coco_items = Item.create([
  {
    name: "Black Tea",
    price: 2.30,
    store: coco
  },
  {
    name: "House Milk Tea",
    price: 2.99,
    store: coco
  },
  {
    name: "Pudding Milk Tea",
    price: 2.99,
    store: coco
  },
  {
    name: "Taro Milk Tea",
    price: 2.76,
    store: coco
  },
  {
    name: "2 Ladies (Milk Tea w/Pudding and Pearls",
    price: 3.67,
    store: coco
  },
  {
    name: "Tea Latte",
    price: 3.67,
    store: coco
  },
  {
    name: "Matcha Latte With Red Bean",
    price: 3.67,
    store: coco
  },
  {
    name: "Cream Green Tea",
    price: 2.30,
    store: coco
  },
  {
    name: "Green Tea",
    price: 2.30,
    store: coco
  },
  {
    name: "Bubble Tea (Pearl Milk Tea)",
    price: 3.22,
    store: coco
  },
  {
    name: "Jasmine Milk Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "Cream Taro Milk Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "3 Buddies",
    price: 3.67,
    store: coco
  },
  {
    name: "Matcha Latte",
    price: 3.22,
    store: coco
  },
  {
    name: "Cream Black Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "Chocolate Milk Tea",
    price: 2.76,
    store: coco
  },
  {
    name: "Grapefruit Green Tea",
    price: 4.13,
    store: coco
  },
  {
    name: "Lemon Green Tea",
    price: 4.13,
    store: coco
  },
  {
    name: "Lemon Dunk",
    price: 4.82,
    store: coco
  },
  {
    name: "Orange juice",
    price: 4.13,
    store: coco
  },
  {
    name: "House Milk Tea",
    price: 2.53,
    store: coco
  },
  {
    name: "Passion Fruit Green Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "Green Tea Yogurt",
    price: 3.67,
    store: coco
  },
  {
    name: "Grapefruit Yogurt",
    price: 4.13,
    store: coco
  },
  {
    name: "Passion Mango Slush",
    price: 3.22,
    store: coco
  },
  {
    name: "Taro Slush",
    price: 3.67,
    store: coco
  },
  {
    name: "Grapefruit Juice",
    price: 4.13,
    store: coco
  },
  {
    name: "Lemon Black Tea",
    price: 4.13,
    store: coco
  },
  {
    name: "Mango Green Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "Orange Green Tea",
    price: 4.13,
    store: coco
  },
  {
    name: "Mango Green Tea",
    price: 3.22,
    store: coco
  },
  {
    name: "Tropical Special",
    price: 4.13,
    store: coco
  },
  {
    name: "Mango Yogurt",
    price: 3.67,
    store: coco
  },
  {
    name: "Lemon Yogurt",
    price: 4.59,
    store: coco
  },
  {
    name: "Mango Slush",
    price: 3.67,
    store: coco
  }
])



beerbelly = Store.second

beerbelly_items  = Item.create([
  {
    name: "All natural Boylan Cola (12oz)",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Bundaberg Ginger Beer (375ml",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Virgil's Cherry Cream Soda",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Harney & Sons Organic Peach Tea (16oz)",
    price: 4.00,
    store: beerbelly
  },
  {
    name: "Stumpton Cold Brew Coffee (10.5oz)",
    price: 5.00,
    store: beerbelly
  },
  {
    name: "Stumpton Cold Brew Coffee w /Chocolate (16 oz)",
    price: 5.00,
    store: beerbelly
  },
  {
    name: "All Natural Boylan Diet Cola (12oz)",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Bundberg Grapefruit Soda (275 ml)",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Virgils Rootbeer (12oz)",
    price: 3.00,
    store: beerbelly
  },
  {
    name: "Harney & Sons Organica Green Tea w/ Ginko and Citrus(16 oz)",
    price: 4.00,
    store: beerbelly
  },
  {
    name: "Stumpton Cold Brew Coffee w/ Milk (16 oz)",
    price: 5.00,
    store: beerbelly
  }
])

starbucks = Store.third

starbucks_items = Item.create([
{name: "Freshley Brewed Coffee", price: 1.95, store: starbucks},
{name: "96 oz Coffee Traveler", price: 14.95, store: starbucks},
{name: "Iced Coffee", price: 2.25, store: starbucks},
{name: "Starbucks Cold Brew", price: 2.75, store: starbucks},
{name: "Hot Chocolate", price: 2.75, store: starbucks},
{name: "Classic Chai Tea Latte", price: 3.45, store: starbucks},
{name: "Oprah Cinnamon Chai Latte", price: 3.75, store: starbucks},
{name: "Iced Caramel Macchiato", price: 3.65, store: starbucks},
{name: "Iced Vanilla Latte", price: 3.35, store: starbucks},
{name: "Iced Caffe Mocha", price: 3.35, store: starbucks},
{name: "Vanilla Macchiato", price: 3.65, store: starbucks},
{name: "Caramel Macchiato", price: 3.65, store: starbucks},
{name: "Hazelnut Macchiato", price: 3.65, store: starbucks},
{name: "White Chocolate Mocha", price: 3.65, store: starbucks},
{name: "Cinnamon Dolce Latte", price: 3.65, store: starbucks},
{name: "Caffe Latte", price: 2.85, store: starbucks},
{name: "Vanilla Latte", price: 3.35, store: starbucks},
{name: "Skinny Vanilla Latte", price: 3.35, store: starbucks},
{name: "Caffe Mocha", price: 3.35, store: starbucks},
{name: "Skinny Caffe Mocha", price: 3.35, store: starbucks},
{name: "Caffe Americano", price: 2.25, store: starbucks},
{name: "Cappuccino", price: 3.15, store: starbucks},
{name: "Flat White", price: 3.95, store: starbucks},
{name: "Latte Macchiato", price: 3.95, store: starbucks},
{name: "Iced Black Tea", price: 2.25, store: starbucks},
{name: "Iced Green Tea", price: 2.25, store: starbucks},
{name: "Passion Tango", price: 2.45, store: starbucks},
{name: "Vanilla Bean Frappuccino", price: 3.45, store: starbucks},
{name: "Mocha Frappuccino", price: 3.95, store: starbucks},
{name: "Caramel Frappuccino", price: 3.95, store: starbucks},
{name: "Caramel Brulee Frappuccino", price: 4.45, store: starbucks},
{name: "Strawberry Acai Refresher", price: 2.95, store: starbucks},
{name: "Peach Green Tea Lemonade", price: 2.95, store: starbucks},
{name: "Strawberry Smoothie", price: 5.95, store: starbucks},
{name: "Mango Carrot Smoothie", price: 5.95, store: starbucks},
{name: "Sweet Greens Smoothie", price: 5.95, store: starbucks}
])


seveneleven = Store.last

seveneleven_items = Item.create([
{name: "Pepsi 20 oz", price: 1.99, store: seveneleven},
{name: "Diet Pepsi 20 oz", price: 1.99, store: seveneleven},
{name: "Mountain Dew 20 oz", price: 1.99, store: seveneleven},
{name: "Diet Mtn Dew 20 oz", price: 1.99, store: seveneleven},
{name: "Fanta Orange 20 oz", price: 1.99, store: seveneleven},
{name: "Dr Pepper 20 oz", price: 1.99, store: seveneleven},
{name: "Diet Dr Pepper 20 oz", price: 1.99, store: seveneleven},
{name: "Canada Dry Gingerale 20 oz", price: 1.99, store: seveneleven},
{name: "Diet Coke 20 oz", price: 1.99, store: seveneleven},
{name: "Coca Cola 20 oz", price: 1.99, store: seveneleven},
{name: "Sprite 20 oz", price: 1.99, store: seveneleven},
{name: "Starbucks Doubleshot Vanilla", price: 3.29, store: seveneleven},
{name: "Starbucks Doubleshot Mocha", price: 3.29, store: seveneleven},
{name: "Frappuccino Moca 13.7 oz", price: 3.49, store: seveneleven},
{name: "Frappuccino Coffee 13.7 oz", price: 3.49, store: seveneleven},
{name: "Coca-Cola Zero 20 oz", price: 1.99, store: seveneleven},
{name: "Gatorade Cool Blue Cherry 28 oz", price: 2.62, store: seveneleven},
{name: "Vita Coco Pure Coconut Water", price: 3.69, store: seveneleven},
{name: "Gatorade Orange 28 0z", price: 2.83, store: seveneleven},
{name: "Gatorade Lemon Lime 28 oz", price: 2.81, store: seveneleven},
{name: "Gatorade Fruit Punch 20 oz", price: 1.99, store: seveneleven},
{name: "Gatorade Lemon Lime 20 oz", price: 1.99, store: seveneleven},
{name: "Gatorade Orange 20 oz", price: 1.99, store: seveneleven},
{name: "V8 Vegetable Juice 12 oz", price: 2.09, store: seveneleven}
])


