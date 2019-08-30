require 'pry'

require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"

martha = Teacher.new("Martha", "English")
charles = Teacher.new("Charles", "Math")
jorge = Teacher.new("Jorge", "Phys Ed")
lisa = Teacher.new("Lisa", "Art")

cathy = Student.new("Cathy", 10)
suze = Student.new("Suze", 11)
meryl = Student.new("Meryl", 12)
victor = Student.new("Victor", 11)

cathy.new_classroom("Rooftop", martha)
cathy.new_classroom("Turing", lisa)
cathy.new_classroom("Gym", jorge)

suze.new_classroom("Borg", martha)
suze.new_classroom("Track", jorge)
suze.new_classroom("Turing", charles)

victor.new_classroom("Borg", lisa)
victor.new_classroom("Turing", charles)
victor.new_classroom("Rooftop", jorge)

# binding.pry