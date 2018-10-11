# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "johndoe", password: "abc123", first_name: "john", last_name:"doe", nickname:"johnny", description:"I love Green Tea!", phone_number:"123-321-1234", street:"123 John Street", city: "Atlantis", state:"NY", zip_code:"07611")

User.create(username: "janedoe", password: "abc123", first_name: "jane", last_name:"doe", nickname:"janey", description:"I love Black Tea!", phone_number:"123-321-1234", street:"123 Jane Street", city: "Atlantis", state:"NY", zip_code:"07611")
