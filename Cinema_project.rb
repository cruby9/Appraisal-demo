class Cinema
    attr_accessor :name, :location
    def initialize(name, location)
        @name = name
        @location = location
        @movies = []
    end
    def add_movie(movie)
        @movies << movie
        movie.cinema = self
    end
end

class Movie 
    attr_accessor :title, :showtime, :cinema 

      @@all = []

    def initialize(title, showtime)
        @title = title
        @showtime = showtime
        @@all << self 
    end 
end 
p cobble_hill=Cinema.new("Cobble Hill Cinema", "Court St, Brooklyn")
p spider_man=Movie.new("Spider-Man", "9:00")
p cobble_hill.add_movie(spider_man)