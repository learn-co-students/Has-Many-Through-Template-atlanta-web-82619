#class for Model1 goes here
#Feel free to change the name of the class
class Club
    attr_reader :name
    attr_accessor :interest

    @@all = []

    def initialize (name, interest = nil)
        @name = name
        @interest = interest
        @@all.push(self)
    end

    def self.all
        @@all
    end
    
    def enlist_member (student)
        Membership.new(self, student)
    end

    def memberships
        Membership.all.select {|memb| memb.club == self}
    end

    def students
        self.memberships.map {|memb| memb.student}
    end
end
