# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating users ..."

User.create(email: "schorsch@testing.com", password: "123456", password_confirmation: "123456", first_name: "George", last_name: "Clooney", username: "Schorsch")
User.create(email: "matty@testing.com", password: "123456", password_confirmation: "123456", first_name: "Matt", last_name: "Damon", username: "Matty")
User.create(email: "bradsen@testing.com", password: "123456", password_confirmation: "123456", first_name: "Brad", last_name: "Pitt", username: "Bradsen")
User.create(email: "elly@testing.com", password: "123456", password_confirmation: "123456", first_name: "Elliot", last_name: "Gould", username: "Elly")
User.create(email: "jules@testing.com", password: "123456", password_confirmation: "123456", first_name: "Julia", last_name: "Roberts", username: "Jules")
User.create(email: "markymark@testing.com", password: "123456", password_confirmation: "123456", first_name: "Mark", last_name: "Wahlberg", username: "Markymark")
User.create(email: "mary@testing.com", password: "123456", password_confirmation: "123456", first_name: "Marion", last_name: "Cotillard", username: "Mary")
User.create(email: "fishy@testing.com", password: "123456", password_confirmation: "123456", first_name: "Laurence", last_name: "Fishburne", username: "Fishy")
User.create(email: "judy@testing.com", password: "123456", password_confirmation: "123456", first_name: "Jude", last_name: "Law", username: "Judy")
User.create(email: "gwyn@testing.com", password: "123456", password_confirmation: "123456", first_name: "Gwyneth", last_name: "Paltrow", username: "Gwyn")

puts "End seeding users, #{User.count} created ..."

puts "Start seeding spaces..."

file = URI.open('https://images.unsplash.com/photo-1600494603989-9650cf6ddd3d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')
s1 = Space.create(
  title: "Office with a view",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Corporate Space",
  location: "Hagelberger Str. 11 10965 Berlin",
  latitude: 52.4918226,
  longitude: 13.3842672,
  price_per_month: "69",
  user_id: 4)

s1.photo.attach(io: file, filename: 'office1.png', content_type: 'image/png')
s1.save
puts "#{Space.count} #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1585634917202-6f03b28fc6d0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
s2 = Space.create(
  title: "Cozy and quite work space",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Professional Space",
  location: "Kreuzbergstraße 17a, 10965 Berlin",
  latitude: 52.4892546,
  longitude: 13.374921,
  price_per_month: "79",
  user_id: 3)

s2.photo.attach(io: file, filename: 'office2.png', content_type: 'image/png')
s2.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
s3 = Space.create(
  title: "Sharing is Caring",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Private Space",
  location: "Nostitzstraße 15, 10961 Berlin",
  latitude: 52.4914043,
  longitude: 13.3904046,
  price_per_month: "33",
  user_id: 5)

s3.photo.attach(io: file, filename: 'office3.png', content_type: 'image/png')
s3.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1595846519845-68e298c2edd8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
s4 = Space.create(
  title: "Home Office away from Home",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Private Space",
  location: "Bergmannstraße 141, 10961 Berlin",
  latitude: 52.4890419,
  longitude: 13.3942448,
  price_per_month: "110",
  user_id: 3)

s4.photo.attach(io: file, filename: 'office4.png', content_type: 'image/png')
s4.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1599652645257-ff34421cd171?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
s5 = Space.create(
  title: "Urban Jungle Office",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Private Space",
  location: "Nostitzstraße 15, 10961 Berlin",
  latitude: 52.4914043,
  longitude: 13.3904046,
  price_per_month: "89",
  user_id: 6)

s5.photo.attach(io: file, filename: 'office5.png', content_type: 'image/png')
s5.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1597611717581-f295e2b1944f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1111&q=80')
s6 = Space.create(
  title: "Co-Working in a private space",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Private Space",
  location: "Grunowstraße 11-21, 13187 Berlin",
  latitude: 52.5677108,
  longitude: 13.409336,
  price_per_month: "45",
  user_id: 6)

s6.photo.attach(io: file, filename: 'office6.png', content_type: 'image/png')
s6.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1449247613801-ab06418e2861?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1051&q=80')
s7 = Space.create(
  title: "Quiet and Green",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Professional Space",
  location: "Lotosweg 30-34, 13467 Berlin",
  latitude: 52.6142558,
  longitude: 13.3234351,
  price_per_month: "120",
  user_id: 7)

s7.photo.attach(io: file, filename: 'office7.png', content_type: 'image/png')
s7.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1498409785966-ab341407de6e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1060&q=80')
s8 = Space.create(
  title: "Work place in a modern loft",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Corporate Space",
  location: "Fehrbelliner Straße 45, 10119 Berlin, Germany",
  latitude: 52.5346701,
  longitude: 13.3999596,
  price_per_month: "50",
  user_id: 8)

s8.photo.attach(io: file, filename: 'office8.png', content_type: 'image/png')
s8.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1455994972514-4624f7f224a7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')
s9 = Space.create(
  title: "Happy working in a happy place",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Community Space",
  location: "Kastanienallee 55, 10119 Berlin",
  latitude: 52.5333039,
  longitude: 13.4047241,
  price_per_month: "99",
  user_id: 9)

s9.photo.attach(io: file, filename: 'office9.png', content_type: 'image/png')
s9.save
puts "#{Space.count}. #{Space.last.title} created..."

file = URI.open('https://images.unsplash.com/photo-1594732832278-abd644401426?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
s10 = Space.create(
  title: "Spacious, green and bright",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
  space_type: "Community Space",
  location: "Bornholmer Straße 33, 10439 Berlin, Germany",
  latitude: 52.55415725708008,
  longitude: 13.405263900756836,
  price_per_month: "66",
  user_id: 10)

s10.photo.attach(io: file, filename: 'office10.png', content_type: 'image/png')
s10.save
puts "#{Space.count}. #{Space.last.title} created..."

puts "End seeding spaces, #{Space.count} created ..."
