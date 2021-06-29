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
    name: "McDonald's"
})

a2 = Attraction.create({
    name: "Wendy's"
})

a3 = Attraction.create({
    name: "Burger King"
})

puts "Wooh-Wee, attractions seeded"

u1 = User.create({
    username: "Sean"
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
    attraction_id: a1.id
})

m2 = Marker.create({
    user_id: u1.id,
    attraction_id: a2.id
})

m3 = Marker.create({
    user_id: u1.id,
    attraction_id: a3.id
})

puts "Markers marked"

t1 = Trip.create({
    user_id: u1.id,
    name: "London"
})

t2 = Trip.create({
    user_id: u1.id,
    name: "Hawaii"
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

puts "You're going places, literally. Destinations seeded."