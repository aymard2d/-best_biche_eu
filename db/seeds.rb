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

owner1 = User.create!(first_name: "Debo", last_name:"Ticket" , gender: "Femme", address: "2, rue Sociale", rating:10 , email: "deborah@test.fr", password: "123444")
owner2 = User.create!(first_name: "Pascal", last_name:"La Débrouille" , gender: "Homme", address: "14, Avenue de la room", rating:10 , email: "pascalou@wagon.fr", password: "1234567")
owner3 = User.create!(first_name: "Sarah", last_name:"Syja" , gender: "Femme", address: "Room 5", rating:10 , email: "sarah@syja.fr", password: "1234567")
owner4 = User.create!(first_name: "Julien", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "julien@syja.fr", password: "1234567")
owner5 = User.create!(first_name: "Yacine", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "yacine@syja.fr", password: "1234567")
owner6 = User.create!(first_name: "Aymard", last_name:"Syja" , gender: "Homme", address: "Room 5", rating:10 , email: "aymard@syja.fr", password: "1234567")
owner7 = User.create!(first_name: "Clothilde", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "clo@park.fr", password: "1234567")
owner8 = User.create!(first_name: "Djadja", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "jade@park.fr", password: "1234567")
owner9 = User.create!(first_name: "Fred", last_name:"Parkbuddies" , gender: "Femme", address: "room2", rating:10 , email: "fred@park.fr", password: "1234567")



syjanimal2 = Animal.create!(price: 100, address: "Lyon", name: "Sandrine", age: 12, gender: "Female", specie: "Poule", owner_id: owner2.id, escort_name: "Chicken children", description: "Emmène les enfants au parc et joue avec eux.", skill: "Livrée avec 'Park Buddies'")
syjanimal3 = Animal.create!(price: 400, address: "Marseille", owner_id: owner3.id, name: "Lionel", age: 4, gender: "Female", specie: "Perroquet", escort_name: "ApéroQuet", description: "Pépare l'apéro. Peut le prendre avec vous si vous êtes seul. Barista de génie.", skill: "Super serveur")
syjanimal4 = Animal.create!(price: 1400, address: "Nantes",owner_id: owner4.id, name: "Jacqueline", age: 6, gender: "Female", specie: "Biche", escort_name: "Sex on the biche", description: "Vous accompagne à toutes vos soirées.", skill: "Porte bien les talons.")
syjanimal5 = Animal.create!(price: 250, address: "Paris",owner_id: owner5.id, name: "Donovan", age: 6, gender: "Femelle", specie: "Chat", escort_name: "Ninja Syja", description: "Ceux qui croisent sa route sont encore en vie. Pas ceux qui croisent son viseur.", skill: "Aucun état dâme.")
syjanimal11 = Animal.create!(price: 4000, address: "Lille",owner_id: owner5.id, name: "Francis", age: 6, gender: "Male", specie: "Chat", escort_name: "Fat Francis", description: "Encore en formation, il a tendance à abandonner ses missions pour attaquer des sapins.", skill: "Pattes douces.")
syjanimal10 = Animal.create!(price: 400, address: "Genève",owner_id: owner5.id, name: "Serge", age: 6, gender: "Femelle", specie: "Chat", escort_name: "Catwoman", description: "Eteins les cibles en silence", skill: "Discret comme un chat.")
syjanimal6 = Animal.create!(price: 1000, address: "Nantes",owner_id: owner6.id, name: "Estelle", age: 6, gender: "Female", specie: "Dev", escort_name: "Mae-ul-li", description: "Peut créer n'importe quoi depuis n'importe où. Et sans db.drop. Mais avec des scaffold.", skill: "Ca va pour tout le monde ?")
syjanimal7 = Animal.create!(price: 40, address: "Rennes",owner_id: owner7.id, name: "Bleue", age: 6, gender: "Female", specie: "Flamand-rose", escort_name: "Rosita Juanita", description: "Elle partage toutes vos vacances. Bonne humeur garantie.", skill: "Le paréo lui va")
syjanimal8 = Animal.create!(price: 450, address: "Valences",owner_id: owner8.id, name: "Seth Gecko", age: 6, gender: "Male", specie: "Chien", escort_name: "FoxTerter", description: "Street langage", skill: "Sava frer ?")
syjanimal9 = Animal.create!(price:250, address: "Grenoble",owner_id: owner9.id, name: "Raph", age: 6, gender: "Female", specie: "Autruche", escort_name: "Sophie la Malice", description: "Vous accompagne à vos soirées.", skill: "charmante mais dangereuse")
syjanimal1 = Animal.create!(price: 140, name: "Anatole", age: 6, gender: "Male", specie: "Pingouin", escort_name: "KinderPingu", description: "amuse toute la famille. Il a toujours des goûters sur lui.", skill: "A parfois froid.", owner_id: owner1.id, address: "Paris")
syjanimal12 = Animal.create!(price: 2000, name: "Sacripan", age: 18, gender: "Male", specie: "Renard", escort_name: "Classy Foxy", description: "Peut s'infiltrer dans n'importe quelle réception grâce à son style et son charisme.", skill: "Cultivé et class.", owner_id: owner1.id, address: "Munich")
syjanimal13 = Animal.create!(price: 800, name: "Edouard", age: 18, gender: "Male", specie: "Renne", escort_name: "X-mas Chris", description: "Une bonne soirée au coin du feu à écouter ses histoires.", skill: "Petit brin de voix.", owner_id: owner1.id, address: "Saint-Etienne")

syjanimal2.photos.attach(io: File.open('app/assets/images/chicken1.jpg'),filename: 'chicken1.jpg' )
syjanimal2.save
syjanimal2.photos.attach(io: File.open('app/assets/images/chicken2.webp'),filename: 'chicken2.webp' )
syjanimal2.save
syjanimal3.photos.attach(io: File.open('app/assets/images/aperoquet-1.jpg'),filename: 'aperoquet-1.jpg' )
syjanimal3.save
syjanimal3.photos.attach(io: File.open('app/assets/images/aperoquet-2.jpg'),filename: 'aperoquet-2.jpg' )
syjanimal3.save
syjanimal4.photos.attach(io: File.open('app/assets/images/biche-1.png'),filename: 'biche-1.png' )
syjanimal4.save
syjanimal5.photos.attach(io: File.open('app/assets/images/sniper-1.jpg'),filename: 'sniper-1.jpg' )
syjanimal5.save
syjanimal6.photos.attach(io: File.open('app/assets/images/mae-ul-li.jpg'),filename: 'mae-ul-li.jpg' )
syjanimal6.save
syjanimal7.photos.attach(io: File.open('app/assets/images/flamand-1.jpg'),filename: 'flamand-1.jpg' )
syjanimal7.save
syjanimal7.photos.attach(io: File.open('app/assets/images/flamand-2.jpg'),filename: 'flamand-2.jpg' )
syjanimal7.save
syjanimal7.photos.attach(io: File.open('app/assets/images/flamand-3.webp'),filename: 'flamand-3.webp' )
syjanimal7.save
syjanimal8.photos.attach(io: File.open('app/assets/images/foxterter.jpg'),filename: 'foxterter.jpg' )
syjanimal8.save
syjanimal9.photos.attach(io: File.open('app/assets/images/autruche1.jpg'),filename: 'autruche1.jpg' )
syjanimal9.save
syjanimal1.photos.attach(io: File.open('app/assets/images/pingu2.jpg'),filename: 'pingu2.jpg' )
syjanimal1.save
syjanimal11.photos.attach(io: File.open('app/assets/images/sniper-3.jpg'),filename: 'sniper-3.jpg' )
syjanimal11.save
syjanimal10.photos.attach(io: File.open('app/assets/images/sniper-2.jpg'),filename: 'sniper-2.jpg' )
syjanimal10.save
syjanimal12.photos.attach(io: File.open('app/assets/images/fox-1.jpg'),filename: 'fox-1.jpg' )
syjanimal12.save
syjanimal12.photos.attach(io: File.open('app/assets/images/fox-2.jpg'),filename: 'fox-2.jpg' )
syjanimal12.save
syjanimal13.photos.attach(io: File.open('app/assets/images/renne-1.jpg'),filename: 'renne-1.jpg' )
syjanimal13.save
syjanimal13.photos.attach(io: File.open('app/assets/images/renne-2.jpg'),filename: 'renne-2.jpg' )
syjanimal13.save
