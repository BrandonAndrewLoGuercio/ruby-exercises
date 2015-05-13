class Movies
  @@people_count = 0

  def initialize(title, year, rating)
    @title = title
    @year = year
    @rating = rating

    @@people_count += 1
  end

  def self.number_of_instances
    return @@people_count
  end
end

thrashin = Movies.new("Thrashin'", 1986, 7.6)
airborne = Movies.new("Airborne", 1993, 7.8)



puts thrashin.instances

puts "Number of Movie instances: #{Movies.number_of_instances}"
