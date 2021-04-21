# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customers = Customer.create([{name: 'Nasrin', password: 'mah'}, {name: 'Mateen', password: '123'}])

categories = Category.create([
    {name: 'Bread, Fresh Baked'},
    {name: 'Bread, Packaged'},
    {name: 'Cakes'}
])

Products = Product.create([
    {name: 'Garlic Tuscan Bread', category_id: 1, unit_price: 5.00, weight: '13 ounce', description: "Basted with garlic oil and sprinkled with sea salt, this Italian style bread has a crispy, eggshell crust with a super-soft, moist flavorful crumb."},
    {name: 'Organic 27 Grains & Seeds Sandwich Bread, Full Loaf', category_id: 2, unit_price: 5.50, weight: '24 ounce', description: 'USDA Organic. Our artisan bakery team sourced the best organic ingredients for these recipes so that we could make great organic bread in our own bakeshop in Rochester, NY. Perfect for toast and sandwiches.'},
    {name: 'Wegmans 1 Layer Fruit Topped Shortcake', category_id: 3, unit_price: 15.00, weight: '25 ounce', description: "Moist gold cake , split, filled and decorated with fresh whipped cream. Topped with the season's best fresh strawberries Food You Feel Good About. Serves 6-8"}      
])

