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
        name: 'Animal Products'
    },
    {
        name: 'Lands for Lease'
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
name: 'Apples',
price: 300.00,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: File.open(Rails.root.join("app/assets/images/products/apples.jpg"))
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