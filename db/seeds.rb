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

user_1 = User.create(email: "auroregosset.pro@gmail.com", password: "mdpmdp1", username: 'TopGirl1') # user 1 pour demo
user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'TopGirl2') # user 2 pour demo
# Artistes pour lien entre home page et artworks -> A intégrer dans 2 artworks
# user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'TopGirl2') # user 2 pour demo
# user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'TopGirl2') # user 2 pour demo

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password, username: Faker::Internet.username) # user with faker
end

# Photos
artwork_1 = Artwork.new(
  user: user_1,
  title: "2520 - Mains d'artisan",
  price_per_day: 49,
  description: "Main d'un artisan qui polit de l'ivoire pour en faire une défense."
)

file = get_image("artwork_1.jpeg")
artwork_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_1.save!

artwork_2 = Artwork.new(
  user: user_2,
  title: "Matthieu Chedid - M",
  price_per_day: 33,
  description: "M, Matthieu Chedid Musilac Festival, Aix-les-Bains."
)

file = get_image("artwork_2.jpeg")
artwork_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_2.save!

artwork_3 = Artwork.new(
  user: User.all.sample,
  title: "Lecteurs dans la Brume",
  price_per_day: 52,
  description: "Lecteurs dans la brume de la dalle de la défense, Paris."
)

file = get_image("artwork_3.jpeg")
artwork_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_3.save!

# peinture
artwork_4 = Artwork.new(
  user: User.all.sample,
  title: "Girl reading a letter at an open window",
  price_per_day: 200,
  description: "Derrière l'apparente spontanéité de mes œuvres se cache un ajustement mathématique de la construction."
)

file = get_image("artwork_4.png")
artwork_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_4.save!

artwork_5 = Artwork.new(
  user: User.all.sample,
  title: "La Dolce Vita - Diptych",
  price_per_day: 50,
  description: "La Dolce Vita, la douceur de vivre. Le soleil d'été réchauffe ma peau, les fleurs sur la colline se balancent dans une brise d'été."
)

file = get_image("artwork_5.png")
artwork_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_5.save!

artwork_6 = Artwork.new(
  user: User.all.sample,
  title: "Intimité",
  price_per_day: 60,
  description: "Intimité est une marine semi-abstraite, peinte à l'huile, à la brosse et au couteau avec des empâtements sur le motif."
)

file = get_image("artwork_6.png")
artwork_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_6.save!

# stree art
artwork_7 = Artwork.new(
  user: User.all.sample,
  title: "Wiped Out",
  price_per_day: 150,
  description: "Acrylique et bombe aérosol, de l'artiste JonOne. Année 2021. Datée et signée au dos."
)

file = get_image("artwork_7.jpeg")
artwork_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_7.save!

artwork_8 = Artwork.new(
  user: User.all.sample,
  title: "Le doute s'installa",
  price_per_day: 95,
  description: "Pop culture Street-artistes. Oeuvre signée à la main."
)

file = get_image("artwork_8.jpeg")
artwork_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_8.save!

artwork_9 = Artwork.new(
  user: User.all.sample,
  title: "Mon Lisa",
  price_per_day: 35,
  description: "Oeuvre aux techniques mixtes incluant sérigraphie, pour le portrait de Mona Lisa, peintures acryliques, pigments dorés appliqués aux pinceaux encres diverses et marqueurs."
)

file = get_image("artwork_9.jpeg")
artwork_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_9.save!

# abstrait
artwork_10 = Artwork.new(
  user: User.all.sample,
  title: "Choose For Me",
  price_per_day: 100,
  description: "Acrylique, Collage sur Bois."
)

file = get_image("artwork_10.png")
artwork_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_10.save!

artwork_11 = Artwork.new(
  user: User.all.sample,
  title: "One Of These Days",
  price_per_day: 112,
  description: "Les nuances de jaune, orange, magenta, rose, bleu, lilas, vert, beige-brun, blanc et noir forment une composition puissante, intense, détaillée et moderne avec une structure claire, presque symétrique."
)

file = get_image("artwork_11.png")
artwork_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_11.save!

artwork_12 = Artwork.new(
  user: User.all.sample,
  title: "Urban",
  price_per_day: 80,
  description: "Une œuvre où le regard se perd dans les nombreux détails. Ecritures mystérieuses et incompréhensibles, des yeux qui observent, des contrastes entre les couleurs et l'épais trait noir qui donne sa structure à cette œuvre."
)

file = get_image("artwork_12.png")
artwork_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_12.save!

# créer 2 artistes pour home page Simon
