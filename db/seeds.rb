# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'time'

# puts "Cleaning up database..."
# [Tag].each(&:destroy_all)
# puts "----------------------"


# puts "Seeding Celebrities..."

# CELEBRITIES = [
#   {
#     first_name: 'Carlos',
#     last_name: 'Tevez',
#     city: 'Ciudadela',
#     country: 'Argentina',
#     description: 'Soccer player, nice guy',
#     gender: 'Male',
#     date_of_birth: Date.parse("Feb 5 1984"),
#     photo: "https://www.infobae.com/new-resizer/CRAM2bHolZXj-91EBRNYsWagVTA=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/01/21075737/tevez-presentacion-china-1920-2.jpg",
#     rate_per_hour: 800
#   },
#   {
#     first_name: 'Hugh',
#     last_name: 'Grant',
#     city: 'London',
#     country: 'United Kingdom',
#     description: 'Actor',
#     gender: 'Male',
#     date_of_birth: Date.parse("Sep 9 1960"),
#     photo: "https://cbsnews3.cbsistatic.com/hub/i/r/2012/01/05/fee18060-a643-11e2-a3f0-029118418759/resize/620x465/29618f3f62fb875708987caa2783dae6/Hughgrant_ssjpg.jpg",
#     rate_per_hour: 45
#   },
#    {
#     first_name: 'Emma',
#     last_name: 'Stone',
#     city: 'New York',
#     country: 'United States of America',
#     description: 'Actress',
#     gender: 'Female',
#     date_of_birth: Date.parse("Nov 6 1988"),
#     photo: "https://media.vanityfair.com/photos/55a674affff2c16856a6bd85/master/w_768,c_limit/emma-stone-aloha-miscast.jpg",
#     rate_per_hour: 500
#   },
#   {
#     first_name: 'Barack',
#     last_name: 'Obama',
#     city: 'Washington DC',
#     country: 'United States of America',
#     description: 'Politician',
#     gender: 'Male',
#     date_of_birth: Date.parse("Aug 4 1961"),
#     photo: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE4MDAzNDEwNzg5ODI4MTEw/barack-obama-12782369-1-402.jpg",
#     rate_per_hour: 350
#   },
#   {
#     first_name: 'Taylor',
#     last_name: 'Swift',
#     city: 'Los Angeles',
#     country: 'United States of America',
#     description: 'Singer',
#     gender: 'Female',
#     date_of_birth: Date.parse("Dec 13 1989"),
#     photo: "https://media.gq.com/photos/5bbfb4e79ee92a2de80fcf16/16:9/w_1280,c_limit/Taylor-Swift-White-Women-GQ-2018-101118.jpg",
#     rate_per_hour: 1000
#   },
#   {
#     first_name: 'Robert',
#     last_name: 'Downey Jr',
#     city: 'Los Angeles',
#     country: 'United States of America',
#     description: 'Actor',
#     gender: 'Male',
#     date_of_birth: Date.parse("Apr 4 1965"),
#     photo: "http://www.gstatic.com/tv/thumb/persons/67369/67369_v9_bb.jpg",
#     rate_per_hour: 100
#   },
#   {
#     first_name: 'Beyonce',
#     last_name: 'Knowles',
#     city: 'Chicago',
#     country: 'United States of America',
#     description: 'Singer',
#     gender: 'Female',
#     date_of_birth: Date.parse("Sep 4 1981"),
#     photo: "https://fortunedotcom.files.wordpress.com/2016/04/gettyimages-88628374.jpg",
#     rate_per_hour: 350
#   },
#   {
#     first_name: 'Kim',
#     last_name: 'Kardashian',
#     city: 'Los Angeles',
#     country: 'United States of America',
#     description: 'Rubbish',
#     gender: 'Female',
#     date_of_birth: Date.parse("Oct 21 1980"),
#     photo: "https://assets.vogue.com/photos/5cab59a6e6f6722ed164fd9b/16:9/pass/01-kim-kardashian-west-vogue-cover-may-2019.jpg",
#     rate_per_hour: 1
#   },
#   {
#     first_name: 'Tom',
#     last_name: 'Cruise',
#     city: 'Los Angeles',
#     country: 'United States of America',
#     description: 'Actor',
#     gender: 'Male',
#     date_of_birth: Date.parse("Jul 3 1962"),
#     photo: "https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg",
#     rate_per_hour: 200
#   },
#   {
#     first_name: 'Hillary',
#     last_name: 'Clinton',
#     city: 'Washington DC',
#     country: 'United States of America',
#     description: 'Politician',
#     gender: 'Female',
#     date_of_birth: Date.parse("Oct 26 1947"),
#     photo: "https://upload.wikimedia.org/wikipedia/commons/2/27/Hillary_Clinton_official_Secretary_of_State_portrait_crop.jpg",
#     rate_per_hour: 150
#   }
#   ]

# Celebrity.create!(CELEBRITIES)
# puts "Created #{Celebrity.count} celebrities"

# puts "----------------------"
# puts "Seeding Users..."

# USERS = [
#   {
#     email: 'ggz@gmail.com',
#     password: '123456',
#     first_name: 'Gabriel',
#     last_name: 'GZ',
#     date_of_birth: Date.parse("Jan 11 1992"),
#     description: '???',
#     gender: 'Male',
#     photo: 'https://www.fodors.com/wp-content/uploads/2017/12/Tasmanian-Devils-hero.jpg'
#   },
#   {
#     email: 'susan@gmail.com',
#     password: 'password',
#     first_name: 'Pepito',
#     last_name: 'Fulano',
#     date_of_birth: Date.parse("May 23 1989"),
#   }
# ]

# User.create!(USERS)
# puts "Created #{User.count} users"

# puts "----------------------"
# puts "Seeding Bookings..."

# BOOKINGS = [
#   {
#     status: 'Pending',
#     duration: 3,
#     rate_per_hour: Celebrity.first[:rate_per_hour],
#     user_id: User.first[:id],
#     celebrity_id: Celebrity.first[:id],
#     booking_date: Date.parse("08 June 2019")
#   }
# ]

# Booking.create!(BOOKINGS)
# puts "Created #{Booking.count} bookings"
# puts "----------------------"

# puts "Seeding Tags..."

# 10.times do
#   Tag.create!(
#     name: Faker::Demographic.race
#   )
# end

# TAGS = [
#   {name: 'ginger'},
#   {name: 'english'},
#   {name: 'soccer player'},
#   {name: 'ex-president'},
#   {name: 'cat person'},
#   {name: 'singer'},
#   {name: 'actress'},
#   {name: 'fashion'},
#   {name: 'luxury'},
#   {name: 'hollywood'},
#   {name: 'model'},
#   {name: 'famous'},
#   {name: 'beautiful'}
# ]

# Tag.create!(TAGS)

# puts "Created #{Tag.count} tags"
# puts "----------------------"

# puts "Finished"


# Jimie
# https://media.licdn.com/dms/image/C5603AQEwHTecg3uVOQ/profile-displayphoto-shrink_800_800/0?e=1564617600&v=beta&t=sI_IQbmTic9tVEGJFGzDicLEdrSeJsApSpum3-ly9qM

puts "Seeding Celebrities..."

CELEBRITIES = [
  {
    first_name: 'Lionel',
    last_name: 'Messi',
    city: 'Rosario',
    country: 'Argentina',
    description: 'Soccer player',
    gender: 'Male',
    date_of_birth: Date.parse("Jun 27 1987"),
    photo: "https://images.ole.com.ar/2019/05/08/F0TDNJzJC_1256x620__1.jpg",
    rate_per_hour: 50000
  },
  {
    first_name: 'Tom',
    last_name: 'Hanks',
    city: 'California',
    country: 'United States of America',
    description: 'Actor',
    gender: 'Male',
    date_of_birth: Date.parse("Jul 9 1956"),
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/98/Tom_Hanks_face.jpg",
    rate_per_hour: 940
  },
   {
    first_name: 'Iggy',
    last_name: 'Pop',
    city: 'Michigan',
    country: 'United States of America',
    description: 'Rock star',
    gender: 'Male',
    date_of_birth: Date.parse("Apr 21 1947"),
    photo: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/08/Death-Valley-Girls-iggy-pop-burger-video-920x584.jpg",
    rate_per_hour: 25
  },
  {
    first_name: 'John',
    last_name: 'Lennon',
    city: 'Liverpool',
    country: 'United Kingdom',
    description: 'Musician',
    gender: 'Male',
    date_of_birth: Date.parse("Oct 9 1940"),
    photo: 'http://www.danpontefract.com/wp-content/uploads/2018/09/johnlennon.jpg',
    rate_per_hour: 1040
  },
  {
    first_name: 'Gisele',
    last_name: 'Bündchen',
    city: 'Horizontina',
    country: 'Brazil',
    description: 'Model',
    gender: 'Female',
    date_of_birth: Date.parse("Jul 20 1980"),
    photo: "https://cdn.images.express.co.uk/img/dynamic/79/590x/454830_1.jpg",
    rate_per_hour: 4000
  },
  {
    first_name: 'Will',
    last_name: 'Smith',
    city: 'Philadelphia',
    country: 'United States of America',
    description: 'Actor, singer?',
    gender: 'Male',
    date_of_birth: Date.parse("Sep 25 1968"),
    photo: "https://static.t13.cl/images/sizes/1200x675/1558963527-0631150870469.jpg",
    rate_per_hour: 100
  },
  {
    first_name: 'Denzel',
    last_name: 'Washington',
    city: 'New York',
    country: 'United States of America',
    description: 'Actor',
    gender: 'Male',
    date_of_birth: Date.parse("Dic 25 1968"),
    photo: 'https://www.hola.com/imagenes/biografias/denzel-washington/83915-denzel2.jpg',
    rate_per_hour: 100
  },
  {
    first_name: 'PSY',
    last_name: '.',
    city: 'Seoul',
    country: 'South Korea',
    description: 'Singer',
    gender: 'Male',
    date_of_birth: Date.parse("Dic 25 1968"),
    photo: "https://vignette.wikia.nocookie.net/youtube/images/c/c0/Officialpsy.jpg/revision/latest?cb=20181002141527",
    rate_per_hour: 100
  },
  ]

Celebrity.create!(CELEBRITIES)
puts "Created #{Celebrity.count} celebrities"







