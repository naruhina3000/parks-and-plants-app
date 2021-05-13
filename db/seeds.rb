# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all

Garden.create(name: "My little Garden", banner_url: "https://cdn.britannica.com/42/91642-050-332E5C66/Keukenhof-Gardens-Lisse-Netherlands.jpg")
Garden.create(name: "My pretty Garden", banner_url: "https://www.thespruce.com/thmb/YDnlBqJp9Z0F-dApUJW9ZgZmI2s=/4711x3141/filters:fill(auto,1)/how-to-start-a-garden-from-scratch-2132778-hero-5f6138784a034bad8bf9607ccb18dbed.jpg")


Tag.destroy_all

Tag.create(name: "tropical")
Tag.create(name: "fancy")
Tag.create(name: "green")
Tag.create(name: "colorful")
Tag.create(name: "fresh")