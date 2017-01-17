require 'csv'

def pilot_for_planet(planet)

end

# 4. Revenue per planet
revenues_per_planet = Hash.new(0)
revenues_per_pilot = Hash.new(0)
# { Earth => 100, Moon => 200, ... }
CSV.foreach '/Users/james/Code/class-notes/6/planet_express_logs.csv', headers: true do |row|
  # have `row`
  revenue_for_order = row['Money'].to_i * row['Crates'].to_i
  planet = row['Destination']

  # revenues_per_planet[planet] ||= 0
  revenues_per_planet[planet] += revenue_for_order

  pilot = pilot_for_planet(planet)
  revenues_per_pilot[pilot] += revenue_for_order
end

puts revenues_per_planet