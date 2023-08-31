# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Review.destroy_all
Booking.destroy_all
Promotion.destroy_all
BarTag.destroy_all
Tag.destroy_all
Bar.destroy_all
User.destroy_all

paul = User.create!(first_name: "Paul", last_name: "dupont", email: "paul@bla.com", password: "azerty", category: "bar")
jacques = User.create!(first_name: "Jacques", last_name: "Martin", email: "jacques@bla.com", password: "azerty", category: "bar")
etienne = User.create!(first_name: "etienne", last_name: "benani", email: "etienneb@bla.com", password: "azerty", category: "client")

bar_1 = Bar.create!(name: "Bar 1", address: "10 Cours Georges Clemenceau, 33000 Bordeaux", category: "pub", description: "lorem", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_2 = Bar.create!(name: "Bar 2", address: "10 Rue Auguste Comte, 69002 Lyon", category: "Salon de thé", description: "lorem", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: etienne.id )
bar_3 = Bar.create!(name: "Bar 3", address: "8 Rue Lamarck, 75018 Paris", category: "pmu", description: "lorem", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_4 = Bar.create!(name: "Bar 4", address: "54 Cours Georges Clemenceau, 33000 Bordeaux", category: "pub", description: "lorem", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_5 = Bar.create!(name: "Bar 5", address: "16 Rue Auguste Comte, 69002 Lyon", category: "Salon de thé", description: "lorem", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: etienne.id )
bar_6 = Bar.create!(name: "Bar 6", address: "87 Rue Lamarck, 75018 Paris", category: "pmu", description: "lorem", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_7 = Bar.create!(name: "Le Central Pub", address: "3-5 Cr Georges Clemenceau", category: "pub", description: "Dans le triangle d’or, le Central Pub a ouvert ses portes il y a 15 ans. Vous ne pouvez pas le louper ! Fort de son emplacement sur la place Gambetta, notre pub met à votre disposition une belle et grande terrasse. En entrant, n’oubliez pas de lever les yeux au plafond pour admirer de nombreux instruments de musique accrochés qui font de ce pub un lieu original et surtout unique ! Situé en plein centre-ville de Bordeaux au 3&5 cours G. Clémenceau, Le Central Pub vous offre une salle typique « Pub » où vous pourrez vous plonger dans une déco rétro à l’Anglaise. Ici les thèmes du cinéma, de la musique et du sport se côtoient et vous accompagnent pour un moment chaleureux.", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_8 = Bar.create!(name: "La Belle Epoque", address: "2 Allée d'Orléans Angle Quai Louis XVIII, 33000, Bordeaux France.", category: "Guinguette", description: "Côté déco, la salle est unique, on ne retrouve cette ambiance dans nul autre restaurant ici ! Les faïences Viellard ornent la grande salle, elles ont été réalisées par Amédée Caranza qui trouva son inspiration dans les céramiques orientales.", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: etienne.id )
bar_9 = Bar.create!(name: "Mama Shelter", address: "19 Rue Poquelin Molière, 33000 Bordeaux", category: "Rooftop", description: "Mama veut vous faire grimper au 7ème ciel, ou plutôt au 6ème étage, pour y découvrir son rooftop mamamoji. Pour les petites et grandes soifs, ne manquez pas de tester nos vins mamamoji et nos cocktails signatures mamamoji.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )

promo_1 = Promotion.create!(name: "Le mardi a moitié prix", offer: "-50%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_2.id)
promo_2 = Promotion.create!(name: "Happy Hour toute la nuit", offer: "-30%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_1.id)
promo_3 = Promotion.create!(name: "Une bouteille achetée, une bouteille offerte", offer: "-20%", start_date: "20/02/2023", end_date: "20/03/2023", bar_id: bar_3.id)

booking_1 = Booking.create!(user_id: etienne.id, promotion_id: promo_1.id)
booking_2 = Booking.create!(user_id: etienne.id, promotion_id: promo_2.id)
booking_3 = Booking.create!(user_id: etienne.id, promotion_id: promo_3.id)

review_1 = Review.create!(content: "Barmans super sympa à chaque fois. Grande sélection de bière/cocktail. Toujours aussi content d'y retourner !", rating: 4, booking_id: booking_2.id)
review_2 = Review.create!(content: "Cocktails petits, hors de prix avec peu de saveur... Les barmans n'utilisent de gants et touchent l'argent, cartes bleus, et ingredients des cocktails au meme temps.. pas d'hygiene.", rating: 1, booking_id: booking_3.id)
review_3 = Review.create!(content: "Déco et ambiance super comme j aime. A faire absolument durant un week-ends de visite sur Bordeaux", rating: 5, booking_id: booking_1.id)

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
