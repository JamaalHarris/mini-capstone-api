# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Supplier.create!(name: "Cooca-Coola", email: "Cooca-Coola@test.com", phone_number: "7731234567")

Supplier.create!(name: "PeepsiCo", email: "Email@PeepsiCo.com", phone_number: "3126661234")

Supplier.create!(name: "Phanta", email: "DrinkPhanta@Phanta.com", phone_number: "1230000001")

product1 = Product.create!(name: "coffee", price: 1, description: "Sumatra blend Aribica dark roast", supplier_id: 1, inventory: 99, color: "brown")

product2 = Product.create!(name: "tea", price: 2, description: "grean tea from China", supplier_id: 1, inventory: 98, color: "green")

product3 = Product.create!(name: "soda", price: 3, description: "refreshing beverage", supplier_id: 2, inventory: 90, color: "clear")

Image.create(url: "https://images.unsplash.com/photo-1655604646151-8edc8746bb01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJlc2NhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", product_id: 3)

Image.create(url: "https://www.aicr.org/wp-content/uploads/2020/06/peppermint-tea-on-teacup-1417945.jpg", product_id: 2)

Image.create(url: "https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg", product_id: 1)
