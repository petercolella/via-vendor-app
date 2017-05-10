# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "vendors", force: :cascade do |t|
#     t.string   "vendor_name"
#     t.string   "vendor_contact_name"
#     t.string   "vendor_contact_phone"
#     t.string   "vendor_contact_email"
#     t.string   "vendor_logo"
#     t.string   "vendor_website"
#     t.string   "info"
#     t.string   "order_window"
#     t.string   "delivery_window"
#     t.string   "attachment"
#     t.datetime "created_at",           null: false
#     t.datetime "updated_at",           null: false
#   end
Company.create(company_name: "Uncle Maddio's", company_logo: 'http://static1.squarespace.com/static/52cf5852e4b0c1274ad7d85c/t/55e1a552e4b0088b5f195ac2/1494345757564/?format=1500w', contact_name: 'Matt Andrew', contact_email: 'feedback@unclemaddios.com', contact_phone: '555-222-1313')

Store.create(store_name: 'Edgewood', store_phone: '404-907-3378')
Store.create(store_name: 'Ansley Mall', store_phone: '678-705-2106')

Vendor.create(vendor_name: 'PFG/Roma', vendor_contact_name: 'Tino Amerosa', vendor_contact_phone: '404-409-9238', vendor_contact_email: 'TAmoroso@pfgc.com', vendor_logo: 'http://www.performancefoodservice.com/~/media/PFS/Images/Logos/logo-pfs.png', vendor_website: 'http://www.pfgc.com/')
Vendor.create(vendor_name: 'Coca-Cola', vendor_contact_name: 'Scott Riley', vendor_contact_phone: '404-661-7721', vendor_contact_email: 'scriley@coca-cola.com', vendor_logo: 'https://us.coca-cola.com/content/dam/coke2016/TF-LOGO.png', vendor_website: 'https://us.coca-cola.com/')
Vendor.create(vendor_name: 'United Beverage', vendor_contact_name: 'Sandra Foggs', vendor_contact_phone: '404-682-8061', vendor_contact_email: 'sfoggs@udiga.com', vendor_logo: 'http://udiga.com/wp-content/uploads/2013/10/logo.png', vendor_website: 'http://udiga.com/')