# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all 

user1 = User.create(username: 'dom', email: 'hola@me.com')
user2 = User.create(username: 'eric', email: 'pescado@me.com')
user3 = User.create(username: 'rose', email: 'beuno@me.com')

Artwork.create(title: 'cat', image_url: 'https://bit.ly/2o2301q', artist_id: user1.id)
Artwork.create(title: 'corgi', image_url: 'https://bit.ly/2o5601q', artist_id: user2.id)
Artwork.create(title: 'bennie', image_url: 'https://bit.ly/2o7801q', artist_id: user3.id)


  