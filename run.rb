require 'pry'

require_relative "lib/Club.rb"
require_relative "lib/Membership.rb"
require_relative "lib/Student.rb"

s1 = Student.new('student_name1')
s2 = Student.new('student_name2')
s3 = Student.new('student_name3')

c1 = Club.new('club_name1')
c2 = Club.new('club_name2')
c3 = Club.new('club_name3')

s1.join_club(c3)
c1.enlist_member(s2)
c2.enlist_member(s3)
s1.join_club(c2)

c1.interest = 'music'
c2.interest = 'games'
c3.interest = 'food'

s1.interest = ['music', 'food']
s2.interest = ['food', 'games']
s3.interest = 'music'

binding.pry
#relationships check out :thumbsup:
