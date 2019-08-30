require_relative "lib/subscription.rb"
require_relative "lib/subscriber.rb"
require_relative "lib/magazine.rb"

rolling_stone = Magazine.new("Rolling Stone", "Music")
jazz_times = Magazine.new("JazzTimes", "Music")

pam = Subscriber.new("Pam")
jim = Subscriber.new("Jim")

pam1 = Subscription.new(rolling_stone, pam)
pam2 = Subscription.new(jazz_times, pam)

#puts pam1
#puts pam2

#puts pam.name
#puts jim

#puts Subscription.all
#puts Magazine.all
#puts Subscriber.all
#puts pam.subscriptions
#puts Magazine.browse_magazines("Music")
puts pam.cancel_subscription(rolling_stone)
puts pam1.status

