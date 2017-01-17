# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one
def pilot_for_planet(planet)
  pilots = {
    'Earth'  => 'Fry',
    'Mars'   => 'Amy',
    'Uranus' => 'Bender'
  }
  if pilots[planet]
    pilots[planet]
  else
    'Leela'
  end
end

require 'csv'

# How much money did we make this week? (The "Money" column represents the per-crate price)
revenue = 0
CSV.foreach '/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true do |row|
  trip_revenue = row['Crates'].to_i * row['Money'].to_i
  revenue += trip_revenue
end
puts revenue

# How much of a bonus did each employee get? (Each pilot gets a bonus of 5% of the shipment value)
bonuses = {
  'Fry'    => 0,
  'Amy'    => 0,
  'Bender' => 0,
  'Leela'  => 0
}
CSV.foreach '/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true do |row|
  trip_revenue = row['Crates'].to_i * row['Money'].to_i
  pilot = pilot_for_planet row['Destination']

  bonuses[pilot] += trip_revenue * 0.05
end
puts bonuses

# How many trips did each employee pilot?
trips = {}
CSV.foreach '/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true do |row|
  pilot = pilot_for_planet row['Destination']
  if trips[pilot] == nil
    trips[pilot] = 0
  end
  trips[pilot] += 1
end
puts trips

# How much money did we make broken down by planet? ie.. how much did we make shipping to Earth? Mars? Saturn? etc.
revenues = Hash.new 0
CSV.foreach '/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true do |row|
  trip_revenue = row['Crates'].to_i * row['Money'].to_i
  planet = row['Destination']
  revenues[planet] += trip_revenue
end
puts revenues
