#class for Model3 goes here
#Feel free to change the name of the class
class Subscriber

    attr_accessor :name, :subscription

    @@all = []

    def initialize(name)
        @name = name
        @subscription = subscription
        @@all << self
    end

    def self.all
        @@all
    end

    def new_subscription(magazine)
        Subscription.new(magazine, self, term)
    end

    def subscriptions
        Subscription.all.select {|sub| sub.subscriber == self}
    end

    def magazines
        my_magazines = []
        Subscription.all.each do |sub|
            if sub.subscriber == self
                my_magazines << sub.magazine
            end
        end
        my_magazines
    end

    def cancel_subscription(magazine)
        Subscription.all.each do |sub|
            if sub.magazine == magazine && sub.subscriber == self
                Subscription.all.delete(self.subscription)
                sub.status = "cancelled"
            end
        end
    end 
end
