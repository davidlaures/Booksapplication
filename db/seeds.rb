# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(titre: "Bande dessinée", description: "Livres jeunesse")
Book.create(couverture: "Garfield", titre: "Garfield fait le poids", description: "Garfield le chat orange", category_id: c1.id)

c2 = Category.create(titre: "Bande dessinée", description: "Livres jeunesse")
Book.create(couverture: "https://www.marchedulivre.qc.ca/images/9782896600977.jpg", titre: "Garfield fait le poids", description: "Garfield le chat orange", category_id: c2.id)

c3 = Category.create(titre: "Bande dessinée", description: "Livres jeunesse")
Book.create(couverture: "couve", titre: "Garfi", description: "Garf", category_id: c3.id)