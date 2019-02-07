# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gossip.destroy_all



20.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
    pseudo: Faker::Pokemon.name)
end


30.times do
    gossip = Gossip.create!(title: Faker::LeagueOfLegends.champion, content: Faker::LeagueOfLegends.quote,
    author: User.all.sample)
end
