# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(title:'dfjlkgfjgkldsngj',description:%{<p><em>ejhfkehgk</em>
	iwofjgihwkhflqsjg;orjhbioxjciosdgok;g/gkshksfk</p>},image_url:'1.jpg',price:26.00)