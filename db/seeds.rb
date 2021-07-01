# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Attraction.destroy_all
Marker.destroy_all
User.destroy_all
Trip.destroy_all
Destination.destroy_all


a1 = Attraction.create({
    name: "Sean's Apartment",
    category: "Attraction",
    latitude: 40.781039368245025,
    longitude: -73.97700772696594
})

a2 = Attraction.create({
    name: "Shake Shack",
    category: "Restaurant",
    latitude: 40.78083667445886,
    longitude: -73.97642646934601
})

a3 = Attraction.create({
    name: "American Museum of Natural History",
    category: "Attraction",
    latitude: 40.78112785148305,
    longitude: -73.97397597719291
})

a4 = Attraction.create({
    name: "Freedom Tower",
    category: "Attraction",
    latitude: 40.712917166364655,
    longitude: -74.01287097602595
})

a5 = Attraction.create({
    name: "LMCC's Arts Center at Governor's Island",
    category: "Attraction",
    latitude: 40.69255380369747,
    longitude: -74.01571330476163
})

a6 = Attraction.create({
    name: "The Bindery",
    category: "Attraction",
    latitude: 40.74180695062785,
    longitude: -73.93716540337736
})

a7 = Attraction.create({
    name: "Statue of Liberty Vantage Point",
    category: "Vista",
    latitude: 40.707946180737316,
    longitude: -74.0111360408852
})

a8 = Attraction.create({
    name: "Columbia Business School",
    category: "Attraction",
    latitude: 40.82088791703065,
    longitude: -73.95297702649518
})

a9 = Attraction.create({
    name: "Brown University Engineering Research Center",
    category: "Attraction",
    latitude: 41.826369806129,
    longitude: -71.39829755530644
})

a10 = Attraction.create({
    name: "Alexandria Center for Life Sciences",
    category: "Attraction",
    latitude: 40.739521474282554,
    longitude: -73.9737136052805
})

puts "Wooh-Wee, attractions seeded"

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
    attraction_id: a1.id,
    visited: true,
    user_rating: 5,
    urgency: 3
})

m2 = Marker.create({
    user_id: u1.id,
    attraction_id: a2.id,
    visited: false,
    user_rating: 0,
    urgency: 3
})

m3 = Marker.create({
    user_id: u1.id,
    attraction_id: a3.id,
    visited: true,
    user_rating: 4,
    urgency: 3
})

m4 = Marker.create({
    user_id: u1.id,
    attraction_id: a4.id,
    visited: true,
    user_rating: 5,
    urgency: 3
})

m5 = Marker.create({
    user_id: u1.id,
    attraction_id: a5.id,
    visited: true,
    user_rating: 5,
    urgency: 3
})

m6 = Marker.create({
    user_id: u1.id,
    attraction_id: a6.id,
    visited: true,
    user_rating: 1,
    urgency: 4
})

m7 = Marker.create({
    user_id: u1.id,
    attraction_id: a7.id,
    visited: false,
    user_rating: 0,
    urgency: 4
})

m8 = Marker.create({
    user_id: u1.id,
    attraction_id: a8.id,
    visited: false,
    user_rating: 0,
    urgency: 3
})

m9 = Marker.create({
    user_id: u1.id,
    attraction_id: a9.id,
    visited: true,
    user_rating: 5,
    urgency: 5
})

m10 = Marker.create({
    user_id: u1.id,
    attraction_id: a10.id,
    visited: false,
    user_rating: 0,
    urgency: 5
})

puts "Markers marked"

t1 = Trip.create({
    user_id: u1.id,
    name: "New York 2019",
    completed: true
})

t2 = Trip.create({
    user_id: u1.id,
    name: "Providence 2022",
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

d3 = Destination.create({
    trip_id: t1.id,
    marker_id: m3.id
})

d4 = Destination.create({
    trip_id: t1.id,
    marker_id: m4.id
})

d5 = Destination.create({
    trip_id: t1.id,
    marker_id: m5.id
})

d6 = Destination.create({
    trip_id: t1.id,
    marker_id: m6.id
})

d7 = Destination.create({
    trip_id: t1.id,
    marker_id: m7.id
})

d8 = Destination.create({
    trip_id: t1.id,
    marker_id: m8.id
})

d9 = Destination.create({
    trip_id: t2.id,
    marker_id: m9.id
})

d10 = Destination.create({
    trip_id: t1.id,
    marker_id: m10.id
})

puts "You're going places, literally. Destinations seeded."