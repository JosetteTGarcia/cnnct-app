# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_users = User.create([
    { 
        username: 'firstTestAccount',
        img: 'https://i.imgur.com/ypKbcbG.jpg',
        first_name: 'Oliver',
        last_name: 'Jones',
        state: 'Texas',
        city: 'Austin',
        bio: 'craft beers and fetch',
    }, 
    { 
        username: 'secondTestAccount',
        img: 'https://i.imgur.com/rFSYtVy.jpg',
        first_name: 'Frankenstein',
        last_name: 'Hilton',
        state: 'Texas',
        city: 'Corpus Christi',
        bio: 'Not a monster, just wanna bite',
    }, 
    { 
        username: 'thirdTestAccount',
        img: 'https://i.imgur.com/jSQpKbM.jpg',
        first_name: 'Samson',
        last_name: 'Jones',
        state: 'Texas',
        city: 'Lewisville',
        bio: 'Black coffee, craft beers, and jazz.',
    }
])