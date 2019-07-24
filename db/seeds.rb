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
      last_contacted: Time.parse("Jul 8 2019 10:19"),
      user: holly
    },
    {
      name: 'Julie Pelan',
      how_met: 'Maid of Honor at my wedding',
      frequency: 270,
      priority: 25,
      last_contacted: Time.parse("Jan 8 2019 10:19"),
      user: holly
    },
    {
      name: 'Eliza Kano-Bower',
      how_met: 'running club friend',
      frequency: 120,
      priority: 25,
      last_contacted: Time.parse("May 8 2019 10:19"),
      user: holly
    },
    {
      name: 'It has been way too long',
      how_met: 'Maid of Honor at my wedding',
      frequency: 10,
      priority: 25,
      last_contacted: Time.parse("May 8 2019 10:19"),
      user: holly
    }
  ]
)
