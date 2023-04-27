User.destroy_all
Category.destroy_all
Farmer.destroy_all
Product.destroy_all

def print_result_errors(resource)
    puts resource.select { |r| !r.errors.empty? }.map { |r| "#{r.name}: #{r.errors.full_messages}" }
end

users = User.create([
    {   
        first_name: 'John',
        last_name: 'Smith',
        email: 'john@me.com',
        address: '34 Moon St',
        phone: '07345324353',
        isAdmin: false,
        password: 'john',
        farmer_id: 1
    },
    {   
        first_name: 'Bob',
        last_name: 'Dylan',
        email: 'bob@me.com',
        address: '34 Star St',
        phone: '23563483444',
        isAdmin: false,
        password: 'bob',
        customer_id: 1
    }
])

categories = Category.create([
    
    {
        name: 'Farm Products'
    },
    {
        name: 'Animals'
    },
    {
        name: 'Lands'
    }
])

farmers = Farmer.create([
    {   
        farm: 'Patch Farm',
        user: users.first
    },
    {   
        farm: 'Animal Farm',
        user: users.first
    }
])

products = Product.create([
    {   
        name: 'Pears',
        price: 2.50,
        quantity: '1 kg',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://media.self.com/photos/5b6b0bd7ff2fab32610fafc2/4:3/w_728,c_limit/pears.jpg'
    },
    {
        name: 'Artichokes',
        price: 3.60,
        quantity: '3 pieces',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1518735869015-566a18eae4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Lemon',
        price: 1.49,
        quantity: '6 pieces',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://www.realfoods.co.uk/ProductImagesID/277_1.jpg'
    },
    {
        name: 'Apricots',
        price: 4.50,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1501746877-14782df58970?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Yellow Peaches',
        price: 3.20,
        quantity: '8 pieces',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1542296663-c8002b3c8422?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2266&q=80'
    },
    {
        name: 'Apples',
        price: 1.60,
        quantity: '250g',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1515681412668-16d6d4a54ab1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'
    },
    {
        name: 'Raspberries',
        price: 2,
        quantity: '1 kg',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Zucchinis',
        price: 3.30,
        quantity: '6 pieces',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1549223672-c262a3763aab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Brown onions',
        price: 1.30,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1518977956812-cd3dbadaaf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Avocados',
        price: 3.00,
        quantity: '6 pieces',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1512070904629-fa988dab2fe1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Green Beans',
        price: 2.10,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/uploads/141143339879512fe9b0d/f72e2c85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Beef',
        price: 8.50,
        quantity: '500g',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'http://cdn.shopify.com/s/files/1/1844/0771/products/84b26ca83f6ab9914c49f65957d4329f_grande.jpg?v=1511148760'
    },
    {
        name: 'Sirloin Steak',
        price: 10.50,
        quantity: '800g',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80'
    },
    {
        name: 'Homemade Italian Sausage',
        price: 6.50,
        quantity: '500g',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://www.manusmenu.com/wp-content/uploads/2013/07/2-Salsiccia-3-1-of-1.jpg'
    },
    {
        name: 'Pasture-raised Bacon',
        price: 5.50,
        quantity: '500g',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1529856426070-e610ede5a2fd?ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80'
    },
    {
        name: 'Breakfast Salami',
        price: 4.80,
        quantity: '300g',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1542901031-ec5eeb518e83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Brussels Sprouts',
        price: 2,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Spinach',
        price: 1.20,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-10485-spinach_verdil2.jpg'
    },
    {
        name: 'Strawberries',
        price: 2.50,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://i2.wp.com/gardenmuseum.org.uk/wp-content/uploads/2019/05/Strawberries.jpg?resize=640%2C360&ssl=1'
    },
    {
        name: 'Peas',
        price: 2,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://portalvhds26k4f5tktj3ck.blob.core.windows.net/spotpics/sp42263.jpg'
    },
    {
        name: 'Melon',
        price: 3,
        quantity: '3 pieces',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-7997-melon_farthest_north4.jpg'
    },
    {
        name: 'Blueburries',
        price: 1.90,
        quantity: '150g',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1425934398893-310a009a77f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'
    },
    {
        name: 'Cucumbers',
        price: 1.80,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://munchies-images.vice.com/wp_upload/cucumber-tesco-valentines-day.jpg?crop=0.7111111111111111xw%3A1xh%3Bcenter%2Ccenter&resize=650%3A*&output-quality=55'
    },
    {
        name: 'Mixed Tomatoes',
        price: 3.50,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1443131612988-32b6d97cc5da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Rye Bread',
        price: 6,
        quantity: '1 piece',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--77451_11.jpg?itok=7W6mnqnB'
    },
    {
        name: 'Croissants',
        price: 5.20,
        quantity: '6 pieces',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://www.foodiewithfamily.com/wp-content/uploads/2020/04/How-to-make-croissants-2.jpg'
    },
    {
        name: 'Pain au Raisin',
        price: 2.90,
        quantity: '3 pieces',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://www.thespruceeats.com/thmb/1I6a8k1SGUBcpO_7ea4Ax_VixB4=/2250x2250/smart/filters:no_upscale()/pain-aux-raisins-GettyImages-124761833-57b5975f3df78cd39c5f6f73.jpg'
    },
    {
        name: 'Olive Bread',
        price: 3.90,
        quantity: '3 pieces',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://i.ytimg.com/vi/ZCPJ4tKj5A4/maxresdefault.jpg'
    },
    {
        name: 'Mini Breads',
        price: 4.90,
        quantity: '3 pieces',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1511278475330-1a31a6fc4dcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80'
    },
    {
        name: 'Bastard Bread',
        price: 5.90,
        quantity: '1 piece',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://images.unsplash.com/photo-1515823808611-65fd8e56c71a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Baguette',
        price: 1.20,
        quantity: '1 piece',
        category: categories[2],
        farmer: farmers[0],
        url_img: 'https://www.surlatable.com/images/customers/c1079/PRO-2635449/PRO-2635449_detail/zoom_variation_Default_view_1_1278x1278.jpg'
    },
    {
        name: 'Rhubarb',
        price: 5,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://www.lesboitesameuh.com/images/Image/Rhubarbe-500-g---Isabelle-Glatre-91.jpg'
    },
    {
        name: 'Tuscan Kale',
        price: 1.50,
        quantity: '1 bunch',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'http://wildco.co.uk/veggies/wp-content/uploads/2016/05/tuscan-kale-alt.jpg'
    },
    {
        name: 'Green apples',
        price: 2,
        quantity: '1kg',
        category: categories[0],
        farmer: farmers[0],
        url_img: 'https://www.concordmonitor.com/getattachment/f428f090-1f79-4bfb-b837-381835570822/pectin-lw-080417-ph3'
    },
    {
        name: 'Blue Potatoes',
        price: 2,
        quantity: '2kg',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://cdn.dtbrownseeds.co.uk/product-images/op/z/POT-154.jpg'
    },
    {
        name: 'Broccoli',
        price: 1.50,
        quantity: '3 pieces',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'https://www.sciencedaily.com/images/2019/05/190516142913_1_540x360.jpg'
    },
    {
        name: 'Jerusalem Artichokes',
        price: 2.50,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        url_img: 'http://eatdrinkpaleo.com.au/wp-content/uploads/2016/10/jerusalem-artichoke-recipes.jpg'
    },
    {
        name: 'Honey',
        price: 5.50,
        quantity: '1 pot - 500g',
        farmer: farmers[0],
        category: categories[5],
        url_img: 'https://www.abelandcole.co.uk/media/1606_18557_z.jpg'
    },
    {
        name: 'Organic Almond Butter',
        price: 6.60,
        quantity: '1 pot - 500g',
        farmer: farmers[0],
        category: categories[5],
        url_img: 'https://simple-veganista.com/wp-content/uploads/2012/09/homemade-almond-butter-8.jpg'
    },
    {
        name: 'Wild Scottish Salmon',
        price: 10.50,
        quantity: '400g',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&itemId=1214619-847&recipeName=680'
    },
    {
        name: 'Mussels',
        price: 6.95,
        quantity: '1kg',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://images.unsplash.com/photo-1466553556096-7e2c49388e34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80'
    },
    {
        name: 'Oysters',
        price: 7.25,
        quantity: '6 pieces',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://images.unsplash.com/photo-1557496897-125a203038eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
    },
    {
        name: 'Smoked Haddock',
        price: 6.50,
        quantity: '260g',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://s3.amazonaws.com/parkers-production/cache/product_hero/2018/09/14/5b9c0cbfabaac.jpg'
    },
    {
        name: 'Arbroath Smokies',
        price: 11.50,
        quantity: '1 packet',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://cdn.shopify.com/s/files/1/0607/6073/products/uV0aH1B_48269eb1-8a6c-4dea-884b-8e25f6b9900c_1024x1024.jpeg?v=1440148578'
    },
    {
        name: 'Shrimps',
        price: 6.50,
        quantity: '300g',
        farmer: farmers[1],
        category: categories[4],
        url_img: 'https://foodprint.org/wp-content/uploads/2018/10/imageedit_13_8456135112.jpg'
    }
])




baskets = Basket.create([
    {
        customer_id: 1
    }
])

baskets_products = BasketProduct.create([
    {
        basket_id: 1,
        product_id: 2
    },
    {
        basket_id: 1,
        product_id: 3
    },
    {
        basket_id: 1,
        product_id: 4
    },
    {
        basket_id: 1,
        product_id: 5
    },
    {
        basket_id: 1,
        product_id: 6
    },
])

customers = Customer.create([
    {
        user_id: users.last.id
    }
    
])


print_result_errors(products)
print_result_errors(users)