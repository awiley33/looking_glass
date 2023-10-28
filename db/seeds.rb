# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'json'

# Load JSON file
file_path = Rails.root.join('lib', 'cards.json')
data = JSON.parse(File.read(file_path))

# Create records
data.each do |card_data|
  Card.create!(card_data)
end