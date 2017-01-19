require 'csv'

File.open "commands", "w" do |f|
  CSV.foreach "new_users.csv" do |first_name, last_name, email|
    # Generate the SQL to add this user to the database and write it to the file
    f.puts "INSERT INTO users (first_name, last_name, email) VALUES('#{first_name}', '#{last_name}', '#{email}');"
  end
end

puts "Wrote SQL queries to the file `commands`"
puts "You can copy it to your pasteboard by typing `cat commands | pbcopy`"
