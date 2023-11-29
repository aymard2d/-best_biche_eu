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
User.destroy_all

5.times do
  owner = User.create!(
    first_name: Faker::Name.name,
    password: Faker::Internet.password,
    email: Faker::Internet.unique.email,
  )

  # Pour chaque utilisateur, créez un animal associé
  puts "name"
  name = Faker::Name.name
  puts "age"
  age = Faker::Number.between(from: 18, to: 90)
  puts "gender"
  gender = Faker::Gender.binary_type
  puts "skill"
  skill = Faker::Superhero.power
  puts "specie"
  specie = Faker::Creature::Animal.name
  puts "escort name"
  escort_name = Faker::JapaneseMedia::DragonBall.character
  puts "description"
  description = Faker::Lorem.paragraph

  animal = Animal.create!(
    name: name,
    age: age,
    gender: gender,
    skill: skill,
    specie: specie,
    escort_name: escort_name,
    description: description,
    owner_id: owner.id,
  )
end
