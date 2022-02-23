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

user_1 = User.create(email: "auroregosset.pro@gmail.com", password: "mdpmdp1", username: 'Girl1') # user 1 pour demo
user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'Girl2') # user 2 pour demo
# Artistes pour lien entre home page et artworks -> A intégrer dans 2 artworks
# user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'TopGirl2') # user 2 pour demo
# user_2 = User.create(email: "caroline.m.dana@gmail.com", password: "mdpmdp2", username: 'TopGirl2') # user 2 pour demo

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password, username: Faker::Internet.username) # user with faker
end

# Photos
artwork_1 = Artwork.new(
  user: user_1,
  title: "Les lecteurs du jour",
  price_per_day: 49,
  description: "Lecteurs dans la brume de la dalle de la défense, Paris. Photo Noir & Blanc. 65x50"
)

file = get_image("artwork_1.jpeg")
artwork_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_1.save!

artwork_2 = Artwork.new(
  user: user_2,
  title: "L'immeuble ensoleillé",
  price_per_day: 33,
  description: "Vue sur les fenêtres d'un immeuble de Marseille. Photo Noir & Blanc. 100x100"
)

file = get_image("artwork_2.jpeg")
artwork_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_2.save!

artwork_3 = Artwork.new(
  user: User.all.sample,
  title: "Mains d'artisan",
  price_per_day: 52,
  description: "Mains travaillant l'ivoire. Photo Noir & Blanc. 75x60"
)

file = get_image("artwork_3.jpeg")
artwork_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_3.save!

# abstrait
artwork_4 = Artwork.new(
  user: User.all.sample,
  title: "Strong womens",
  price_per_day: 200,
  description: "Femmes aux couleurs d'été. Peinture acrylique. 55x60"
)

file = get_image("artwork_4.jpeg")
artwork_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_4.save!

artwork_5 = Artwork.new(
  user: User.all.sample,
  title: "Dunes d'automne",
  price_per_day: 50,
  description: "Plage avec des dunes enseillée. Peinture à l'huile. 100x65"
)

file = get_image("artwork_5.jpeg")
artwork_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_5.save!

artwork_6 = Artwork.new(
  user: User.all.sample,
  title: "Graphistérie",
  price_per_day: 60,
  description: "Abstrait, ronds, carrés, triangles aux couleurs peps. Vinyle. 95x85"
)

file = get_image("artwork_6.jpeg")
artwork_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_6.save!

# stree art
artwork_7 = Artwork.new(
  user: User.all.sample,
  title: "Folie des cartoons",
  price_per_day: 150,
  description: "Les dessins animés de l'enfance. Peinture acrylique & Bombe aérosol. 110x85"
)

file = get_image("artwork_7.jpeg")
artwork_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_7.save!

artwork_8 = Artwork.new(
  user: User.all.sample,
  title: "Puzzle fou",
  price_per_day: 95,
  description: "Pop culture Street-artistes. Peinture acrylique & Bombe aérosol. 65x55"
)

file = get_image("artwork_8.jpeg")
artwork_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_8.save!

artwork_9 = Artwork.new(
  user: User.all.sample,
  title: "Croque-dent",
  price_per_day: 35,
  description: "Ecriture abstraite avec personnages fictifs. Peinture acrylique & Bombe aérosol. 90x90"
)

file = get_image("artwork_9.jpeg")
artwork_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_9.save!

# peinture
artwork_10 = Artwork.new(
  user: User.all.sample,
  title: "Mer d'été",
  price_per_day: 100,
  description: "Peinture d'un paysage d'Atlantique. Peinture acrylique, Collage sur Bois. 90x85"
)

file = get_image("artwork_10.jpeg")
artwork_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_10.save!

artwork_11 = Artwork.new(
  user: User.all.sample,
  title: "Womens day",
  price_per_day: 112,
  description: "Peinture colorée abstraite avec mise en avant de la femme. Peinture acrylique. 100x80"
)

file = get_image("artwork_11.jpeg")
artwork_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_11.save!

artwork_12 = Artwork.new(
  user: User.all.sample,
  title: "Sunset",
  price_per_day: 80,
  description: "Une œuvre où le regard se perd grâce à l'asbtrait et aux couleurs chaudes. Peinture à l'huile. 55x65"
)

file = get_image("artwork_12.jpeg")
artwork_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork_12.save!

# créer 2 artistes pour home page Simon
