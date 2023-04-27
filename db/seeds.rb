puts 'started seeding'

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
        name: 'land'
    },
    {
        name: 'animals'
    },
    {
        name: 'farm Produce'
    },



])

farmers = Farmer.create([
    {
        farm: 'land',
        user: users.first
    },
    {
        farm: 'Animal Farm',
        user: users.first
    }
])

products = Product.create([
    {
        name: '50 by 100',
        price: 250000.0,
        quantity: '1 kg',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://media.self.com/photos/5b6b0bd7ff2fab32610fafc2/4:3/w_728,c_limit/pears.jpg'
    },
    {
        name: 'Artichokes',
        price: 3.60,
        quantity: '3 pieces',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1518735869015-566a18eae4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Lemon',
        price: 1.49,
        quantity: '6 pieces',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://www.realfoods.co.uk/ProductImagesID/277_1.jpg'
    },
    {
        name: 'Apricots',
        price: 4.50,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1501746877-14782df58970?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Yellow Peaches',
        price: 3.20,
        quantity: '8 pieces',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1542296663-c8002b3c8422?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2266&q=80'
    },
    {
        name: 'Apples',
        price: 1.60,
        quantity: '250g',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1515681412668-16d6d4a54ab1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'
    },
    {
        name: 'Raspberries',
        price: 2,
        quantity: '1 kg',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Zucchinis',
        price: 3.30,
        quantity: '6 pieces',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1549223672-c262a3763aab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Brown onions',
        price: 1.30,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1518977956812-cd3dbadaaf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Avocados',
        price: 3.00,
        quantity: '6 pieces',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1512070904629-fa988dab2fe1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Green Beans',
        price: 2.10,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/uploads/141143339879512fe9b0d/f72e2c85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
    },
    {
        name: 'Brussels Sprouts',
        price: 2,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Spinach',
        price: 1.20,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-10485-spinach_verdil2.jpg'
    },
    {
        name: 'Strawberries',
        price: 2.50,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://i2.wp.com/gardenmuseum.org.uk/wp-content/uploads/2019/05/Strawberries.jpg?resize=640%2C360&ssl=1'
    },
    {
        name: 'Peas',
        price: 2,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://portalvhds26k4f5tktj3ck.blob.core.windows.net/spotpics/sp42263.jpg'
    },
    {
        name: 'Melon',
        price: 3,
        quantity: '3 pieces',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-7997-melon_farthest_north4.jpg'
    },
    {
        name: 'Blueburries',
        price: 1.90,
        quantity: '150g',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1425934398893-310a009a77f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'
    },
    {
        name: 'Cucumbers',
        price: 1.80,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://munchies-images.vice.com/wp_upload/cucumber-tesco-valentines-day.jpg?crop=0.7111111111111111xw%3A1xh%3Bcenter%2Ccenter&resize=650%3A*&output-quality=55'
    },
    {
        name: 'Mixed Tomatoes',
        price: 3.50,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://images.unsplash.com/photo-1443131612988-32b6d97cc5da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },



    {
        name: 'Rhubarb',
        price: 5,
        quantity: '500g',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://www.lesboitesameuh.com/images/Image/Rhubarbe-500-g---Isabelle-Glatre-91.jpg'
    },
    {
        name: 'Tuscan Kale',
        price: 1.50,
        quantity: '1 bunch',
        category: categories[1],
        farmer: farmers[0],
        image: 'http://wildco.co.uk/veggies/wp-content/uploads/2016/05/tuscan-kale-alt.jpg'
    },
    {
        name: 'Green apples',
        price: 2,
        quantity: '1kg',
        category: categories[0],
        farmer: farmers[0],
        image: 'https://www.concordmonitor.com/getattachment/f428f090-1f79-4bfb-b837-381835570822/pectin-lw-080417-ph3'
    },
    {
        name: 'Blue Potatoes',
        price: 2,
        quantity: '2kg',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://cdn.dtbrownseeds.co.uk/product-images/op/z/POT-154.jpg'
    },
    {
        name: 'Broccoli',
        price: 1.50,
        quantity: '3 pieces',
        category: categories[1],
        farmer: farmers[0],
        image: 'https://www.sciencedaily.com/images/2019/05/190516142913_1_540x360.jpg'
    },
    {
        name: 'Jerusalem Artichokes',
        price: 2.50,
        quantity: '500g',
        category: categories[1],
        farmer: farmers[0],
        image: 'http://eatdrinkpaleo.com.au/wp-content/uploads/2016/10/jerusalem-artichoke-recipes.jpg'
    }
])





baskets = Basket.create([
    {
        customer_id: 1
    }
]),

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


puts "finished seeding"