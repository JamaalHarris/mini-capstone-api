# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product1 = Product.create(name: "coffee", price: 1, image_url:"https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg", description: "Sumatra blend Aribica dark roast")

product2 = Product.create(name: "tea", price 2, image_url:"https://www.aicr.org/wp-content/uploads/2020/06/peppermint-tea-on-teacup-1417945.jpg", description: "grean tea from China")
