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

Space.create(title: "Office with a view", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Corporate Space", location: "Kaiserdamm 20, 14057 Berlin", price_per_month: "69", photo_url: "", user_id: 4)
Space.create(title: "Cozy and quite work space", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Professional Space", location: "Stralauer Allee 3, 10245 Berlin", price_per_month: "79", photo_url: "", user_id: 3)
Space.create(title: "Sharing is Caring", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Private Space", location: "Grunewaldstr. 44, 10825 Berlin", price_per_month: "33", photo_url: "", user_id: 5)
Space.create(title: "Home Office away from Home", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Private Space", location: "Rathausstr. 21, 10178 Berlin", price_per_month: "110", photo_url: "", user_id: 3)
Space.create(title: "Urban Jungle Office", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Private Space", location: "Adalbertstr. 90, 10997 Berlin", price_per_month: "89", photo_url: "", user_id: 6)
Space.create(title: "Co-Working in a private space", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Private Space", location: "Zossener Str. 12, 10961 Berlin", price_per_month: "45", photo_url: "", user_id: 6)
Space.create(title: "Quiet and Green", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Professional Space", location: "Gleimstr. 38, 10437 Berlin", price_per_month: "120", photo_url: "", user_id: 7)
Space.create(title: "Work place in a modern loft", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Corporate Space", location: "Knaackstr. 16, 10405 Berlin", price_per_month: "50", photo_url: "", user_id: 8)
Space.create(title: "Happy working in a happy place", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Community Space", location: "Sonnenallee 75, 12045 Berlin", price_per_month: "99", photo_url: "", user_id: 9)
Space.create(title: "Spacious, green and bright", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.", space_type: "Community Space", location: "Boddinstr. 64, 12053 Berlin", price_per_month: "66", photo_url: "", user_id: 10)

puts "End seeding spaces, #{Space.count} created ..."
