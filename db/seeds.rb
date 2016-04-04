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
    image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg",
    name: "Coco Fresh Tea & Juice",
    address: "521 S Olive St",
    postcode: "90013",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg",
    name: "Beer Belly",
    address: "532 S Western",
    postcode: "90020",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg",
    name: "Starbucks",
    address: "138 S Central Ave",
    postcode: "90012",
    city: "Los Angeles",
    country: "USA"
  },
  {
    image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg",
    name: "7/11",
    address: "4650 Franklin Ave",
    postcode: "90027",
    city: "Los Angeles",
    country: "USA"
  }
])




coco_items = Item.create([
  {
    name: "Black Tea",
    price: 2.30
  },
  {
    name: "House Milk Tea",
    price: 2.99
  },
  {
    name: "Pudding Milk Tea",
    price: 2.99
  },
  {
    name: "Taro Milk Tea",
    price: 2.76
  },
  {
    name: "2 Ladies (Milk Tea w/Pudding and Pearls",
    price: 3.67
  },
  {
    name: "Tea Latte",
    price: 3.67
  },
  {
    name: "Matcha Latte With Red Bean",
    price: 3.67
  },
  {
    name: "Cream Green Tea",
    price: 2.30
  },
  {
    name: "Green Tea",
    price: 2.30
  },
  {
    name: "Bubble Tea (Pearl Milk Tea)",
    price: 3.22
  },
  {
    name: "Jasmine Milk Tea",
    price: 3.22
  },
  {
    name: "Cream Taro Milk Tea",
    price: 3.22
  },
  {
    name: "3 Buddies",
    price: 3.67
  },
  {
    name: "Matcha Latte",
    price: 3.22
  },
  {
    name: "Cream Black Tea",
    price: 3.22
  },
  {
    name: "Chocolate Milk Tea",
    price: 2.76
  },
  {
    name: "Grapefruit Green Tea",
    price: 4.13
  },
  {
    name: "Lemon Green Tea",
    price: 4.13
  },
  {
    name: "Lemon Dunk",
    price: 4.82
  },
  {
    name: "Orange juice",
    price: 4.13
  },
  {
    name: "House Milk Tea",
    price: 2.53
  },
  {
    name: "Passion Fruit Green Tea",
    price: 3.22
  },
  {
    name: "Green Tea Yogurt",
    price: 3.67
  },
  {
    name: "Grapefruit Yogurt",
    price: 4.13
  },
  {
    name: "Passion Mango Slush",
    price: 3.22
  },
  {
    name: "Taro Slush",
    price: 3.67
  },
  {
    name: "Grapefruit Juice",
    price: 4.13
  },
  {
    name: "Lemon Black Tea",
    price: 4.13
  },
  {
    name: "Mango Green Tea",
    price: 3.22
  },
  {
    name: "Orange Green Tea",
    price: 4.13
  },
  {
    name: "Mango Green Tea",
    price: 3.22
  },
  {
    name: "Tropical Special",
    price: 4.13
  },
  {
    name: "Mango Yogurt",
    price: 3.67
  },
  {
    name: "Lemon Yogurt",
    price: 4.59
  },
  {
    name: "Mango Slush",
    price: 3.67
  }
])





beerbelly_items  = Item.create([
  {
    name: "All natural Boylan Cola (12oz)",
    price: 3.00
  },
  {
    name: "Bundaberg Ginger Beer (375ml",
    price: 3.00
  },
  {
    name: "Virgil's Cherry Cream Soda",
    price: 3.00
  },
  {
    name: "Harney & Sons Organic Peach Tea (16oz)",
    price: 4.00
  },
  {
    name: "Stumpton Cold Brew Coffee (10.5oz)",
    price: 5.00
  },
  {
    name: "Stumpton Cold Brew Coffee w /Chocolate (16 oz)",
    price: 5.00
  },
  {
    name: "All Natural Boylan Diet Cola (12oz)",
    price: 3.00
  },
  {
    name: "Bundberg Grapefruit Soda (275 ml)",
    price: 3.00
  },
  {
    name: "Virgils Rootbeer (12oz)",
    price: 3.00
  },
  {
    name: "Harney & Sons Organica Green Tea w/ Ginko and Citrus(16 oz)",
    price: 4.00
  },
  {
    name: "Stumpton Cold Brew Coffee w/ Milk (16 oz)",
    price: 5.00
  }




starbucks_items = Item.create([
{name: "Freshley Brewed Coffee", price: 1.95},
{name: "96 oz Coffee Traveler", price: 14.95},
{name: "Iced Coffee", price: "2.25"},
{name: "Starbucks Cold Brew", price: 2.75},
{name: "Hot Chocolate", price: 2.75},
{name: "Classic Chai Tea Latte", price: 3.45},
{name: "Oprah Cinnamon Chai Latte", price: 3.75},
{name: "Iced Caramel Macchiato", price: 3.65},
{name: "Iced Vanilla Latte", price: 3.35},
{name: "Iced Caffe Mocha", price: 3.35},
{name: "Vanilla Macchiato", price: 3.65},
{name: "Caramel Macchiato", price: 3.65},
{name: "Hazelnut Macchiato", price: 3.65},
{name: "White Chocolate Mocha", price: 3.65},
{name: "Cinnamon Dolce Latte", price: 3.65},
{name: "Caffe Latte", price: 2.85},
{name: "Vanilla Latte", price: 3.35},
{name: "Skinny Vanilla Latte", price: 3.35},
{name: "Caffe Mocha", price: 3.35},
{name: "Skinny Caffe Mocha", price: 3.35},
{name: "Caffe Americano", price: 2.25},
{name: "Cappuccino", price: 3.15},
{name: "Flat White", price: 3.95},
{name: "Latte Macchiato", price: 3.95},
{name: "Iced Black Tea", price: 2.25},
{name: "Iced Green Tea", price: 2.25},
{name: "Passion Tango", price: 2.45},
{name: "Vanilla Bean Frappuccino", price: 3.45},
{name: "Mocha Frappuccino", price: 3.95},
{name: "Caramel Frappuccino", price: 3.95},
{name: "Caramel Brulee Frappuccino", price: 4.45},
{name: "Strawberry Acai Refresher", price: 2.95},
{name: "Peach Green Tea Lemonade", price: 2.95},
{name: "Strawberry Smoothie", price: 5.95},
{name: "Mango Carrot Smoothie", price: 5.95},
{name: "Sweet Greens Smoothie", price: 5.95}
])

seveneleven_items = Item.create([
{name: "Pepsi 20 oz", price: 1.99},
{name: "Diet Pepsi 20 oz", price: 1.99},
{name: "Mountain Dew 20 oz", price: 1.99},
{name: "Diet Mtn Dew 20 oz", price: 1.99},
{name: "Fanta Orange 20 oz", price: 1.99},
{name: "Dr Pepper 20 oz", price: 1.99},
{name: "Diet Dr Pepper 20 oz", price: 1.99},
{name: "Canada Dry Gingerale 20 oz", price: 1.99},
{name: "Diet Coke 20 oz", price: 1.99},
{name: "Coca Cola 20 oz", price: 1.99},
{name: "Sprite 20 oz", price: 1.99},
{name: "Starbucks Doubleshot Vanilla", price: 3.29},
{name: "Starbucks Doubleshot Mocha", price: 3.29},
{name: "Frappuccino Moca 13.7 oz", price: 3.49},
{name: "Frappuccino Coffee 13.7 oz", price: 3.49},
{name: "Coca-Cola Zero 20 oz", price: 1.99},
{name: "Gatorade Cool Blue Cherry 28 oz", price: 2.62},
{name: "Vita Coco Pure Coconut Water", price: 3.69},
{name: "Gatorade Orange 28 0z", price: 2.83},
{name: "Gatorade Lemon Lime 28 oz", price: 2.81},
{name: "Gatorade Fruit Punch 20 oz", price: 1.99},
{name: "Gatorade Lemon Lime 20 oz", price: 1.99},
{name: "Gatorade Orange 20 oz", price: 1.99},
{name: "V8 Vegetable Juice 12 oz", price: 2.09}
])


