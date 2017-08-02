# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
House.destroy_all



houses = House.create([
  {name:"Stark" , text: "winter is coming " evil:false},
  {name:"Lannister", text: "hear me roar", evil:true},
  {name:"Lannister", text: "hear me roar", evil:true},
  {name:"Nights watch", text: "sword in the darkness", evil:true},
  {name:"Targaryen", text: "fire and blood", evil: false},
  {name:"House Baratheon", text: "Our is the fury", evil:true}
])







y1 = Character.create(name:"person1", text: "hello1", house: houses[0])
y1 = Character.create(name:"person2", text: "hello2", house: houses[1])
y1 = Character.create(name:"person3", text: "hello3", house: houses[2])
y1 = Character.create(name:"person4", text: "hello4", house: houses[3])
y1 = Character.create(name:"person5", text: "hello5", house: houses[4])
y1 = Character.create(name:"person6", text: "hello6", house: houses[5])
y1 = Character.create(name:"person7", text: "hello7", house: houses[1])
y1 = Character.create(name:"person8", text: "hello8", house: houses[2])
y1 = Character.create(name:"person9", text: "hello9", house: houses[3])
