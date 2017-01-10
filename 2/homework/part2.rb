movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

# Create an array of movies with budgets less than 100
# 1
result = []
movies.each do |movie|
  if movie[:budget] < 100
    result.push movie[:title]
  end
end

# 2
result = movies.select { |movie| movie[:budget] < 100 }.map { |movie| movie[:name] }

# Create an array of movies that have Leonardo DiCaprio as a star
# 1
result = []
movies.each do |m|
  if m[:stars].include? "Leonardo DiCaprio"
    result.push m[:title]
  end
end

# 2
result = movies.select { |m| m[:stars].include? "Leonardo DiCaprio" }.map { |m| m[:title] }
