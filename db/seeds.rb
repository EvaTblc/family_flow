# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Task.create(user: User.find(1), category: "RDV", title: "RDV Sage Femme", description: "RDV du 4e mois, on écoute le coeur du bébé!", start: Date.new(2024, 10, 23), end: Date.new(2024, 10, 23), recurrence: "no")
