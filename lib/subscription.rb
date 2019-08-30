#class for Model1 goes here
#Feel free to change the name of the class
class Subscription

    attr_accessor :term, :status
    attr_reader :magazine, :subscriber

    @@all = []

    def initialize(magazine, subscriber, term=12)
        @magazine = magazine
        @subscriber = subscriber
        @term = term
        @status = "active"
        @@all << self
    end

    def self.all
        @@all
    end

end
