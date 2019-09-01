require "pry"
require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"

brit = Teacher.new("Britton Butler")
hanaa = Teacher.new("Hanaa Sadoqi")
princeton = Teacher.new("Princeton Rose")

nick = Student.new("Nick Lunn")
justina = Student.new("Justina Kuchta")
andrea = Student.new("Andrea T")
andrew = Student.new("Andrew Kim")
danny = Student.new("Danny Rooker")

ss1 = StudySession.new("Ruby", nick, brit)
ss2 = StudySession.new("Pokemon", brit, princeton)
ss3 = StudySession.new("JavaScript", justina, hanaa)
ss4 = StudySession.new("Ruby", andrew, brit)
ss5 = StudySession.new("Ruby", danny, hanaa)
brit.new_study_session("Life", hanaa)
princeton.new_study_session("Pokemon", nick)
nick.new_study_session("Git", andrew)
ss6 = StudySession.new("Smash", brit, nick)

binding.pry