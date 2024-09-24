# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create!([
  { name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french" },
  { name: "Sushi Samba", address: "75001 Paris", phone_number: "0987654321", category: "japanese" },
  { name: "Pasta La Vista", address: "Rome, Italy", phone_number: "1234567890", category: "italian" },
  { name: "The Great Wall", address: "Beijing, China", phone_number: "2345678901", category: "chinese" },
  { name: "Belgian Waffle House", address: "Brussels, Belgium", phone_number: "3456789012", category: "belgian" }
])
