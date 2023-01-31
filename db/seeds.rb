# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email:"gedeon@gmail.com", password:"1234", password_confirmation:"1234" )

1.times do |post|
    Post.create(title:"Ruby on Rails", description:"Ruby on Rails is a server-side web application framework written in Ruby under the MIT License. Rails is a model_view_controller framework, providing default structures for a database, a web service, and web pages.",
    name:"Yukiro", published_at: Date.today, user_id: User.first.id)
end

