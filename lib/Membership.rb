#class for Model3 goes here
#Feel free to change the name of the class
class Membership
    attr_reader :club, :student

    @@all = []

    def initialize (club, student)
        @club = club
        @student = student
        @@all.push(self)
    end

    def self.all
        @@all
    end
end
