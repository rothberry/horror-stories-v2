# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "DELETING..."

Story.destroy_all
Chapter.destroy_all

puts "CREATING STORIES>...."
s1 = Story.create!(title: "Why Star Wars was Better in the 70s", author: "Phil")
s2 = Story.create!(title: "Marvel needs to stop", author: "Karter")

puts "CREATING CHAPTERS>...."
s1.chapters.create(content: "They've deviated too far from the originals")
s1.chapters.create(content: "The comics are better than the shows")
s1.chapters.create(content: "Disney ruined everything")
s1.chapters.create(content: "seriously")

puts "DONE!"
