# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artwork.destroy_all
Booking.destroy_all
User.destroy_all

require "open-uri"
require "faker"

def get_image(image)
  File.open(File.join(File.dirname(__FILE__), "../app/assets/images/#{image}"))
end

puts 'creating users'
user_1 = User.create(username: "aurore", email: "auroregosset.pro@gmail.com", password: "mdpmdp1") # user 1 pour demo
puts 'created Aurore'
user_2 = User.create(username: "caro", email: "caroline.m.dana@gmail.com", password: "mdpmdp2") # user 2 pour demo
puts 'created Caro'

10.times do
  User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password) # user with faker
  puts 'created 1 user'
end

puts "created #{User.count} users"

puts 'seeding artworks'
# abstrait
artwork_1 = Artwork.new(
  user: User.all.sample,
  username: "Erorua",
  title: "Strong womens",
  category: 'Abstrait',
  price_per_day: 200,
  description: "Abstrait - Femmes aux couleurs d'été - 55x60"
)

file = get_image("artwork_4.jpeg")
artwork_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_1.save!

artwork_2 = Artwork.new(
  user: User.all.sample,
  username: "Naoif",
  title: "Dunes d'automne",
  category: 'Abstrait',
  price_per_day: 50,
  description: "Abstrait - Plage aux dunes enseillées - 100x65"
)

file = get_image("artwork_5.jpeg")
artwork_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_2.save!

artwork_3 = Artwork.new(
  user: User.all.sample,
  username: "Mona",
  title: "Graphistérie",
  category: 'Abstrait',
  price_per_day: 60,
  description: "Abstrait - Asymétrie de ronds, carrés, triangles aux couleurs peps - 95x85"
)

file = get_image("artwork_6.jpeg")
artwork_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_3.save!

# photo
artwork_4 = Artwork.new(
  user: user_1,
  username: "PopCorn",
  title: "Lecteurs d'un jour",
  category: 'Photos',
  price_per_day: 49,
  description: "Photo - Lecteurs dans la brume de la dalle de la défense, Paris - 65x50"
)

file = get_image("artwork_1.jpeg")
artwork_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_4.save!

artwork_5 = Artwork.new(
  user: user_2,
  username: "Enilorac",
  title: "L'immeuble ensoleillé",
  category: 'Photos',
  price_per_day: 33,
  description: "Photo - Vue sur les fenêtres d'un immeuble de Marseille - 100x100"
)

file = get_image("artwork_2.jpeg")
artwork_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_5.save!

artwork_6 = Artwork.new(
  user: User.all.sample,
  username: "Nomis",
  title: "Mains d'artisan",
  category: 'Photos',
  price_per_day: 52,
  description: "Photo - Mains travaillant l'ivoire - 75x60"
)

file = get_image("artwork_3.jpeg")
artwork_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_6.save!

# street art
artwork_7 = Artwork.new(
  user: User.all.sample,
  username: "WeiWei",
  title: "Folie des cartoons",
  category: 'Street Art',
  price_per_day: 150,
  description: "Street Art - Les dessins animés de l'enfance - 110x85"
)

file = get_image("artwork_7.jpeg")
artwork_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_7.save!

artwork_8 = Artwork.new(
  user: User.all.sample,
  username: "Banksy",
  title: "Puzzle fou",
  category: 'Street Art',
  price_per_day: 95,
  description: "Street Art - Mise en avant de la Pop culture, utilisation de la bombe aérosole - 65x55"
)

file = get_image("artwork_8.jpeg")
artwork_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_8.save!

artwork_9 = Artwork.new(
  user: User.all.sample,
  username: "Takashi",
  title: "Croque-dent",
  category: 'Street Art',
  price_per_day: 35,
  description: "Street Art - Ecriture avec personnages fictifs, utilisation bombe aérosole - 90x90"
)

file = get_image("artwork_9.jpeg")
artwork_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_9.save!

# peinture
artwork_10 = Artwork.new(
  user: User.all.sample,
  username: "Njideka",
  title: "Mer d'été",
  category: 'Peinture',
  price_per_day: 100,
  description: "Peinture - Paysage d'Atlantique avec collage sur Bois - 90x85"
)

file = get_image("artwork_10.jpeg")
artwork_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_10.save!

artwork_11 = Artwork.new(
  user: User.all.sample,
  username: "Caroline Dana",
  title: "Womens day",
  category: 'Peinture',
  price_per_day: 112,
  description: "Peinture - Nature colorée et mise en avant de la femme - 100x80"
)

file = get_image("artwork_11.jpeg")
artwork_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_11.save!

artwork_12 = Artwork.new(
  user: User.all.sample,
  username: "Keith",
  title: "Sunset",
  category: 'Peinture',
  price_per_day: 80,
  description: "Peinture - Eté indien aux couleurs oranges et rouges chaudes - 55x65"
)

file = get_image("artwork_12.jpeg")
artwork_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_12.save!

puts "created #{Artwork.count}"
