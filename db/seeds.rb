# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# db/seeds.rb
holly = User.create!(
  email: 'h@holly.com',
  password: '123',
  password_confirmation: '123'
)

Contact.create!(
  [
    {
      name: 'Eric Klose',
      how_met: 'Renaissance festival trip at Bates College',
      frequency: 30,
      priority: 90,
      last_contacted: '2019-19-07',
      user: holly
    },
    {
      name: 'Julie Pelan',
      how_met: 'Maid of Honor at my wedding',
      frequency: 270,
      priority: 25,
      last_contacted: '2019-19-01',
      user: holly
    }
  ]
)
