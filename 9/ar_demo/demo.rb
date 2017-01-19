require 'sqlite3'
require 'active_record'

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'demo.sqlite3'
)

class Actor < ActiveRecord::Base

  has_many :appearances
  has_many :movies, through: :appearances


  def play_part
    puts "Do or do not, there is no try"
  end

end

class Director < ActiveRecord::Base

  has_many :movies

end

class Movie < ActiveRecord::Base

  belongs_to :director
  has_many :appearances
  has_many :actors, through: :appearances

end

class Appearance < ActiveRecord::Base

  belongs_to :movie
  belongs_to :actor

end

puts "Question"

puts "Answer: #{Actor.count}"