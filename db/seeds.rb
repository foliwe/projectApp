# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Clients
# t.string "name"
# t.string "address"
# t.string "email"
# t.string "phone"
# t.bigint "project_id"op
Task.destroy_all
Client.destroy_all
Project.destroy_all
# Group.destroy_all
#
# group_ids = []
# group_ids << Group.create(name: "Client").id
# group_ids << Group.create(name: "Friends").id
# group_ids << Group.create(name: "Family").id
#
#  p "#{group_ids.count} groups created"
# group_count = group_ids.length
# number_of_contacts = 20
# contacts = []
#
# number_of_contacts.times do
#     new_contact = {
#       name: Faker::Name.name,
#       email: Faker::Internet.email,
#       phone: Faker::PhoneNumber.cell_phone,
#       address: "#{Faker::Address.street_address} #{Faker::Address.city}",
#       group_id: group_ids[Random.rand(0...group_count)]
#     }
#     contacts << new_contact
# end
# Contact.create!(contacts)
#  p "#{number_of_contacts} contacts created"

 client_1 = Client.create!(name: "foliwe",email:"foliwe@example.com",phone: "+441234567")
 client_2 = Client.create!(name: "fossung",email:"fossung@example.com",phone: "+23743647576")

#projects
# t.string "name"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.float "amount", default: 0.0
# t.bigint "client_id"
# t.text "description"
# t.float "amount_paid", default: 0.0
# t.index ["client_id"], name: "index_projects_on_client_i
  project_1 = Project.create!(name:"www.example.com",amount:542,client_id:client_1.id,description:"wordpress website")
  project_2 = Project.create!(name:"Tac Branding project",amount:2500,client_id:client_2.id,description:"Branding for tac")
  # task1 = Task.create!(name: "Add login ",project_id:project_1.id)
  # task2 = Task.create!(name: "add email function ",project_id:project_1.id)
