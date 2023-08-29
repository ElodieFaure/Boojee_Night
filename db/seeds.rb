# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Bar.destroy_all
User.destroy_all
Booking.destroy_all
Tag.destroy_all

paul = User.create!(first_name: "Paul", last_name: "dupont", email: "paul@bla.com", password: "azerty", category: "bar")
jacques = User.create!(first_name: "Jacques", last_name: "Martin", email: "jacques@bla.com", password: "azerty", category: "bar")
etienne = User.create!(first_name: "etienne", last_name: "benani", email: "etienneb@bla.com", password: "azerty", category: "client")

bar_1 = Bar.create!(name: "Bar 1", address: "Bordeaux", category: "pub", description: "lorem", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_2 = Bar.create!(name: "Bar 2", address: "Lyon", category: "Salon de thé", description: "lorem", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: etienne.id )
bar_3 = Bar.create!(name: "Bar 3", address: "Paris", category: "pmu", description: "lorem", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )

promo_1 = Promotion.create!(name: "Dingue", offer: "-20%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_2.id)
promo_2 = Promotion.create!(name: "Whoua", offer: "-20%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_1.id)
promo_3 = Promotion.create!(name: "Dement", offer: "-20%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_3.id)

booking_1 = Booking.create!(user_id: etienne.id, promotion_id: promo_1.id)
booking_2 = Booking.create!(user_id: etienne.id, promotion_id: promo_2.id)
booking_3 = Booking.create!(user_id: etienne.id, promotion_id: promo_3.id)

review_1 = Review.create!(content: "Top", rating: 4, booking_id: booking_2.id)
review_2 = Review.create!(content: "NULLL", rating: 1, booking_id: booking_3.id)
review_3 = Review.create!(content: "Genial", rating: 5, booking_id: booking_1.id)

tag_1 = Tag.create!(name: "flechette")
tag_2 = Tag.create!(name: "billard")
tag_3 = Tag.create!(name: "shooter")
tag_4 = Tag.create!(name: "strip-tease")
tag_5 = Tag.create!(name: "karaoké")

bar_tag_1 = BarTag.create!(bar_id: bar_3.id, tag_id: tag_1.id)
bar_tag_2 = BarTag.create!(bar_id: bar_2.id, tag_id: tag_2.id)
bar_tag_3 = BarTag.create!(bar_id: bar_1.id, tag_id: tag_3.id)
bar_tag_4 = BarTag.create!(bar_id: bar_2.id, tag_id: tag_4.id)
bar_tag_5 = BarTag.create!(bar_id: bar_1.id, tag_id: tag_5.id)

puts "all created"
