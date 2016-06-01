# This file should contain all the record creation needed to seed the database
# with its default values. The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Seeding User'
User.create(
  email: 'me@evansparkman.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
)

puts 'Seeding Vehicle'
Vehicle.create(year: '2014',
               make: 'Dodge',
               model: 'RAM 1500',
               price: '27500',
               vin: '1C6RR7LG9ES317874',
               mileage: '28000',
               doors: '4',
               engine: '5.7L Hemi',
               transmission: 'Automatic',
               int_color: 'Gray',
               ext_color: 'Black',
               warranty: false,
               description: 'Refreshed last year, the Ram 1500 pickup became the
               2013 Motor Trend Truck of the Year. While last year’s winner is
               available with two engines, two transmissions, and in rear- or
               four-wheel-drive, a new turbodiesel option is available for 2014.
               A 304-hp 3.6-liter Pentastar V-6 with 269 lb-ft of torque mated
               to an eight-speed automatic serves as the Ram 1500’s base engine.
               The 395-hp, 407 lb-ft 5.7-liter Hemi V-8 returns with either a
               six-speed or eight-speed automatic transmission. A new
               turbodiesel 240-hp 3.0-liter EcoDiesel V-6 produces 420 lb-ft
               comes solely with the eight-speed automatic. Rear-drive Ram 1500s
               with the Pentastar V-6 are EPA-rated 17/25 mpg city/highway,
               while four-wheel-drive model Pentastars are rated 16/23 mpg.
               Hemi engines with the six-speed automatic and rear-drive and
               four-wheel-drive are rated 14/20 mpg and 13/19 mpg, respectively.
               The eight-speed automatic boosts Hemi fuel economy to 15/22 mpg
               for rear-drive and 15/21 mpg for four-wheel-drive models.
               Fuel economy for the EcoDiesel hasn’t been rated.',
               sold: false,
               used: true,
               new: false,
               featured: true)

puts 'Seeding Announcements'
Announcement.create(title: "We've Moved!", body: "We have moved to a new location! To better server our customers we are now located at:

5610 South HWY 27
Somerset, KY 42501

We are conveniently located next door to the John Deere Dealership.")
