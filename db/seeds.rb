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
Meeting.destroy_all

paul = User.create!(first_name: "Paul", last_name: "Dupont", email: "paul@bla.com", password: "azerty", category: "bar")
david = User.create!(first_name: "David", last_name: "Berchier", email: "david@bla.com", password: "azerty", category: "bar")
jacques = User.create!(first_name: "Jacques", last_name: "Martin", email: "jacques@bla.com", password: "azerty", category: "bar")
sophia= User.create!(first_name: "Sophia", last_name: "benani", email: "sophia@bla.com", password: "azerty", category: "client")
elodie = User.create!(first_name: "Elodie", last_name: "Faure", email: "elodie@bla.com", password: "azerty", category: "client")
enzo = User.create!(first_name: "Enzo", last_name: "Redon", email: "enzo@bla.com", password: "azerty", category: "client")
jojo = User.create!(first_name: "Jonathan", last_name: "Seraf", email: "jojo@bla.com", password: "azerty", category: "client")
sylvain = User.create!(first_name: "Sylvain", last_name: "Galtier", email: "sylvain@bla.com", password: "azerty", category: "client")
romain = User.create!(first_name: "Romain", last_name: "Jumeau", email: "romain@bla.com", password: "azerty", category: "client")
#BORDEAUX
bar_1 = Bar.create!(name: "Levrette Café", address: "6-8 Rue de Mérignac, 33000 Bordeaux", description: "Bar dansant dans une authentique cave bordelaise, dj-set les jeudis, vendredis et samedis soir", average_price: 10, open_at: "12:00", close_at: "00:00", user_id: paul.id)
bar_2 = Bar.create!(name: "Calle Ocho", address: "24 rue Piliers de Tutelle, 33000 Bordeaux", description: "Envie de passer à l’heure cubaine en plein centre-ville bordelais ? Direction la Calle Ocho ! Tapas, Mojitos et salsa sont quelques-uns des ingrédients qui font de ce lieu – élu meilleur bar à ambiance de France – l’un des incontournables bars dansants de Bordeaux. Si vous aimez danser sur des airs latinos, c’est dans ce bar sympa de Bordeaux qu’il vous faudra aller !", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_3 = Bar.create!(name: "Simone", address: "3 Quai Louis XVIII, 33000 Bordeaux", description: "Cette “cocktailerie” des quais bordelais au charme rétro propose une sélection pointue de bières peu connues de la belle endormie, ainsi que des cocktails aux savants mélanges de saveurs oubliées. Pour matcher avec l’ambiance coquette vintage de ce bar sympa de Bordeaux, les boissons portent ici le nom de femmes d’antan (Eugénie, Colette, Simone ou Suzanne). On apprécie également la grande terrasse fleurie et la playlist tantôt swing, lounge ou jazz, qui vous transporte dans une autre époque.", average_price: 15, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_4 = Bar.create!(name: "The Secret ", address: "170 Cours du médoc, 33000 Bordeaux", description: "Bienvenu à The Secret, un bar caché dans le quartier des Chartrons. Plongé dans un décor des années 30 avec des barmans costumés, ce bar sympa de Bordeaux à pour ambition de divertir ses clients pour qu’ils y passent le meilleur des moments. Couplé d’un escape game, vous pouvez privatiser un salon pendant 1h30 afin de résoudre une énigme entre amis autour d’une sélection de boissons originales.", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)

bar_5 = Bar.create!(name: "Vintage Bar", address: "45 rue Saint-James, 33000 Bordeaux", description: "Petit frère du Vintage Café des quais, le Vintage Bar c’est le spot étudiant par excellence, croisé à un vieux rade cubain. Ambiance décontractée, prix largement abordables, et happy hour de 16h à 20h, ce bar sympa de Bordeaux s’impose comme le rendez-vous afterwork/afterschool de la ville. Si le maître-mot de l’établissement bordelais reste la convivialité, le rhum ici est à l’honneur !", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_6 = Bar.create!(name: "I.Boat", address: "Bassin à Flot n°1, Quai Armand Lalande, 33300 Bordeaux", description: "La terrasse (couverte et chauffée en hiver) de l’I.Boat accueille une ambiance différente chaque soir avec ses apéroboats et une programmation indépendante du club. Cocktails et tapas viennent compléter le tableau de ce bar sympa de Bordeaux pour des apéros réussis. De juin à octobre, l’I.Boat ouvre aussi sa plage au bord de l’eau. Ambiance estivale les pieds dans le sable, mais aussi beaucoup d’événements pour rythmer les soirées d’été.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_7 = Bar.create!(name: "Le Central Pub", address: "3-5 Cr Georges Clemenceau, 33000 Bordeaux", description: "Dans le triangle d’or, le Central Pub a ouvert ses portes il y a 15 ans. Vous ne pouvez pas le louper ! Fort de son emplacement sur la place Gambetta, notre pub met à votre disposition une belle et grande terrasse. En entrant, n’oubliez pas de lever les yeux au plafond pour admirer de nombreux instruments de musique accrochés qui font de ce pub un lieu original et surtout unique ! Situé en plein centre-ville de Bordeaux au 3&5 cours G. Clémenceau, Le Central Pub vous offre une salle typique « Pub » où vous pourrez vous plonger dans une déco rétro à l’Anglaise. Ici les thèmes du cinéma, de la musique et du sport se côtoient et vous accompagnent pour un moment chaleureux.", average_price: 20, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_8 = Bar.create!(name: "La Belle Epoque", address: "2 Allée d'Orléans Angle Quai Louis XVIII, 33000, Bordeaux", description: "Côté déco, la salle est unique, on ne retrouve cette ambiance dans nul autre restaurant ici ! Les faïences Viellard ornent la grande salle, elles ont été réalisées par Amédée Caranza qui trouva son inspiration dans les céramiques orientales.", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: jacques.id )

bar_9 = Bar.create!(name: "Mama Shelter", address: "19 Rue Poquelin Molière, 33000 Bordeaux", description: "Mama veut vous faire grimper au 7ème ciel, ou plutôt au 6ème étage, pour y découvrir son rooftop mamamoji. Pour les petites et grandes soifs, ne manquez pas de tester nos vins mamamoji et nos cocktails signatures mamamoji.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )

#PARIS
bar_10 = Bar.create!(name: "Le Quartier Général", address: "103 Rue Oberkampf, 75011 Paris", description: "Mama veut vous faire grimper au 7ème ciel, ou plutôt au 6ème étage, pour y découvrir son rooftop mamamoji. Pour les petites et grandes soifs, ne manquez pas de tester nos vins mamamoji et nos cocktails signatures mamamoji.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_11 = Bar.create!(name: "Yellow Mad Monkey", address: "8 Rue de Lappe, 75011 Paris", description: "Avec son charme de pub irlandais, Yellow Mad Monkey est un incontournable de la rue de Lappe. Ce bar séduit par son atmosphère chaleureuse, ses bières, ses cocktails et ses burgers. Ses murs et plafonds ornés de plantes luxuriantes ajoutent une touche authentique à ce lieu, tandis que sa musique, ses petits plats à partager et ses animations font de cet établissement un lieu accueillant pour se détendre entre amis.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_12 = Bar.create!(name: "La Contrescarpe", address: "57 Rue Lacépède, 75005 Paris", description: "Offrant une vue imprenable sur la Place de la Contrescarpe, ce bar-restaurant est un arrêt populaire pour les locaux et les visiteurs. Avec une large terrasse et une atmosphère animée, La Contrescarpe est idéale pour siroter un verre tout en observant la vie du quartier. La carte propose des plats français classiques et des cocktails rafraîchissants, faisant de cet endroit un choix parfait pour une pause détente.", average_price: 20, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_13 = Bar.create!(name: "Le Requin Chagrin ", address: "57 Rue Lacépède, 75005 Paris", description: "Le Requin Chagrin est le pub style anglais de la rue Mouffetard. Son long comptoir de bois, son ambiance british et ses nombreuses bières en font un endroit prisé pour les fêtards et les amateurs de ce genre d’atmosphère. Cocktails, IPAs à foison, snacks et plats à partager comme dans un vrai Wetherspoon, il n’y a pas à dire : ça a un air de London !", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_14 = Bar.create!(name: "Le Nid", address: "57 Rue Lacépède, 75005 Paris", description: "Le bar Le Nid – Cocon Ludique est un véritable paradis ludique niché au cœur de Paris. Avec ses deux espaces spacieux de 100 m² et 60 m², Le Nid vous invite à plonger dans le monde captivant des jeux de société. Sa méga ludothèque abrite une collection variée de centaines de jeux qui n’attendent que vous pour des heures de divertissement. L’entrée est à seulement 4 euros par personne pour 2 heures, incluant l’accès à cette incroyable sélection. Dès votre arrivée, délectez-vous d’une boisson de votre choix pour débuter votre aventure ludique. Chaque boisson supplémentaire vous ouvre les portes aux 2 heures suivantes de jeu et de plaisir. N’est-ce pas fantastique ?", average_price: 10, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_15 = Bar.create!(name: "BAR BIBLIOTHÈQUE", address: "57 Rue Lacépède, 75005 Paris", description: "Rendez-vous dans l’un des bars les plus secrets de Paris ! L’ambiance intimiste, quasi mystérieuse, est notamment due à la grande bibliothèque et ses quelques 12 000 ouvrages,  encadrant de confortables fauteuils en cuir. En somme, il s’agit d’un lieu propice à la détente, aux confidences et à la dégustation. L’hôtel Saint-James ravit les papilles les plus délicates avec des cocktails sur-mesure, où chaque arôme est mis en valeur. ", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_16 = Bar.create!(name: "LE PERCHOIR DE L’EST", address: "57 Rue Lacépède, 75005 Paris", description: "Avant ou après un voyage, quoi de mieux que de se détendre au soleil ? Le Perchoir de l’Est est un rooftop installé sous la rosace Eiffel de la Gare de l’Est. Pourvu de confortables banquettes, d’un bar et d’un snack, ce rooftop à l’ambiance industrielle et romantique est ouvert de juin à fin septembre.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_17 = Bar.create!(name: "Le baron rouge", address: "1 Rue Théophile Roussel 75012 Paris ", description: "On vient ici satisfaire son palais avec des bons crus du terroir, dans une ambiance franchouillarde, sans devoir étaler ses connaissances en œnologie. Le dimanche on peut même y déguster des huîtres avec un bon Sancerre, ou un bon rouge charpenté avec une assiette de charcuterie. Dans cet antre minuscule à la gloire de Bacchus, les murs sont tapissés de bouteilles et de tonneaux empilés du sol au plafond. A l’heure de l’apéro, si vous arrivez un peu tard, n’espérez pas poser un demi-coude sur le zinc, vous resterez probablement sur le trottoir comme la plupart des clients. ", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )

#INTERNATIONNAL
bar_18 = Bar.create!(name: "Paradiso", address: "Calle Rera Palau 4, 08003 Barcelone", description: "OLieu légendaire.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_19 = Bar.create!(name: "Temple bar", address: "47-48 Temple Bar, Dublin 2, D02 N725, Irlande", description: "OLieu légendaire. Musique irlandaise en direct 24h/24 et 7j/7. La plus grande collection de whisky d'Irlande. Grand choix de bières irlandaises. Nourriture délicieuse. Venez découvrir le Temple Bar Pub !", average_price: 10, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_20 = Bar.create!(name: "Le Delirium ", address: " Imp. de la Fidélité 4, 1000 Bruxelles, Belgique", description: "VOUS POURREZ Y DÉGUSTER PLUS DE 2000 BIÈRES !Pas étonnant que les amateurs de bière du monde entier adorent ce lieu. Vous pourrez y déguster plus de 2000 bières du monde entier. Le Delirium Café détient le record du monde Guinness World Records pour le nombre de bières offertes à la dégustation : 2004, record obtenu en 2004.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )


# promo_1 = Promotion.create!(name: "Heure Joyeuse", offer: "-50% sur toutes les boissons", start_date: "10/09/2023", end_date: "10/09/2023", bar_id: bar_1.id)
# promo_2 = Promotion.create!(name: "Nuit des Cocktails", offer: "2 cocktails pour le prix d'1", start_date: "15/09/2023", end_date: "15/09/2023", bar_id: bar_1.id)
# promo_3 = Promotion.create!(name: "Semaine de la Bière", offer: "Toutes les bières à -30%", start_date: "20/09/2023", end_date: "27/09/2023", bar_id: bar_1.id)
# promo_4 = Promotion.create!(name: "Buffet à Volonté", offer: "Buffet gratuit avec chaque boisson", start_date: "05/10/2023", end_date: "05/10/2023", bar_id: bar_2.id)
# promo_5 = Promotion.create!(name: "Soirée Karaoké", offer: "Réduction de 20% sur les consommations pendant le karaoké", start_date: "12/10/2023", end_date: "12/10/2023", bar_id: bar_2.id)
# promo_6 = Promotion.create!(name: "Fête des Amis", offer: "Apportez 3 amis, obtenez 1 plat gratuit", start_date: "18/10/2023", end_date: "18/10/2023", bar_id: bar_2.id)
# promo_7 = Promotion.create!(name: "Happy Pizza", offer: "Pizza à moitié prix avec chaque boisson", start_date: "25/10/2023", end_date: "25/10/2023", bar_id: bar_3.id)
# promo_8 = Promotion.create!(name: "Dégustation de Vins", offer: "Dégustation gratuite de vins ce week-end", start_date: "05/11/2022", end_date: "06/11/2022", bar_id: bar_3.id)
# promo_9 = Promotion.create!(name: "Ladies Night", offer: "Cocktails gratuits pour les dames", start_date: "15/11/2023", end_date: "15/11/2023", bar_id: bar_3.id)
# promo_10 = Promotion.create!(name: "Mois du Whisky", offer: "Réduction de 25% sur tous les whiskys", start_date: "01/12/2022", end_date: "31/12/2022", bar_id: bar_4.id)
# promo_11 = Promotion.create!(name: "Brunch du Dimanche", offer: "Brunch à -20% tous les dimanches", start_date: "05/01/2024", end_date: "05/01/2024", bar_id: bar_4.id)
# promo_12 = Promotion.create!(name: "Nouvel An en Avance", offer: "Célébrez le Nouvel An avec -15% sur les bulles", start_date: "15/01/2022", end_date: "15/01/2022", bar_id: bar_4.id)
# promo_13 = Promotion.create!(name: "Festival des Mojitos", offer: "Tous les mojitos à prix réduit", start_date: "01/02/2024", end_date: "07/02/2024", bar_id: bar_5.id)
# promo_14 = Promotion.create!(name: "Menu Étudiant", offer: "Menu complet à -25% sur présentation de la carte étudiante", start_date: "10/02/2024", end_date: "10/02/2024", bar_id: bar_5.id)
# promo_15 = Promotion.create!(name: "Saint-Valentin Romantique", offer: "Dîner aux chandelles avec une bouteille de vin offerte", start_date: "14/02/2024", end_date: "14/02/2024", bar_id: bar_5.id)

# booking_1 = Booking.create!(user_id: etienne.id, promotion_id: promo_1.id, qr_progress: 1)
# booking_2 = Booking.create!(user_id: etienne.id, promotion_id: promo_2.id, qr_progress: 1)
# booking_3 = Booking.create!(user_id: etienne.id, promotion_id: promo_3.id)
# booking_4 = Booking.create!(user_id: etienne.id, promotion_id: promo_4.id, qr_progress: 1)
# booking_5 = Booking.create!(user_id: etienne.id, promotion_id: promo_5.id, qr_progress: 1)
# booking_6 = Booking.create!(user_id: etienne.id, promotion_id: promo_6.id)
# booking_7 = Booking.create!(user_id: etienne.id, promotion_id: promo_7.id)
# booking_8 = Booking.create!(user_id: etienne.id, promotion_id: promo_8.id)
# booking_9 = Booking.create!(user_id: etienne.id, promotion_id: promo_9.id)
# booking_10 = Booking.create!(user_id: etienne.id, promotion_id: promo_10.id)
# booking_11 = Booking.create!(user_id: etienne.id, promotion_id: promo_11.id)
# booking_12 = Booking.create!(user_id: etienne.id, promotion_id: promo_12.id)
# booking_13 = Booking.create!(user_id: etienne.id, promotion_id: promo_13.id)

# review_1 = Review.create!(content: "Barmans super sympa à chaque fois. Grande sélection de bière/cocktail. Toujours aussi content d'y retourner !", rating: 4, booking_id: booking_2.id)
# review_2 = Review.create!(content: "Cocktails petits, hors de prix avec peu de saveur... Les barmans n'utilisent de gants et touchent l'argent, cartes bleus, et ingredients des cocktails au meme temps.. pas d'hygiene.", rating: 1, booking_id: booking_3.id)
# review_3 = Review.create!(content: "Déco et ambiance super comme j aime. A faire absolument durant un week-ends de visite sur Bordeaux", rating: 5, booking_id: booking_1.id)

tag_1 = Tag.create!(name: "flechette")
tag_2 = Tag.create!(name: "billard")
tag_3 = Tag.create!(name: "shooter")
tag_5 = Tag.create!(name: "karaoké")
tag_6 = Tag.create!(name: "cocktails")
tag_7 = Tag.create!(name: "rhum")
tag_8 = Tag.create!(name: "dansant")
tag_9 = Tag.create!(name: "rock")
tag_10 = Tag.create!(name: "insolite")
tag_11 = Tag.create!(name: "pub")
tag_12 = Tag.create!(name: "vin")
tag_13 = Tag.create!(name: "terrasse")
tag_4 = Tag.create!(name: "rooftop")
tag_14 = Tag.create!(name: "rooftop")


# bar_tag_1 = BarTag.create!(bar_id: bar_1.id, tag_id: tag_8.id)
# bar_tag_2 = BarTag.create!(bar_id: bar_2.id, tag_id: tag_8.id)
# bar_tag_3 = BarTag.create!(bar_id: bar_3.id, tag_id: tag_6.id)
# bar_tag_4 = BarTag.create!(bar_id: bar_4.id, tag_id: tag_10.id)
# bar_tag_5 = BarTag.create!(bar_id: bar_5.id, tag_id: tag_7.id)
# bar_tag_6 = BarTag.create!(bar_id: bar_6.id, tag_id: tag_8.id)
# bar_tag_7 = BarTag.create!(bar_id: bar_7.id, tag_id: tag_11.id)
# bar_tag_8 = BarTag.create!(bar_id: bar_8.id, tag_id: tag_1.id)
# bar_tag_9 = BarTag.create!(bar_id: bar_9.id, tag_id: tag_3.id)
# bar_tag_10 = BarTag.create!(bar_id: bar_10.id, tag_id: tag_9.id)
# bar_tag_11 = BarTag.create!(bar_id: bar_11.id, tag_id: tag_11.id)
# bar_tag_12 = BarTag.create!(bar_id: bar_12.id, tag_id: tag_13.id)
# bar_tag_13 = BarTag.create!(bar_id: bar_13.id, tag_id: tag_11.id)
# bar_tag_14 = BarTag.create!(bar_id: bar_14.id, tag_id: tag_5.id)
# bar_tag_15 = BarTag.create!(bar_id: bar_15.id, tag_id: tag_10.id)
# bar_tag_16 = BarTag.create!(bar_id: bar_16.id, tag_id: tag_10.id)
# bar_tag_17 = BarTag.create!(bar_id: bar_17.id, tag_id: tag_12.id)



# BORDEAUX MEETINGS
meeting_1= Meeting.create!(name: "Naâman", address: "18 Cours Barbey, 33800 Bordeaux", start_date: "23/09/10", end_date: "23/09/10", start_time: DateTime.new(2023,9,10), end_time: DateTime.new(2023,9,10))
meeting_2= Meeting.create!(name: "Sopycal: Coeur Full KO Party", address: "4 Rue Achard, 33300 Bordeaux", start_date: "23/09/12", end_date: "23/09/12", start_time: DateTime.new(2023,9,12), end_time: DateTime.new(2023,9,12))
meeting_3= Meeting.create!(name: "L'indomptable Flow Festival", address: "18 Cours Barbey, 33800 Bordeaux", start_date: "23/09/14", end_date: "23/09/14", start_time: DateTime.new(2023,9,14), end_time: DateTime.new(2023,9,14))
meeting_4= Meeting.create!(name: "The Weekend", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/18", end_date: "23/09/18", start_time: DateTime.new(2023,9,18), end_time: DateTime.new(2023,9,18))
meeting_5= Meeting.create!(name: "Henri Dès", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/22", end_date: "23/09/22", start_time: DateTime.new(2023,9,22), end_time: DateTime.new(2023,9,22))
meeting_6= Meeting.create!(name: "BigFlo & Oli", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/24", end_date: "23/09/24", start_time: DateTime.new(2023,9,24), end_time: DateTime.new(2023,9,24))
meeting_7= Meeting.create!(name: "Metronomy", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/25", end_date: "23/09/25", start_time: DateTime.new(2023,9,25), end_time: DateTime.new(2023,9,25))
meeting_8= Meeting.create!(name: "L'Impératrice", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/28", end_date: "23/09/28", start_time: DateTime.new(2023,9,28), end_time: DateTime.new(2023,9,28))
meeting_9= Meeting.create!(name: "Francis Cabrel", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/30", end_date: "23/09/30", start_time: DateTime.new(2023,9,30), end_time: DateTime.new(2023,9,30))

puts "all created"