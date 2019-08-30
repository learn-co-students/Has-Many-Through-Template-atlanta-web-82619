#class for Model2 goes here
#Feel free to change the name of the class
class Magazine

    attr_accessor :name, :genre

    @@all = []

    def initialize(name, genre)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def self.browse_magazines(genre)
        all_in_genre = []
        Magazine.all.each do |magazine|
            if magazine.genre == genre
                all_in_genre << magazine.name
            end
        end
        all_in_genre
    end

end
