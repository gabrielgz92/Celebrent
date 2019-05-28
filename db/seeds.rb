# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'time'

puts "Cleaning up database..."
[Booking, Celebrity, User].each(&:destroy_all)
puts "----------------------"


puts "Seeding Celebrities..."

CELEBRITIES = [
  {
    first_name: 'Carlos',
    last_name: 'Tevez',
    description: 'Soccer player, nice guy',
    gender: 'Male',
    date_of_birth: Date.parse("Feb 5 1984"),
    photo: "https://www.infobae.com/new-resizer/CRAM2bHolZXj-91EBRNYsWagVTA=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/01/21075737/tevez-presentacion-china-1920-2.jpg",
    rate_per_hour: 800
  },
  {
    first_name: 'Hugh',
    last_name: 'Grant',
    description: 'Actor',
    gender: 'Male',
    date_of_birth: Date.parse("Sep 9 1960"),
    photo: "https://cbsnews3.cbsistatic.com/hub/i/r/2012/01/05/fee18060-a643-11e2-a3f0-029118418759/resize/620x465/29618f3f62fb875708987caa2783dae6/Hughgrant_ssjpg.jpg",
    rate_per_hour: 45

  }
  ]

Celebrity.create!(CELEBRITIES)
puts "Created #{Celebrity.count} celebrities"

puts "----------------------"
puts "Seeding Users..."

USERS = [
  {
    email: 'ggz@gmail.com',
    password: '123456',
    first_name: 'Gabriel',
    last_name: 'GZ',
    date_of_birth: Date.parse("Jan 11 1992"),
    description: '???',
    gender: 'Male',
    photo: 'https://www.fodors.com/wp-content/uploads/2017/12/Tasmanian-Devils-hero.jpg'
  },
  {
    email: 'susan@gmail.com',
    password: 'password',
    first_name: 'Pepito',
    last_name: 'Fulano',
    date_of_birth: Date.parse("May 23 1989"),
  }
]

User.create!(USERS)
puts "Created #{User.count} users"

puts "----------------------"
puts "Seeding Bookings..."

BOOKINGS = [
  {
    status: 'Pending',
    duration: 3,
    rate_per_hour: Celebrity.first[:rate_per_hour],
    user_id: User.first[:id],
    celebrity_id: Celebrity.first[:id]
  }
]

Booking.create!(BOOKINGS)
puts "Created #{Booking.count} bookings"
puts "----------------------"
puts "Finished"






