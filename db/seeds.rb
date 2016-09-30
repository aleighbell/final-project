# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ category_name: 'Liquor store' },
                              { category_name: 'Book store' },
                              { category_name: 'Department store' },
                              { category_name: 'Hardware store' },
                              { category_name: 'Travel agent' },
                              { category_name: 'Garden centre' },
                              { category_name: 'Eyewear' },
                              { category_name: 'Music store' },
                              { category_name: 'Bank' },
                              { category_name: 'Service Canada' },
                              { category_name: 'Pet shop' }
                             ])


liquor_store =     Category.find_by(category_name:  'Liquor store')
book_store =       Category.find_by(category_name:  'Book store')
department_store = Category.find_by(category_name:  'Department store')
hardware_store =   Category.find_by(category_name:  'Hardware store')
travel_agent =     Category.find_by(category_name:  'Travel agent')
garden_centre =    Category.find_by(category_name:  'Garden centre')
eyewear =          Category.findy_by(category_name: 'Eyewear')
music_store =      Category.find_by(category_name:  'Music store')
bank =             Category.find_by(category_name:  'Bank')
service_canada =   Category.find_by(category_name:  'Service Canada')
pet_shop =         Category.findy_by(category_name: 'Pet shop')



businesses = Business.create([{ category_name: liquor_store, business_name: 'Wine Rack',  business_address: '472 Yonge St M4Y 1X5',  city_name: Toronto },
                               { category_name: book_store, business_name: 'Chapters Indigo', business_address: '2300 Yonge St M4P 1E0',  city_name: Toronto },
                               { category_name: book_store, business_name: 'Book City', business_address: '2354 Bloor St West M6S 1P3', city_name: Toronto },
                               { category_name: department_store, business_name: 'Holt Renfrew', business_address: '50 Bloor St West M4W 1A1',  city_name: Toronto},
                               { category_name: department_store, business_name: 'Homesense', business_address: '82 Spadina ave M5V 2J3', city_name: Toronto },
                               { category_name: department_store, business_name: 'Marshalls', business_address: '126 John St M9M 1K1', city_name: Toronto },
                               { category_name: department_store, business_name: 'Winners', business_address: '10 Dundas St East M5b 4G9', city_name: Toronto },
                               { category_name: hardware_store, business_name: 'Homehardware', business_address: '432 Bloor St West M5S 1X5', city_name: Toronto },
                               { category_name: hardware_store, business_name: 'Canadian Tire', business_address: '839 Yonge St M4W 2H2', city_name: Toronto },
                               { category_name: travel_agent, business_name: 'Flight Centre', business_address: '185 Roncesvalles Ave M6R 2L5', city_name: Toronto },
                               { category_name: travel_agent, business_name: 'Elder Treks', business_address: '597 Markham St M6G 2l7', city_name: Toronto },
                               { category_name: garden_centre, business_name: 'Davenport Garden Centre', business_address: '368 Davenport Rd M5R 1K6', city_name: Toronto },
                               { category_name: garden_centre, business_name: 'East End Garden Centre', business_address: '1395 Queen St East M4L 1C7', city_name: Toronto },
                               { category_name: eyewear, business_name: 'The Optic Zone Inc', business_address: '33 Jarvis St M5E 1N3', city_name: Toronto },
                               { category_name: eyewear, business_name: 'Opticianado Eyewear', business_address: '2919 Dundas St West M6P 1Z1', city_name: Toronto },
                               { category_name: music_store, business_name: 'Steves Music Store', business_address: '415 Queen St West M5V 2A5', city_name: Toronto },
                               { category_name: music_store, business_name: 'Long & McQuade', business_address: '925 Bloor St West M6H 1L5', city_name: Toronto },
                               { category_name: bank, business_name: 'CIBC', business_address: '1200 King St West M6K 1G4', city_name: Toronto },
                               { category_name: bank, business_name: 'Scotiabank', business_address: '1616 Dundas St West M6K 1V1', city_name: Toronto },
                               { category_name: bank, business_name: 'TD Canada Trust', business_address: '61 Hanna Ave M6K 3N7', city_name: Toronto },
                               { category_name: bank, business_name: 'RBC', business_address: '2 Gladstone Ave M6J 0B2', city_name: Toronto },
                               { category_name: service_canada, business_name: 'Service Canada', business_address: '25 St Clair Ave East M4T 3A4', city_name: Toronto },
                               { category_name: service_canada, business_name: 'Service Canada', business_address: '559 College St M6G 1A9', city_name: Toronto },
                               { category_name: service_canada, business_name: 'Service Canada', business_address: '100 Queen West M5H 2N2', city_name: Toronto },
                               { category_name: pet_shop, business_name: 'Wag on Danforth', business_address: '1918 Danforth Ave M4C 1J4', city_name: Toronto },
                               { category_name: pet_shop, business_name: 'Dogfather & Co', business_address: '1007 Yonge St M4W 2K9', city_name: Toronto },
                               { category_name: pet_shop, business_name: 'Annex Pet Supplies', business_address: '718 Bathurst St M5S 2R4', city_name: Toronto }
                               ])
