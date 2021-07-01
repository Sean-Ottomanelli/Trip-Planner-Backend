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
    name: "Sean's Apartment",
    category: "Attraction",
    latitude: 40.781039368245025,
    longitude: -73.97700772696594,
    description: "this is a place"
})

m2 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 3,
    name: "Shake Shack",
    category: "Restaurant",
    latitude: 40.78083667445886,
    longitude: -73.97642646934601
})

m3 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 4,
    name: "American Museum of Natural History",
    category: "Attraction",
    latitude: 40.78112785148305,
    longitude: -73.97397597719291
})

m4 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Freedom Tower",
    category: "Attraction",
    latitude: 40.712917166364655,
    longitude: -74.01287097602595
})

m5 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "LMCC's Arts Center at Governor's Island",
    category: "Attraction",
    latitude: 40.69255380369747,
    longitude: -74.01571330476163
})

m6 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 1,
    name: "The Bindery",
    category: "Attraction",
    latitude: 40.74180695062785,
    longitude: -73.93716540337736
})

m7 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 4,
    name: "Statue of Liberty Vantage Point",
    category: "Vista",
    latitude: 40.707946180737316,
    longitude: -74.0111360408852
})

m8 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 3,
    name: "Columbia Business School",
    category: "Attraction",
    latitude: 40.82088791703065,
    longitude: -73.95297702649518
})

m9 = Marker.create({
    user_id: u1.id,
    visited: true,
    user_rating: 5,
    name: "Brown University Engineering Research Center",
    category: "Attraction",
    latitude: 41.826369806129,
    longitude: -71.39829755530644
})

m10 = Marker.create({
    user_id: u1.id,
    visited: false,
    urgency: 5,
    name: "Alexandria Center for Life Sciences",
    category: "Attraction",
    latitude: 40.739521474282554,
    longitude: -73.9737136052805
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