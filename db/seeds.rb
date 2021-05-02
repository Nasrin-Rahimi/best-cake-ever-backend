# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customers = Customer.create([{name: 'Nasrin', password: 'mah'}, {name: 'Mateen', password: '123'}])

category = Category.create(
    name: 'Bread, Fresh Baked', image: 'https://assets-prd-weg.unataops.com/web/category_tile/907.jpg'
)
category.products.create([
{name: ' Bread, Pane Italian', unit_price: 3.00, weight: '14 ounce',
 image: 'https://assets-prd-weg.unataops.com/web/product_medium/afd7e7c6f5b05ca8b6d4629fbb62987da5b714fb.jpg',
 description: 'Traditional Italian bread, moist crumb with a thin crispy crust. Great for dipping!'
},

{name: 'Garlic Tuscan Bread', unit_price: 5.00, weight: '13 ounce',
image: 'https://assets-prd-weg.unataops.com/web/product_medium/f3b278ee199e11f9537ef22810d709222e46b17f.jpg',
description: 'Basted with garlic oil and sprinkled with sea salt, this Italian style bread has a crispy, eggshell crust with a super-soft, moist flavorful crumb.'
},

{name: 'Vive Baguette', unit_price: 3.00, weight: '10 ounce',
image: 'https://assets-prd-weg.unataops.com/web/product_medium/ac04eef47a5792d233602d8c00c19bc9546ddc79.jpg',
description: 'A delightful, slender French baguette has a crackling crisp, golden exterior and creamy interior. Perfect for pairing with your favorite brie or enjoying with any meal.'
},

])

category = Category.create(
    name: 'Breakfast', image: 'https://assets-prd-weg.unataops.com/web/category_tile/c54f3ca1c8fbc7f031efb6fc20d22ae111cd68e2.jpg'
)

category.products.create([
    {
        name: 'Croissant, Large, Plain 4 Pack', unit_price: 7.00, weight: '6 ounce',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/885d04b94ec6a0d00b5d19a97114d59139a9e2cf.jpg',
        description: 'Flaky, all-butter croissants.'
    },
    {
        name: 'Baked Donuts', unit_price: 1.00, weight: '1 each',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/bc7d1429b3f20590f0a712f3aabc3ce0db6e2cf6.jpg',
        description: 'Assorted donuts, with a variety of toppings and fillings. Baked fresh throughout the day and merchandised on a self-serve display.'
    },
    {
        name: 'Muffins, Blueberry, 4 Pack', unit_price: 6.00, weight: '19 ounce',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/0a36cb19d8b8b80a72415adf81ee69c01a23be33.jpg',
        description: 'A 4 pack of our moist and cakey muffins loaded with plump, juicy blueberries.'
    }
])

category = Category.create(
    name: 'Cakes', image: 'https://assets-prd-weg.unataops.com/web/category_tile/1661.jpg'
)

category.products.create([
    {
        name: '1 Layer Fruit Topped Shortcake', unit_price: 15.00, weight: '25 ounce',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/69d228ca69a53587314448767f4b6cdb97e5e23a.jpg',
        description: 'Moist gold cake , split, filled and decorated with fresh whipped cream. Topped with the seasons best fresh strawberries Food You Feel Good About. Serves 6-8'
    },
    {
       name: 'Chocolate Raspberry 3 Layer Cake Mini', unit_price: 12.00, weight: '12 ounce',
       image: 'https://assets-prd-weg.unataops.com/web/product_medium/d06ae4d0b897004508aa2774e03c24b40434dd97.jpg',
       description: '3 layers of moist chocolate cake, each layer is filled with a creamy chocolate pastry cream and rasberry filling. Topped with a layer of freshly made chocolate ganache. Garnished with fresh raspberries, decadent large dark chocolate curls.'
    },
    {
        name: '2 Layer Gold Cake w/ Buttercreme', unit_price: 19.00, weight: '42 ounce',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/15cd482c3fcd6df1fc11da15d26617d0e2bd054e.jpg',
        description: 'Moist gold cake frosted with buttercream icing. Decorated with white chocolate balloons available in a variety of colors or decorated with icing flowers. '
    },
    {
        name: 'Three Layer Red Velvet Cake', unit_price: 25.00, weight: '51 ounce',
        image: 'https://assets-prd-weg.unataops.com/web/product_medium/2a5e8e3544c93837b1a1856dfe17af758258d6f1.jpg',
        description: '3 Layers of moist red velvet cake, filled and topped with a delicious cream cheese icing. Garnished with natural red sequins. No artificial flavors or colors. Serves 8-10'
    }
])

category = Category.create(
    name: 'Desserts & Pastries', image: 'https://assets-prd-weg.unataops.com/web/category_tile/566.jpg'
)

category = Category.create(
    name: 'Rolls', image: 'https://assets-prd-weg.unataops.com/web/category_tile/564.jpg'
)

