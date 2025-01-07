# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all
Review.destroy_all

restaurants = Restaurant.create!([
  { name: "Sushi Place", address: "123 Sushi St", category: "japanese" },
  { name: "Pasta House", address: "456 Pasta Rd", category: "italian" },
  { name: "Baguette Bakery", address: "789 Baguette Blvd", category: "french" }
])

reviews = Review.create!([
  { content: "Great sushi!", rating: 5, restaurant: restaurants[0] },
  { content: "Delicious pasta!", rating: 4, restaurant: restaurants[1] },
  { content: "Amazing baguettes!", rating: 5, restaurant: restaurants[2] }
])
