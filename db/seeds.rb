# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

Product.destroy_all

require 'faker'

328.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 5.0..500.0),
    quantity: Faker::Number.between(from: 1, to: 100),
    in_stock: Faker::Boolean.boolean,
    description: Faker::Lorem.paragraph(sentence_count: 8),
    part_number: Faker::Alphanumeric.alphanumeric(number: 8).upcase,
    tags: Faker::Marketing.buzzwords,
    supplier_id: "SUP-#{Faker::Number.number(digits: 5)}"

  )
end

puts "Created 328 fake products!"
#   end
