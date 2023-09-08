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
sophia = User.create!(first_name: "Sophia", last_name: "benani", email: "sophia@bla.com", password: "azerty", category: "client")
elodie = User.create!(first_name: "Elodie", last_name: "Faure", email: "elodie@bla.com", password: "azerty", category: "client")
enzo = User.create!(first_name: "Enzo", last_name: "Redon", email: "enzo@bla.com", password: "azerty", category: "client")
jojo = User.create!(first_name: "Jonathan", last_name: "Seraf", email: "jojo@bla.com", password: "azerty", category: "client")
sylvain = User.create!(first_name: "Sylvain", last_name: "Galtier", email: "sylvain@bla.com", password: "azerty", category: "client")
romain = User.create!(first_name: "Romain", last_name: "Jumeau", email: "romain@bla.com", password: "azerty", category: "client")





#Paul
bar_7 = Bar.create!(name: "Calle Ocho", address: "24 rue Piliers de Tutelle, 33000 Bordeaux", description: "Envie de passer à l’heure cubaine en plein centre-ville bordelais ? Direction la Calle Ocho ! Tapas, Mojitos et salsa sont quelques-uns des ingrédients qui font de ce lieu – élu meilleur bar à ambiance de France – l’un des incontournables bars dansants de Bordeaux. Si vous aimez danser sur des airs latinos, c’est dans ce bar sympa de Bordeaux qu’il vous faudra aller !", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_4 = Bar.create!(name: "The Secret ", address: "170 Cours du médoc, 33000 Bordeaux", description: "Bienvenu à The Secret, un bar caché dans le quartier des Chartrons. Plongé dans un décor des années 30 avec des barmans costumés, ce bar sympa de Bordeaux à pour ambition de divertir ses clients pour qu’ils y passent le meilleur des moments. Couplé d’un escape game, vous pouvez privatiser un salon pendant 1h30 afin de résoudre une énigme entre amis autour d’une sélection de boissons originales.", average_price: 10, open_at: "8:00", close_at: "17:00", user_id: paul.id)
bar_5 = Bar.create!(name: "Vintage Bar", address: "45 rue Saint-James, 33000 Bordeaux", description: "Petit frère du Vintage Café des quais, le Vintage Bar c’est le spot étudiant par excellence, croisé à un vieux rade cubain. Ambiance décontractée, prix largement abordables, et happy hour de 16h à 20h, ce bar sympa de Bordeaux s’impose comme le rendez-vous afterwork/afterschool de la ville. Si le maître-mot de l’établissement bordelais reste la convivialité, le rhum ici est à l’honneur !", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_6 = Bar.create!(name: "I.Boat", address: "Quai Armand Lalande, 33300 Bordeaux", description: "La terrasse (couverte et chauffée en hiver) de l’I.Boat accueille une ambiance différente chaque soir avec ses apéroboats et une programmation indépendante du club. Cocktails et tapas viennent compléter le tableau de ce bar sympa de Bordeaux pour des apéros réussis. De juin à octobre, l’I.Boat ouvre aussi sa plage au bord de l’eau. Ambiance estivale les pieds dans le sable, mais aussi beaucoup d’événements pour rythmer les soirées d’été.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
#David
bar_1 = Bar.create!(name: "Night beach", address: "Place de la Comédie, 33000 Bordeaux", description: "En été, c’est un lieu en plein air pour découvrir un thème unique. À midi, le Rooftop ouvre son élégante terrasse au mobilier moderne et confortable. Une sélection de plats de saison, détox et sain, allant des thés biologiques aux jus de fruits fraîchement pressés. Le soir, le Rooftop accueille des soirées branchées et haut de gamme sous les étoiles. Profitez d’une riche sélection de finger food et de cocktails parmi les plus célèbres de la ville, préparés par des barmen primés.", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: david.id )
bar_2 = Bar.create!(name: "Simone", address: "3 Quai Louis XVIII, 33000 Bordeaux", description: "Cette “cocktailerie” des quais bordelais au charme rétro propose une sélection pointue de bières peu connues de la belle endormie, ainsi que des cocktails aux savants mélanges de saveurs oubliées. Pour matcher avec l’ambiance coquette vintage de ce bar sympa de Bordeaux, les boissons portent ici le nom de femmes d’antan (Eugénie, Colette, Simone ou Suzanne). On apprécie également la grande terrasse fleurie et la playlist tantôt swing, lounge ou jazz, qui vous transporte dans une autre époque.", average_price: 15, open_at: "9:00", close_at: "19:00", user_id: david.id )
bar_3 = Bar.create!(name: "Central Pub", address: "3 Cours Georges Clémenceau, 33000 Bordeaux", description: "Dans le triangle d’or, le Central Pub a ouvert ses portes il y a 15 ans. Vous ne pouvez pas le louper ! Fort de son emplacement sur la place Gambetta, notre pub met à votre disposition une belle et grande terrasse. En entrant, n’oubliez pas de lever les yeux au plafond pour admirer de nombreux instruments de musique accrochés qui font de ce pub un lieu original et surtout unique ! Situé en plein centre-ville de Bordeaux au 3&5 cours G. Clémenceau, Le Central Pub vous offre une salle typique « Pub » où vous pourrez vous plonger dans une déco rétro à l’Anglaise. Ici les thèmes du cinéma, de la musique et du sport se côtoient et vous accompagnent pour un moment chaleureux.", average_price: 20, open_at: "8:00", close_at: "17:00", user_id: david.id)
#Paul
bar_8 = Bar.create!(name: "La Belle Epoque", address: "2 Allée d'Orléans Angle Quai Louis XVIII, 33000, Bordeaux", description: "Côté déco, la salle est unique, on ne retrouve cette ambiance dans nul autre restaurant ici ! Les faïences Viellard ornent la grande salle, elles ont été réalisées par Amédée Caranza qui trouva son inspiration dans les céramiques orientales.", average_price: 7, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_11 = Bar.create!(name: "Yellow Mad Monkey", address: "8 Rue de Lappe, 75011 Paris", description: "Avec son charme de pub irlandais, Yellow Mad Monkey est un incontournable de la rue de Lappe. Ce bar séduit par son atmosphère chaleureuse, ses bières, ses cocktails et ses burgers. Ses murs et plafonds ornés de plantes luxuriantes ajoutent une touche authentique à ce lieu, tandis que sa musique, ses petits plats à partager et ses animations font de cet établissement un lieu accueillant pour se détendre entre amis.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_9 = Bar.create!(name: "Mama Shelter", address: "19 Rue Poquelin Molière, 33000 Bordeaux", description: "Mama veut vous faire grimper au 7ème ciel, ou plutôt au 6ème étage, pour y découvrir son rooftop mamamoji. Pour les petites et grandes soifs, ne manquez pas de tester nos vins mamamoji et nos cocktails signatures mamamoji.", average_price: 4, open_at: "9:00", close_at: "19:00", user_id: paul.id )
bar_19 = Bar.create!(name: "Temple bar", address: "16 rue gambetta, 33000 Bordeaux", description: "OLieu légendaire. Musique irlandaise en direct 24h/24 et 7j/7. La plus grande collection de whisky d'Irlande. Grand choix de bières irlandaises. Nourriture délicieuse. Venez découvrir le Temple Bar Pub !", average_price: 10, open_at: "9:00", close_at: "19:00", user_id: paul.id )



#Jacques
bar_12 = Bar.create!(name: "La Contrescarpe", address: "4 Rue Gambetta, 44000 Nantes", description: "Offrant une vue imprenable sur la Place de la Contrescarpe, ce bar-restaurant est un arrêt populaire pour les locaux et les visiteurs. Avec une large terrasse et une atmosphère animée, La Contrescarpe est idéale pour siroter un verre tout en observant la vie du quartier. La carte propose des plats français classiques et des cocktails rafraîchissants, faisant de cet endroit un choix parfait pour une pause détente.", average_price: 20, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_13 = Bar.create!(name: "Le Requin Chagrin ", address: "5 Rue Des Remparts D'ainay, 69002 Lyon", description: "Le Requin Chagrin est le pub style anglais de la rue Mouffetard. Son long comptoir de bois, son ambiance british et ses nombreuses bières en font un endroit prisé pour les fêtards et les amateurs de ce genre d’atmosphère. Cocktails, IPAs à foison, snacks et plats à partager comme dans un vrai Wetherspoon, il n’y a pas à dire : ça a un air de London !", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_14 = Bar.create!(name: "Le Nid", address: "5 Rue Simon Etcheverry, 64200 Biarritz", description: "Le bar Le Nid – Cocon Ludique est un véritable paradis ludique niché au cœur de Paris. Avec ses deux espaces spacieux de 100 m² et 60 m², Le Nid vous invite à plonger dans le monde captivant des jeux de société. Sa méga ludothèque abrite une collection variée de centaines de jeux qui n’attendent que vous pour des heures de divertissement. L’entrée est à seulement 4 euros par personne pour 2 heures, incluant l’accès à cette incroyable sélection. Dès votre arrivée, délectez-vous d’une boisson de votre choix pour débuter votre aventure ludique. Chaque boisson supplémentaire vous ouvre les portes aux 2 heures suivantes de jeu et de plaisir. N’est-ce pas fantastique ?", average_price: 10, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_15 = Bar.create!(name: "BAR BIBLIOTHÈQUE", address: "57 Rue Lacépède, 75005 Paris", description: "Rendez-vous dans l’un des bars les plus secrets de Paris ! L’ambiance intimiste, quasi mystérieuse, est notamment due à la grande bibliothèque et ses quelques 12 000 ouvrages,  encadrant de confortables fauteuils en cuir. En somme, il s’agit d’un lieu propice à la détente, aux confidences et à la dégustation. L’hôtel Saint-James ravit les papilles les plus délicates avec des cocktails sur-mesure, où chaque arôme est mis en valeur. ", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_16 = Bar.create!(name: "LE PERCHOIR DE L’EST", address: "10 Rue De La Loge, 13002 Marseille", description: "Avant ou après un voyage, quoi de mieux que de se détendre au soleil ? Le Perchoir de l’Est est un rooftop installé sous la rosace Eiffel de la Gare de l’Est. Pourvu de confortables banquettes, d’un bar et d’un snack, ce rooftop à l’ambiance industrielle et romantique est ouvert de juin à fin septembre.", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: jacques.id )
bar_17 = Bar.create!(name: "Le baron rouge", address: "10 Rue D'austerlitz, 31000 Toulouse", description: "On vient ici satisfaire son palais avec des bons crus du terroir, dans une ambiance franchouillarde, sans devoir étaler ses connaissances en œnologie. Le dimanche on peut même y déguster des huîtres avec un bon Sancerre, ou un bon rouge charpenté avec une assiette de charcuterie. Dans cet antre minuscule à la gloire de Bacchus, les murs sont tapissés de bouteilles et de tonneaux empilés du sol au plafond. A l’heure de l’apéro, si vous arrivez un peu tard, n’espérez pas poser un demi-coude sur le zinc, vous resterez probablement sur le trottoir comme la plupart des clients. ", average_price: 17, open_at: "9:00", close_at: "19:00", user_id: jacques.id )


#INTERNATIONNAL


promo_1 = Promotion.create!(name: "Boojee week", offer: "-30% sur toutes les boissons", start_date: "07/07/2023", end_date: "14/07/2023", bar_id: bar_3.id)
promo_2 = Promotion.create!(name: "Saint Patrick", offer: "Toutes les bières à -30%", start_date: "17/03/2023", end_date: "17/03/2023", bar_id: bar_3.id)
promo_3 = Promotion.create!(name: "CDM - Rugby FR vs NZ", offer: "une pinte achetée, une pinte offerte", start_date: "08/09/2023", end_date: "09/09/2023", bar_id: bar_3.id)
promo_16 = Promotion.create!(name: "Tournoi de fléchettes ", offer: "une boisson achetée, un shooter offert", start_date: "12/09/2023", end_date: "13/09/2023", bar_id: bar_3.id)
promo_4 = Promotion.create!(name: "Buffet à Volonté", offer: "Buffet gratuit avec chaque boisson", start_date: "05/10/2023", end_date: "05/10/2023", bar_id: bar_7.id)
promo_5 = Promotion.create!(name: "Soirée Karaoké", offer: "Réduction de 20% sur les consommations pendant le karaoké", start_date: "12/10/2023", end_date: "12/10/2023", bar_id: bar_7.id)
promo_6 = Promotion.create!(name: "Fête des Amis", offer: "Apportez 3 amis, obtenez 1 plat gratuit", start_date: "18/10/2023", end_date: "18/10/2023", bar_id: bar_4.id)
promo_7 = Promotion.create!(name: "Happy Pizza", offer: "Pizza à moitié prix avec chaque boisson", start_date: "25/10/2023", end_date: "25/10/2023", bar_id: bar_4.id)
promo_8 = Promotion.create!(name: "Dégustation de Vins", offer: "Dégustation gratuite de vins ce week-end", start_date: "05/11/2022", end_date: "06/11/2022", bar_id: bar_5.id)
promo_9 = Promotion.create!(name: "Ladies Night", offer: "Cocktails gratuits pour les dames", start_date: "15/11/2023", end_date: "15/11/2023", bar_id: bar_1.id)
promo_10 = Promotion.create!(name: "Mois du Whisky", offer: "Réduction de 25% sur tous les whiskys", start_date: "01/12/2022", end_date: "31/12/2022", bar_id: bar_5.id)
promo_11 = Promotion.create!(name: "Brunch du Dimanche", offer: "Brunch à -20% tous les dimanches", start_date: "05/01/2024", end_date: "05/01/2024", bar_id: bar_1.id)
promo_12 = Promotion.create!(name: "Nouvel An en Avance", offer: "Célébrez le Nouvel An avec -15% sur les bulles", start_date: "15/01/2022", end_date: "15/01/2022", bar_id: bar_6.id)
promo_13 = Promotion.create!(name: "Festival des Mojitos", offer: "Tous les mojitos à prix réduit", start_date: "01/02/2024", end_date: "07/02/2024", bar_id: bar_8.id)
promo_14 = Promotion.create!(name: "Menu Étudiant", offer: "Menu complet à -25% sur présentation de la carte étudiante", start_date: "10/02/2024", end_date: "10/02/2024", bar_id: bar_8.id)
promo_15 = Promotion.create!(name: "Saint-Valentin Romantique", offer: "Dîner aux chandelles avec une bouteille de vin offerte", start_date: "14/02/2024", end_date: "14/02/2024", bar_id: bar_5.id)

booking_1 = Booking.create!(user_id: sophia.id, promotion_id: promo_1.id, qr_progress: 1)
booking_2 = Booking.create!(user_id: sophia.id, promotion_id: promo_2.id, qr_progress: 1)
booking_3 = Booking.create!(user_id: enzo.id, promotion_id: promo_1.id)
booking_4 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)
booking_5 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id)
booking_6 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)
booking_7 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id)
booking_8 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)
booking_9 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id, qr_progress: 1)
booking_10 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id)
booking_11 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id, qr_progress: 1)
booking_12 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id)
booking_13 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id, qr_progress: 1)
booking_14 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id)
booking_15 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id, qr_progress: 1)
booking_16 = Booking.create!(user_id: elodie.id, promotion_id: promo_3.id)
booking_17 = Booking.create!(user_id: sylvain.id, promotion_id: promo_1.id)
booking_18 = Booking.create!(user_id: sylvain.id, promotion_id: promo_2.id, qr_progress: 1)
booking_19 = Booking.create!(user_id: romain.id, promotion_id: promo_1.id, qr_progress: 1)
booking_20 = Booking.create!(user_id: romain.id, promotion_id: promo_1.id)
booking_21 = Booking.create!(user_id: jojo.id, promotion_id: promo_2.id, qr_progress: 1)
booking_22 = Booking.create!(user_id: jojo.id, promotion_id: promo_1.id)
booking_23 = Booking.create!(user_id: elodie.id, promotion_id: promo_1.id, qr_progress: 1)
booking_24 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id)
booking_25 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)
booking_26 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id)
booking_27 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)
booking_28 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id)
booking_29 = Booking.create!(user_id: enzo.id, promotion_id: promo_3.id, qr_progress: 1)

review_1 = Review.create!(content: "Barmans super sympa à chaque fois. Grande sélection de bière/cocktail. Toujours aussi content d'y retourner !", rating: 4, booking_id: booking_4.id)
review_2 = Review.create!(content: "Soirée boojee exceptionelle. TOP!", rating: 5, booking_id: booking_18.id)
review_3 = Review.create!(content: "Le meilleur Pub de Bordeaux", rating: 5, booking_id: booking_23.id)
review_4 = Review.create!(content: "Beaucoup de monde pour la Saint Patrick mais très bonne ambiance!", rating: 4, booking_id: booking_21.id)
review_5 = Review.create!(content: "Très bonne ambiance mais trop de queue aux toilettes à cause d'un toilette hors service ce soir...", rating: 3, booking_id: booking_19.id)

tag_1 = Tag.create!(name: "flechettes")
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

BarTag.create!(bar_id: bar_1.id, tag_id: tag_4.id)
BarTag.create!(bar_id: bar_1.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_2.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_2.id, tag_id: tag_13.id)
BarTag.create!(bar_id: bar_3.id, tag_id: tag_11.id)
BarTag.create!(bar_id: bar_3.id, tag_id: tag_9.id)
BarTag.create!(bar_id: bar_19.id, tag_id: tag_11.id)
BarTag.create!(bar_id: bar_19.id, tag_id: tag_1.id)
BarTag.create!(bar_id: bar_9.id, tag_id: tag_4.id)
BarTag.create!(bar_id: bar_9.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_11.id, tag_id: tag_11.id)
BarTag.create!(bar_id: bar_11.id, tag_id: tag_1.id)
BarTag.create!(bar_id: bar_8.id, tag_id: tag_13.id)
BarTag.create!(bar_id: bar_8.id, tag_id: tag_2.id)
BarTag.create!(bar_id: bar_6.id, tag_id: tag_8.id)
BarTag.create!(bar_id: bar_6.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_5.id, tag_id: tag_5.id)
BarTag.create!(bar_id: bar_5.id, tag_id: tag_3.id)
BarTag.create!(bar_id: bar_4.id, tag_id: tag_10.id)
BarTag.create!(bar_id: bar_4.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_7.id, tag_id: tag_8.id)
BarTag.create!(bar_id: bar_7.id, tag_id: tag_7.id)
BarTag.create!(bar_id: bar_12.id, tag_id: tag_1.id)
BarTag.create!(bar_id: bar_12.id, tag_id: tag_2.id)
BarTag.create!(bar_id: bar_13.id, tag_id: tag_3.id)
BarTag.create!(bar_id: bar_13.id, tag_id: tag_4.id)
BarTag.create!(bar_id: bar_14.id, tag_id: tag_5.id)
BarTag.create!(bar_id: bar_14.id, tag_id: tag_6.id)
BarTag.create!(bar_id: bar_15.id, tag_id: tag_7.id)
BarTag.create!(bar_id: bar_16.id, tag_id: tag_8.id)
BarTag.create!(bar_id: bar_17.id, tag_id: tag_9.id)
BarTag.create!(bar_id: bar_17.id, tag_id: tag_10.id)


# BORDEAUX MEETINGS
meeting_1= Meeting.create!(name: "Naâman", address: "18 Cours Barbey, 33800 Bordeaux", start_date: "23/09/10", end_date: "23/09/10", start_time: DateTime.new(2023,9,10), end_time: DateTime.new(2023,9,10))
meeting_2= Meeting.create!(name: "Sopycal: Coeur Full KO Party", address: "4 Rue Achard, 33300 Bordeaux", start_date: "23/09/12", end_date: "23/09/12", start_time: DateTime.new(2023,9,12), end_time: DateTime.new(2023,9,12))
meeting_3= Meeting.create!(name: "L'indomptable Flow Festival", address: "18 Cours Barbey, 33800 Bordeaux", start_date: "23/09/15", end_date: "23/09/15", start_time: DateTime.new(2023,9,15), end_time: DateTime.new(2023,9,15))
meeting_4= Meeting.create!(name: "The Weekend", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/18", end_date: "23/09/18", start_time: DateTime.new(2023,9,18), end_time: DateTime.new(2023,9,18))
meeting_5= Meeting.create!(name: "Henri Dès", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/22", end_date: "23/09/22", start_time: DateTime.new(2023,9,22), end_time: DateTime.new(2023,9,22))
meeting_6= Meeting.create!(name: "BigFlo & Oli", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/24", end_date: "23/09/24", start_time: DateTime.new(2023,9,24), end_time: DateTime.new(2023,9,24))
meeting_7= Meeting.create!(name: "Metronomy", address: "50 Avenue Jean Alfonséa, 33270 Floirac", start_date: "23/09/16", end_date: "23/09/16", start_time: DateTime.new(2023,9,16), end_time: DateTime.new(2023,9,16))
meeting_8= Meeting.create!(name: "L'Impératrice", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/28", end_date: "23/09/28", start_time: DateTime.new(2023,9,28), end_time: DateTime.new(2023,9,28))
meeting_9= Meeting.create!(name: "Francis Cabrel", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/30", end_date: "23/09/30", start_time: DateTime.new(2023,9,30), end_time: DateTime.new(2023,9,30))
meeting_9= Meeting.create!(name: "Match ouverture, CDM Rugby", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/08", end_date: "23/09/08", start_time: DateTime.new(2023,9,8), end_time: DateTime.new(2023,9,8))
meeting_9= Meeting.create!(name: "France-Uruguay, CDM Rugby", address: "13 Cours Georges Clemenceau, 33000 Bordeaux", start_date: "23/09/14", end_date: "23/09/14", start_time: DateTime.new(2023,9,14), end_time: DateTime.new(2023,9,14))

puts "all created"
