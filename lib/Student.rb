#class for Model2 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name
    attr_accessor :interest

    @@all = []

    def initialize (name, interest = [])
        @name = name
        @interest = interest
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def join_club (club)
        Membership.new(club, self)
    end

    def memberships
        Membership.all.select {|memb| memb.student == self}
    end

    def clubs 
        self.memberships.map {|memb| memb.club}
    end

    def interesting_clubs
        Club.all.select{|club| self.interest.include?(club.interest)}
    end
end
