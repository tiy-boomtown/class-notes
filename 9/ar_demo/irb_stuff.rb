Actor.new
brad = Actor.find(4)
brad.name
Actor.methods
Actor.where("name LIKE '%T%'")
Actor.where("name LIKE '%T%'").count
nicole = Actor.new
nicole.name = "Nicole Kidman"
nicole.salary = 7500000
nicole
other = Actor.first
nicole.salary = 75000000000
nicole.persisted?
nicole.dirty?
nicole.salary = 25000000000
nicole.changes
nicole.salary = 250000
nicole.save
tom = Actor.find(3)
tom = Actor.where("name = 'Tom Cruise'")
tom.each do |act|
puts act.name
end
tom = Actor.where("name = 'Tom Cruise'").first
toms = Actor.where("name LIKE 'Tom%'")
toms[0]
toms[1]
toms = Actor.where("name LIKE 'Tom%'").first
toms = Actor.where("name LIKE 'Tom%'").last
toms.salary
toms.salary.class
toms.salary / 1000
toms.salary / 100
nicole = Actor.last
nicole.play_part
nicole.name
hardy = Actor.new(name: "Tom Hardy", salary: 12000)
hardy.save
require_relative 'demo.rb'
Actor.all
Actor.last
Actor.first
Actor.second
Actor.third
Actor.fourty_second
Actor.where("name LIKE 'T%'")
Actor.where("name LIKE 'T%'").count
Actor.where(name: "Tom Cruise")
Actor.where(name: "Tom Cruise").first
Actor.find_by(name: "Tom Cruise")
Actor.sum(:salary)
Actor.avg(:salary)
Actor.average(:salary)
Actor.where("name LIKE 'T%'").sum(:salary)
Actor.where("name LIKE 'T%'").where("salary < 1000000000").count
Actor.where("name LIKE 'T%'").where("salary < 10000000").count
Actor.where("name LIKE 'T%'").where("salary < ?", 10000000).count
Actor.select("name").all
Actor.pluck(:name)
Actor.where("name LIKE 'T%'").pluck(:name)
liam = Actor.new
liam.name = "Liam Neeson"
liam.salary = 25000
liam
liam.persisted?
liam.save
trent = Actor.new(name: "Trent Reznor", salary: 12000)
trent.save
sally = Actor.create(name: "Sally Fields", salary: 30000)
Actor.count
sally.salary = 36000
sally.save
sally.update(salary: 420000)
sally
Director.count
Director.first
Movie.last
film.director
dave = Director.first
dave.movies
dave.movies.count
Appearance.first
appear = Appearance.first
appear.actor
appear = Appearance.last
puts "SELECT * FROM movies WHERE id = #{appear.movie_id}"
appear.movie
film
puts "SELECT * FROM appearances WHERE movie_id = #{film.id}"
require_relative 'demo'
film = Movie.last
film.appearances
film.actors
film.actors.first
film.actors.first.films
film.actors.first.movies
actor = Actor.first
actor.movies
actor.movies.count
puts "SELECT * FROM actors INNER JOIN appearances ON appearances.actor_id = actors.id WHERE appearances.movie_id = #{film.id}"
Appearance.group(:actor_id)
Appearance.joins(:actors).group("actors.id")
Appearance.joins(:actor).group("actors.id")
exit
