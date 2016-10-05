# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  ActiveRecord::Base.establish_connection
  ActiveRecord::Base.connection.tables.each do |table|
    ActiveRecord::Base.connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
  end
end

categories = %w( liquor_store book_store department_store hardware_store travel_agent garden_centre eyewear music_store bank service_ontario service_canada pet_shop cafe independent_retailers shoe_store)
categories.each do |category|
  puts "Creating #{category.titlecase} category."
  Category.create!(category_name: category.titlecase)
end

toronto = City.create!(city: 'Toronto')

businesses = [
              { category: Category.find_by_category_name('Liquor Store'),
                business_name: 'Wine Rack',
                business_address: '472 Yonge St M4Y 1X5'},
              { category: Category.find_by_category_name('Book Store'),
                business_name: 'Chapters Indigo',
                business_address: '2300 Yonge St M4P 1E0'},
              { category: Category.find_by_category_name('Book Store'),
                business_name: 'Book City',
                business_address: '2354 Bloor St West M6S 1P3'},
              { category: Category.find_by_category_name('Department Store'),
                business_name: 'Holt Renfrew',
                business_address: '50 Bloor St West M4W 1A1'},
              { category: Category.find_by_category_name('Department Store'),
                business_name: 'Homesense',
                business_address: '82 Spadina ave M5V 2J3'},
              { category: Category.find_by_category_name('Department Store'),
                business_name: 'Marshalls',
                business_address: '126 John St M9M 1K1'},
              { category: Category.find_by_category_name('Department Store'),
                business_name: 'Winners',
                business_address: '10 Dundas St East M5b 4G9'},
              { category: Category.find_by_category_name('Hardware Store'),
                business_name: 'Homehardware',
                business_address: '432 Bloor St West M5S 1X5'},
              { category: Category.find_by_category_name('Hardware Store'),
                business_name: 'Canadian Tire',
                business_address: '839 Yonge St M4W 2H2'},
              { category: Category.find_by_category_name('Travel Agent'),
                business_name: 'Flight Centre',
                business_address:'185 Roncesvalles Ave M6R 2L5'},
              { category: Category.find_by_category_name('Travel Agent'),
                business_name: 'Elder Treks',
                business_address:'597 Markham St M6G 2l7'},
              { category: Category.find_by_category_name('Garden Centre'),
                business_name: 'Davenport Garden Centre',
                business_address:'368 Davenport Rd M5R 1K6'},
              { category: Category.find_by_category_name('Garden Centre'),
                business_name: 'East End Garden Centre',
                business_address:'1395 Queen St East M4L 1C7'},
              { category: Category.find_by_category_name('Eyewear'),
                business_name: 'The Optic Zone Inc',
                business_address:'33 Jarvis St M5E 1N3'},
              { category: Category.find_by_category_name('Eyewear'),
                business_name: 'Opticianado Eyewear',
                business_address: '2919 Dundas St West M6P 1Z1'},
              { category: Category.find_by_category_name('Music Store'),
                business_name: 'Steves Music Store',
                business_address: '415 Queen St West M5V 2A5'},
              { category: Category.find_by_category_name('Music Store'),
                business_name: 'Sonic Boom',
                business_address:'215 Spadina Ave M5T 2C7'},
              { category: Category.find_by_category_name('Music Store'),
                business_name:'Long & McQuade',
                business_address:'925 Bloor St West M6H 1L5'},
              { category: Category.find_by_category_name('Bank'),
                business_name:'CIBC',
                business_address:'1200 King St West M6K 1G4'},
              { category: Category.find_by_category_name('Bank'),
                business_name: 'Scotiabank',
                business_address:'1616 Dundas St West M6K 1V1'},
              { category: Category.find_by_category_name('Bank'),
                business_name:'TD Canada Trust',
                business_address:'61 Hanna Ave M6K 3N7'},
              { category: Category.find_by_category_name('Bank'),
                business_name:'RBC',
                business_address:'2 Gladstone Ave M6J 0B2'},
              { category: Category.find_by_category_name('Service Ontario'),
                business_name: 'Service Ontario',
                business_address: '839 Yonge St M4W 2H2'},
              { category: Category.find_by_category_name('Service Ontario'),
                business_name:'Service Ontario',
                business_address: '534 College St M6G 1A6'},
              { category: Category.find_by_category_name('Service Canada'),
                business_name: 'Service Canada',
                business_address: '559 College St M6G 1A9'},
              { category: Category.find_by_category_name('Service Canada'),
                business_name: 'Service Canada',
                business_address: '25 St Clair Ave East M4T 3A4'},
              { category: Category.find_by_category_name('Service Canada'),
                business_name: 'Service Canada',
                business_address: '559 College St M6G 1A9'},
              { category: Category.find_by_category_name('Service Canada'),
                business_name:'Service Canada',
                business_address: '100 Queen West M5H 2N2'},
              { category: Category.find_by_category_name('Pet Shop'),
                business_name: 'Wag on Danforth',
                business_address: '1918 Danforth Ave M4C 1J4'},
              { category: Category.find_by_category_name('Pet Shop'),
                business_name: 'Dogfather & Co',
                business_address: '1007 Yonge St M4W 2K9'},
              { category: Category.find_by_category_name('Pet Shop'),
                business_name:'Annex Pet Supplies',
                business_address:'718 Bathurst St M5S 2R4'},
              { category: Category.find_by_category_name('Pet Shop'),
                business_name: 'Boobahs Pet Store Inc',
                business_address: '1040 St.Clair Ave West M6E 1A5' },
              { category: Category.find_by_category_name('Pet Shop'),
                business_name: 'Helmutts Pet Supply',
                business_address:'865 Queen St West M6J 1G4'},
              { category: Category.find_by_category_name('Pet Shop'),
                business_name:'Menagerie Pet Shop',
                business_address: '549 Parliament St M4X 1P7'},
              { category: Category.find_by_category_name('cafe'),
                business_name:'Tom & Sawyer',
                business_address: '1247 Queen East M4L 1C2'},
              { category: Category.find_by_category_name('Shoe Store'),
                business_name: 'John Fluevog',
                business_address: '686 Queen St. West M6J 1E7'},
              { category: Category.find_by_category_name('Independent Retailers'),
                business_name: 'Cry Wolf',
                business_address: '91 Ossington Ave M6J 2Z2'},
              { category: Category.find_by_category_name('Music Store'),
                business_name: 'Kops Records',
                business_address: '229 Queen St West M5V 1Z4'},
              { category: Category.find_by_category_name('Independent Retailers'),
                business_name: 'Space Vintage',
                business_address: '595 Bloor St W M6G 1K4'},
              ]
businesses.each do |business|
  puts "Creating #{business[:business_name]} Business."
  Business.create!(category: business[:category],
                   business_name: business[:business_name],
                   business_address: business[:business_address],
                   city: toronto)
end
