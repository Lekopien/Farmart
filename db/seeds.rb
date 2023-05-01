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
url_img: 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/10/22/apples-farmers-market-boxes.jpg.rend.hgtvcom.406.305.suffix/1634877716796.jpeg'
},

{
name: 'Chicken Eggs',
price: 200.50,
quantity: '1 dozen',
category: categories[1],
farmer: farmers[0],
url_img: 'https://i.roamcdn.net/hz/pi/listing-gallery-full-1920w/767776529d4c49807c0eef6cca41d392/-/horizon-files-prod/pi/picture/q4zn689/0136f6c7c57069c0a384b30ca5b9c054f8129abe.jpg'
},

{
name: 'Tomatoes',
price: 60.50,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://www.afrimillz.com.ng/wp-content/uploads/2019/04/Afrimillz-Tomoatoes.jpg'
},

{
name: 'Beef',
price: 1200.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://c8.alamy.com/comp/2C8XNC9/fresh-raw-beef-rib-eye-steak-for-sale-in-grocery-store-2C8XNC9.jpg'
},

{
name: 'Carrots',
price: 120.00,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://kaleandcoffee.ca/wp-content/uploads/2019/05/carrots-for-sale-e1484076352571-1080x675.jpg'
},

{
name: 'Goat Cheese',
price: 800.00,
quantity: '250 g',
category: categories[1],
farmer: farmers[0],
url_img: 'https://pyxis.nymag.com/v1/imgs/ffd/e9e/a3c5172b78eaafc895046836ca71572439-18-goat-cheese.rsquare.w700.jpg'
},
{
name: 'Salmon',
price: 1500.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://static2.bigstockphoto.com/4/1/3/large1500/314799334.jpg'
},

{
name: 'Corn',
price: 300.50,
quantity: '1 dozen',
category: categories[0],
farmer: farmers[0],
url_img: 'https://www.southernliving.com/thmb/x6_u-R2hLl6DMFs6EehPilN2rl0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-576557520-2000-01086cf94ec94d978c6efd7bff32deea.jpg'
},
{
name: 'Duck Eggs',
price: 400.00,
quantity: 'dozen',
category: categories[1],
farmer: farmers[0],
url_img: 'https://yongsooneggs.com.my/wp-content/uploads/2018/08/duck-eggs-2.jpg'
},

{
name: 'Beef Steak',
price: 2000.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://prod-cdn-thekrazycouponlady.imgix.net/wp-content/uploads/2022/09/albertsons-petite-sirloin-steak-sept-15-2022-1663275281-1663275281.jpg'
},

{
name: 'WHite Tomatoes',
price: 300.00,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://cdn3.volusion.com/ph9xz.o9ecs/v/vspfiles/photos/TF-0481-2.jpg?v-cache=1574145194'
},

{
name: 'Pork Chops',
price: 1800.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://storage.googleapis.com/images-sof-prd-9fa6b8b.sof.prd.v8.commerce.mi9cloud.com/product-images/detail/00266436000001.jpg'
},

{
name: 'Blueberries',
price: 500.00,
quantity: '250 g',
category: categories[0],
farmer: farmers[0],
url_img: 'https://i0.wp.com/italianberry.it/wp-content/uploads/2019/11/dimeo-blueberries-for-sale.jpg'
},
{
name: 'Spinach',
price: 100.50,
quantity: '200 g',
category: categories[0],
farmer: farmers[0],
url_img: 'https://www.harpak-ulma.com/wp-content/uploads/2019/06/whole-spinach-leaves-packaging-in-vertical-machine-vffs.jpg'
},

{
name: 'Beef Steaks',
price: 1800.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://clv.h-cdn.co/assets/17/20/2560x1440/hd-aspect-1495034879-gettyimages-2832593.jpg'
},

{
name: 'Cucumbers',
price: 100.80,
quantity: '500 g',
category: categories[0],
farmer: farmers[0],
url_img: 'https://i.pinimg.com/originals/2e/73/ec/2e73ecc3e3f99a101e78fced9bf93519.jpg'
},

{
name: 'Guine Fowl Eggs',
price: 300.50,
quantity: 'dozen',
category: categories[1],
farmer: farmers[0],
url_img: 'https://www.guineafarm.com/wp-content/uploads/2014/01/Eggs.jpg'
},

{
name: 'Watermelon',
price: 60.00,
quantity: '1 piece',
category: categories[0],
farmer: farmers[0],
url_img: 'https://fsi.colostate.edu/wp-content/uploads/2020/08/watermelon-2636_1920-1170x659.jpg'
},
{
name: 'Salmon',
price: 1200.50,
quantity: '250 g',
category: categories[1],
farmer: farmers[0],
url_img: 'https://www.tasteofhome.com/wp-content/uploads/2022/04/GettyImages-922666820-e1649868333475.jpg'
},

{
name: 'Potatoes',
price: 2000.00,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://kilimonews.co.ke/wp-content/uploads/2021/05/Extended-potato-packaging-scaled.jpg'
},

{
name: 'Chicken Breast',
price: 500.00,
quantity: '500 g',
category: categories[1],
farmer: farmers[0],
url_img: 'https://www.bakeryandsnacks.com/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/3/2/0/0/1330023-1-eng-GB/Poultry-producer-pecks-at-portion-packaging.jpg'
},

{
name: 'Honey',
price: 500.00,
quantity: '500 g',
category: categories[0],
farmer: farmers[0],
url_img: 'https://www.kenyanews.go.ke/wp-content/uploads/2022/03/KVDA-honey-300x200.jpg'
},

{
name: 'Pork Chops',
price: 800.00,
quantity: '500 g',
category: categories[1],
farmer: farmers[0],
url_img: 'https://www.budgetbytes.com/wp-content/uploads/2011/01/Pork-Chops-in-package.jpg'
},
{
name: 'Asparagus',
price: 300.99,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://cdn.producebusiness.com/2023/01/november-categorysalesperuvianasparagus-feature.jpg'
},

{
name: 'Pork Belly',
price: 800.50,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://www.extraordinarybbq.com/wp-content/uploads/2021/07/Whole-Pork-Belly-at-Costco.jpg'
},

{
name: 'Broccoli',
price: 200.50,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://www.kayco.com/wp-content/uploads/2020/09/710750-scaled.jpg'
},

{
name: 'Venison',
price: 1600.00,
quantity: '1 kg',
category: categories[1],
farmer: farmers[0],
url_img: 'https://m.media-amazon.com/images/I/71NAGKKP7YL._SL1007_.jpg'
},

{
name: 'Strawberries',
price: 400.50,
quantity: '1 kg',
category: categories[0],
farmer: farmers[0],
url_img: 'https://previews.123rf.com/images/wanchanta/wanchanta1805/wanchanta180500013/101031647-fresh-strawberry-in-plastic-box-of-packaging-for-sell.jpg'
},
{
  name: 'Land for Lease',
  price: 5000.00,
  quantity: '1 acre',
  category: categories[2],
  farmer: farmers[0],
  url_img: 'https://propscout.co.ke/storage/properties/files/lands-plots/thumbnails/-land-for-lease-in-isinya-kantafu-m37vb.jpg'
},
{
  name: 'Farmland for Rent',
  price: 10000.00,
  quantity: '5 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://images.kenyapropertycentre.com/properties/images/15455/0627e71647bc81-thika-18-acre-commercial-plot-touching-garissa-highway-commercial-land-for-sale-thika-kiambu.jpg'
},
{
  name: 'Orchard for Lease',
  price: 7500.00,
  quantity: '2 acres',
  category: categories[2],
  farmer: farmers[0],
  url_img: 'https://ipropertiesafrica.co.ke/wp-content/uploads/2019/09/55.jpg'
},
{
  name: 'Land for Lease',
  price: 5000.00,
  quantity: '1 acre',
  category: categories[2],
  farmer: farmers[0],
  url_img: 'https://westkenyarealestate.com/wp-content/uploads/2015/01/20150128_104158.jpg'
},
{
  name: 'Farmland for Rent',
  price: 10000.00,
  quantity: '5 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://hapakenya.com/wp-content/uploads/2021/11/Land-Kenya.jpg'
},
{
  name: 'Orchard for Lease',
  price: 7500.00,
  quantity: '2 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://www.pointproperties.org/wp-content/uploads/2018/02/1-720x450.jpg'
},
{
  name: 'Land for Lease',
  price: 5000.00,
  quantity: '1 acre',
  category: categories[2],
  farmer: farmers[0],
  url_img: 'https://cdn.statically.io/img/proproperty.co.ke/f=auto/uploads/media/IMG-20210824-WA0000-1629810730-800X500.jpg'
},
{
  name: 'Farmland for Rent',
  price: 10000.00,
  quantity: '5 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://www.dealkenya.com/oc-content/uploads/65/5785.jpg'
},
{
  name: 'Orchard for Lease',
  price: 7500.00,
  quantity: '2 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://images.kenyapropertycentre.com/properties/images/thumbs/8999/060e699a8445b8-cabbanas-mombasa-rd-5-prime-vacant-acres-commercial-mixed-use-land-for-rent-imara-daima-embakasi-nairobi.jpg'
},
{
  name: 'Land for Lease',
  price: 5000.00,
  quantity: '1 acre',
  category: categories[2],
  farmer: farmers[0],
  url_img: 'https://propscout.co.ke/storage/properties/files/lands-plots/thumbnails/-land-for-lease-in-industrial-area-nzgmz.jpg'
},
{
  name: 'Farmland for Rent',
  price: 10000.00,
  quantity: '5 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://victormatara.com/wp-content/uploads/2017/07/edenhomepage2017-1200x900.jpg'
},
{
  name: 'Orchard for Lease',
  price: 7500.00,
  quantity: '2 acres',
  category: categories[2],
  farmer: farmers[1],
  url_img: 'https://propscout.co.ke/storage/properties/files/lands-plots/land-for-lease-in-isinya-kantafu-sfcf5.jpg'
},



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