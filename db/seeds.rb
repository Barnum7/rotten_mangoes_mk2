# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		movie = Movie.create( title: 'Age of Ultron', director: 'Joss Whedon', runtime_in_minutes: 141, description: "The Avengers must defeat an AI created by Tony Stark", poster_image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Avengers_Age_of_Ultron.jpg/220px-Avengers_Age_of_Ultron.jpg", release_date: "2015/05/01" )