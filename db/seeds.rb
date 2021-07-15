# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Marker.destroy_all
User.destroy_all
Trip.destroy_all
Destination.destroy_all

u1 = User.create({
    username: "Sean",
    password: "Sean"
})

u2 = User.create({
    username: "Alice"
})

u3 = User.create({
    username: "Jasmine"
})

puts "Users in da house"

m1 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Home",
    category: "Lodging",
    image: "https://cdn-img-feed.streeteasy.com/nyc/image/66/367131766.jpg",
    latitude: 40.781039368245025,
    longitude: -73.97700772696594,
    description: "My Apartment"
})

m2 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Shake Shack Upper West Side",
    category: "Restaurant",
    image: "https://d24wuq6o951i2g.cloudfront.net/img/events/id/315/3154728/assets/546.uws-shake-shack.png",
    latitude: 40.78083667445886,
    longitude: -73.97642646934601,
})

m3 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 4,
    name: "American Museum of Natural History",
    category: "Attraction",
    image: "https://upload.wikimedia.org/wikipedia/commons/e/ec/USA-NYC-American_Museum_of_Natural_History.JPG",
    latitude: 40.78112785148305,
    longitude: -73.97397597719291
})

m4 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 1,
    name: "Freedom Tower",
    category: "Attraction",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/One_world_trade_center_august_2019.jpg/1200px-One_world_trade_center_august_2019.jpg",
    latitude: 40.712917166364655,
    longitude: -74.01287097602595
})

m5 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Tulane University",
    latitude: 29.934945674627386,
    longitude: -90.12310066203958,
    category: "Attraction",
    image: "https://www.venuesolutionsgroup.com/wp-content/uploads/2020/02/gibsoncircle.jpg"
    
})

m6 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 4,
    name: "Waianapanapa State Park",
    latitude: 20.786459556988213,
    longitude: -156.0030289601703,
    category: "Hike",
    image: "https://wpcdn.us-east-1.vip.tn-cloud.net/www.hawaiimagazine.com/content/uploads/2020/12/Black-Sand-Flattened-copy.jpg"
    
})

m7 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 2,
    name: "Statue of Liberty",
    image: "https://www.history.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1MTc1MTk3ODI0MDAxNjA5/topic-statue-of-liberty-gettyimages-960610006-promo.jpg",
    category: "Attraction",
    latitude: 40.690588321357694,
    longitude: -74.04566443392922
})

m8 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 4,
    name: "Captain Cook Monument Trail",
    latitude: 19.491922960964153,
    longitude: -155.91800056469876,
    category: "Hike",
    image: "https://www.fair-wind.com/wp-content/uploads/Fair-Wind-Captain-Cook-Monument-1920x.jpg"
})

m9 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 4,
    name: "Halemau‘u Trail (Switchback Trail)",
    latitude: 20.751964847936655,
    longitude: -156.22941200268403,
    category: "Hike",
    image: "https://lh3.googleusercontent.com/proxy/JxY5MNluZkf1o-8tamPZWs9T_oiPdTiYq_FgMChBjl3iuVS9mZC6U9EZmnV3DibdVW5st4T4qOFz2Fi-b4kUzCZFBu__vA_aBlXL0DwtUbqdwRzqD4qIYA"
})

m10 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 4,
    name: "Pā Ka'oao Trail",
    latitude: 20.714166440819174,
    longitude: -156.25034423741727,
    category: "Hike",
    image: "https://cdn-assets.alltrails.com/uploads/photo/image/20112747/extra_large_6595a8ed09c910f383eddaa8017771be.jpg"
})

m11 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Bike Maui",
    latitude: 20.913505134988977,
    longitude: -156.32260442572897,
    category: "Attraction",
    image: "https://www.mauiticketsforless.com/wp-content/uploads/2016/03/Mountain-Riders-Sunrise-Bike-Tour-2.jpg"
})

m12 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 3,
    name: "Cafe Du Monde",
    latitude: 29.959827343955077,
    longitude: -90.05995235990375,
    category: "Restaurant",
    image: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/cafe-du-monde-new-orleans-french-quarter-ellis-c-baldwin.jpg"
})

puts "Markers marked"

t1 = Trip.create({
    user_id: u1.id,
    name: "New York 2019",
    completed: true
})

t2 = Trip.create({
    user_id: u1.id,
    name: "New Orleans 2019",
    completed: true
})

t3 = Trip.create({
    user_id: u1.id,
    name: "Maui & Big Island 2021",
    completed: false
})

puts "Pack yer bags, Trips are seeded"

d1 = Destination.create({
    trip_id: t1.id,
    marker_id: m1.id
})

d2 = Destination.create({
    trip_id: t1.id,
    marker_id: m2.id
})

d3 = Destination.create({
    trip_id: t1.id,
    marker_id: m3.id
})

d4 = Destination.create({
    trip_id: t1.id,
    marker_id: m4.id
})

d5 = Destination.create({
    trip_id: t2.id,
    marker_id: m5.id
})

d6 = Destination.create({
    trip_id: t3.id,
    marker_id: m6.id
})

d7 = Destination.create({
    trip_id: t1.id,
    marker_id: m7.id
})

d8 = Destination.create({
    trip_id: t3.id,
    marker_id: m8.id
})

d9 = Destination.create({
    trip_id: t3.id,
    marker_id: m9.id
})

d10 = Destination.create({
    trip_id: t3.id,
    marker_id: m10.id
})

d11 = Destination.create({
    trip_id: t3.id,
    marker_id: m11.id
})

d12 = Destination.create({
    trip_id: t2.id,
    marker_id: m12.id
})

puts "You're going places, literally. Destinations seeded."