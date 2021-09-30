# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



House.destroy_all
house1 = House.create(address: "10000 Santa Monica BLVD")
house2 = House.create(address: "2000 Sunset BLVD")

Person.destroy_all
person1 = Person.create(name: "Bobby Axelrod", house_id: house1.id)
person2 = Person.create(name: "Richard Hendricks", house_id: house2.id)
person3 = Person.create(name: "Dinesh Chugtai", house_id: house2.id)