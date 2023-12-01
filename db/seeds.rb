# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Animal.destroy_all
Booking.destroy_all
User.destroy_all

owner1 = User.create!(first_name: "Deborah", last_name:"Ticket" , gender: "Femme", address: "2, rue Sociale", rating:10 , email: "deborah@test.fr", password: "123444")
owner2 = User.create!(first_name: "Pascal", last_name:"La Débrouille" , gender: "Homme", address: "14, Avenue de la room", rating:10 , email: "pascalou@wagon.fr", password: "1234454")
owner3 = User.create!(first_name: "Sarah", last_name:"Syja" , gender: "Femme", address: "Room 5", rating:10 , email: "sarah@syja.fr", password: "123444")
owner4 = User.create!(first_name: "Julien", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "julien@syja.fr", password: "1234dz44")
owner5 = User.create!(first_name: "Yacine", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "yacine@syja.fr", password: "1234dz44")
owner6 = User.create!(first_name: "Aymard", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "aymard@syja.fr", password: "12344dz4")
owner7 = User.create!(first_name: "Clothilde", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "clo@park.fr", password: "123444")
owner8 = User.create!(first_name: "Djadja", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "jade@park.fr", password: "123444")
owner9 = User.create!(first_name: "Fred", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "fred@park.fr", password: "123444")



Syjanimal1 = Animal.create(name: "Anatole", age: 6, gender: "Male", specie: "Pingouin", escort_name: "KinderPingu", description: "Emmène les enfants au parc. Il a toujours des goûters sur lui.", skill: "Sait utiliser l'appli 'Park buddies'", owner_id: owner1.id, address: "Paris")
Syjanimal2 = Animal.create(address: "Lyon", name: "Sandrine", age: 12, gender: "Female", specie: "Perroquet", owner_id: owner2.id, escort_name: "ApiRoKey", description: "ApiroKey est une de nos stars les plus demandée par les développeurs juniors. Il peut retenir n'importe quel clef API, cryptée et non-cryptée. C'est un collaborateur de travail fiable et très jovial.", skill: "Peut génèrer les mots de passe des voisins ou collègues qui parlent trop fort.")
Syjanimal3 = Animal.create(address: "Marseille", owner_id: owner3.id, name: "Lionel", age: 4, gender: "Female", specie: "Perroquet", escort_name: "ApéroQuet", description: "Pépare l'apéro. Peut le prendre avec vous si vous êtes seul(e).", skill: "Répète inlassablement 'Santé' et 'Dans les yeux.'. Vous avez l'impression d'être 15 !")
Syjanimal4 = Animal.create(address: "Nantes",owner_id: owner4.id, name: "Jacqueline", age: 6, gender: "Female", specie: "Biche", escort_name: "Beauty Deer", description: "Vous accompagne à toutes vos soirées.", skill: "Porte très bien les talons.")
Syjanimal5 = Animal.create(address: "Lille",owner_id: owner5.id, name: "Francis", age: 6, gender: "Male", specie: "Dindon", escort_name: "Fat Francis", description: "Un compagnon de poche pour tous les longs trajets en voiture.", skill: "Peut engueuler les autres conducteurs aux feux rouge.")
Syjanimal6 = Animal.create(address: "Bordeaux",owner_id: owner6.id, name: "Estelle", age: 6, gender: "Female", specie: "Autruche", escort_name: "Cindy Loper", description: "Un cocktail sur un transat ? Un plouf dans la piscine ? La star de vos vacances !", skill: "Connait toutes les choré des danses de l'été depuis 1996")
Syjanimal7 = Animal.create(address: "Rennes",owner_id: owner7.id, name: "Oscar", age: 6, gender: "Male", specie: "Chat", escort_name: "SamouraiPizzaCat", description: "Aucune idée de sa fonction. Juste il a un nom cool.", skill: "Il a toujours un katana.")
Syjanimal8 = Animal.create(address: "Valences",owner_id: owner8.id, name: "Seth Gecko", age: 6, gender: "Male", specie: "Chien", escort_name: "FoxTerter", description: "Il n'est pas simple d'apprendre les coutumes de la haute société. Mais il est encore plus compliqué de devenir ghetto et maîtriser le langage de la rue. Foxterter est LA star qui va vous aider à porter le jogging en toute décontraction. Calé en culture lifestyle, il maîtrise le verlan, l'arabe, l'accent marseillais, de nombreuses langues africaine et connaît le répertoire de plusieurs dizaines de rappeurs. Vous allez enfin arrêter de faire des erreurs en utilisant 'Miskin et miskina ou gadji et gadjo ", skill: "Foxterter est fourni avec de nombreux accessoires : casquette, banane, sweat à capuche, etc.")
Syjanimal9 = Animal.create(address: "Grenoble",owner_id: owner9.id, name: "Raph", age: 6, gender: "Male", specie: "Tortue", escort_name: "Sophie la Malice", description: "Accompagne les personnes âgées en promenade", skill: "Accepte les longues marches monotones et silencieuses.'")
