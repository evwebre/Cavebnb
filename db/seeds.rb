# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Cave.destroy_all
Amenity.destroy_all
User.destroy_all
CaveAmenity.destroy_all
puts "Seeding database..."

User.create(email: "captain@caveman.com", password: "123456", first_name: "Captain", last_name: "Caveman")
User.create(email: "conan@thebarbarian.com", password: "123456", first_name: "Conan", last_name: "Barbarian")
User.create(email: "gollum@thepreciouss.net", password: "123456", first_name: "Gollum", last_name: "McSmeagol")
User.create(email: "barney@rubble.com", password: "123456", first_name: "Barney", last_name: "Rubble")
User.create(email: "fred@flintstone.com", password: "123456", first_name: "Fred", last_name: "Flintstone")
User.create(email: "balrog@moria.com", password: "123456", first_name: "Balrog", last_name: "of Doom")
User.create(email: "smaug@lonelymountain.com", password: "123456", first_name: "Smaug", last_name: "Le Dragon")

Amenity.create(name:"Boulder", description:"Roll some sweet hard rock goodness in front of your cave to seal the entrance against the elements (and dinosaurs)", icon:'<i class="fas fa-baseball-ball"></i>')
Amenity.create(name:"Covered Pit", description:"Experience the sweet relief of aromatic freedom, as you close the lid on your, um, excretions.", icon:'<i class="fa fa-poo"></i>')
Amenity.create(name:"Club", description:"Leave your worries -- and your tools! -- at home. This cave comes furnished with a club.", icon:'<i class="fa fa-utensil-spoon"></i>')
Amenity.create(name:"Solar Lighting", description:"Electricity hasn't even been invented yet, so why waste it? This cave is lit by the power of the sun. Just not at night.", icon:'<i class="fa fa-sun"></i>')
Amenity.create(name:"Spirit Guides", description:"Take a tour of the hunting grounds around this cave, with a local spirit guide.", icon:'<i class="fab fa-studiovinari"></i>')
Amenity.create(name:"Drums", description:"Rock out and talk to your fellow nomads with some sweet sounding drums.", icon:'<i class="fas fa-tablets"></i>')
Amenity.create(name:"Evil Demon", description:"For a more adventurous journey, this cave comes fully infested with horrible monsters for you to slay.", icon:'<i class="fab fa-drupal"></i>')
Amenity.create(name:"Flowing Water", description:"This cave is close to a water source for bathing and fishing.", icon:'<i class="fas fa-swimmer"></i>')
Amenity.create(name:"Forbidden Fruit", description:"Get some tasty knowledge and vitamin C with this cave's stash of forbidden fruit.", icon:'<i class="fab fa-apple"></i>')
Amenity.create(name:"Air Freshener", description:"This cave has an air freshener.", icon:'fas fa-air-freshener')

Cave.create(name: "Gollum's Preciouss Pad", user: User.third, description: "It's so precious!", price: "4", remote_photo_url: 'https://i.ytimg.com/vi/jcUEaQLZA2c/maxresdefault.jpg', address: "5333 av Casgrain, Montreal")
Cave.create(name: "Captain's Unga Bungalow", user: User.first, description: "Unga bunga!", price: "6", remote_photo_url: 'https://img-aws.ehowcdn.com/877x500p/photos.demandstudios.com/getty/article/144/177/177044797.jpg', address: "4692 boul Saint Laurent, Montreal", rating: "3")
Cave.create(name: "Cimmerian Spice", user: User.second, description: "What is best in life? To crush your enemies, to see them driven before you, and to hear the lamentations of whoever you beat to this cave.", price: "5", remote_photo_url: 'https://www.asiatouradvisor.com/wp-content/uploads/2017/11/8-most-attractive-caves-visitors-can-explore-in-Quang-Binh4.jpg', address: "82 rue villeneuve, Montreal", rating: "4")
Cave.create(name: "Smaug's Lair", user: User.all[6], description: "My armour is like tenfold shields, my teeth are swords, my claws spears, the shock of my tail is a thunderbolt, my wings a hurricane, and my breath death! But despite all that, my cave is very welcoming. Especially if you're into gold and mithril and weapons and stuff.", price: "15", remote_photo_url: 'https://blenderartists.org/uploads/default/original/4X/d/0/f/d0fddfdb03c74e9d43098418ca4f0fc3f0d6630d.jpg', address: "74 Avenue Fairmount O, Montreal", rating: "4")
Cave.create(name: "Barney's Bamm-Bamm", user: User.fourth, description: "This is the best cave ever!", price: "12", remote_photo_url: 'https://wonderopolis.org/_img?img=/wp-content/uploads/2013/10/dreamstime_xl_4842587-custom.jpg&transform=resizeCrop,720,450', address: "263 Rue Saint Viateur O, Montreal", rating: "2")
Cave.create(name: "Moria Mine All Mine", user: User.all[5], description: "You shall not pass . . . on this awesome opportunity!", price: "10", remote_photo_url: 'https://static.giantbomb.com/uploads/original/1/17172/1405201-lotr_38.jpg', address: "7030 Boulevard Saint-Michel, Montreal", rating: "5")
Cave.create(name: "Pebbles Place", user: User.fifth, description: "It's a yabba dabba do time for the whole family.", price: "3", remote_photo_url: 'http://johnkstuff.blogspot.com/uploaded_images/FFbg01house-760911.jpg', address: "267 Rue Saint Zotique O, Montreal", rating: "4")

Booking.create(cave: Cave.first, user: User.first, checkin: "10-10-2018", checkout: "10-12-2018", status: "proposed")
Booking.create(cave: Cave.second, user: User.second, checkin: "10-10-2018", checkout: "10-12-2018", status: "proposed")
Booking.create(cave: Cave.third, user: User.third, checkin: "10-11-2018", checkout: "11-12-2018", status: "proposed")
Booking.create(cave: Cave.fourth, user: User.fourth, checkin: "10-10-2018", checkout: "10-12-2018", status: "proposed")
Booking.create(cave: Cave.fifth, user: User.fifth, checkin: "10-10-2018", checkout: "10-12-2018", status: "proposed")
Booking.create(cave: Cave.all[5], user: User.all[5], checkin: "10-11-2018", checkout: "11-12-2018", status: "proposed")
Booking.create(cave: Cave.all[6], user: User.all[6], checkin: "10-11-2018", checkout: "11-12-2018", status: "proposed")

Booking.create(cave: Cave.first, user: User.second, checkin: "10-11-2018", checkout: "10-12-2018", status: "accepted")
Booking.create(cave: Cave.second, user: User.third, checkin: "10-10-2018", checkout: "10-12-2018", status: "accepted")
Booking.create(cave: Cave.third, user: User.fourth, checkin: "10-11-2018", checkout: "11-12-2018", status: "accepted")
Booking.create(cave: Cave.fourth, user: User.fifth, checkin: "10-10-2018", checkout: "10-12-2018", status: "accepted")
Booking.create(cave: Cave.fifth, user: User.all[5], checkin: "10-10-2018", checkout: "10-12-2018", status: "accepted")
Booking.create(cave: Cave.all[5], user: User.all[6], checkin: "10-11-2018", checkout: "11-12-2018", status: "accepted")
Booking.create(cave: Cave.all[6], user: User.first, checkin: "10-11-2018", checkout: "11-12-2018", status: "accepted")

Booking.create(cave: Cave.first, user: User.third, checkin: "10-11-2018", checkout: "10-12-2018", status: "rejected")
Booking.create(cave: Cave.second, user: User.fourth, checkin: "10-10-2018", checkout: "10-12-2018", status: "rejected")
Booking.create(cave: Cave.third, user: User.fifth, checkin: "10-11-2018", checkout: "11-12-2018", status: "rejected")
Booking.create(cave: Cave.fourth, user: User.all[5], checkin: "10-10-2018", checkout: "10-12-2018", status: "rejected")
Booking.create(cave: Cave.fifth, user: User.all[6], checkin: "10-10-2018", checkout: "10-12-2018", status: "rejected")
Booking.create(cave: Cave.all[5], user: User.first, checkin: "10-11-2018", checkout: "11-12-2018", status: "rejected")
Booking.create(cave: Cave.all[6], user: User.second, checkin: "10-11-2018", checkout: "11-12-2018", status: "rejected")

Booking.create(cave: Cave.first, user: User.fourth, checkin: "10-11-2018", checkout: "10-12-2018", status: "cancelled")
Booking.create(cave: Cave.second, user: User.fifth, checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelled")
Booking.create(cave: Cave.third, user: User.all[5], checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelled")
Booking.create(cave: Cave.fourth, user: User.all[6], checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelled")
Booking.create(cave: Cave.fifth, user: User.first, checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelled")
Booking.create(cave: Cave.all[5], user: User.second, checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelled")
Booking.create(cave: Cave.all[6], user: User.third, checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelled")

Booking.create(cave: Cave.first, user: User.fifth, checkin: "10-11-2018", checkout: "10-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.second, user: User.all[5], checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.third, user: User.all[6], checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.fourth, user: User.first, checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.fifth, user: User.second, checkin: "10-10-2018", checkout: "10-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.all[5], user: User.third, checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelrequested")
Booking.create(cave: Cave.all[6], user: User.fourth, checkin: "10-11-2018", checkout: "11-12-2018", status: "cancelrequested")

(0..9).each do |n|
   (0..6).to_a.shuffle.take(rand(7)).each do |x|
CaveAmenity.create(cave: Cave.all[n], amenity: Amenity.all[x])
  end
end
#
