require 'pry'
require_relative "lib/student.rb"
require_relative "lib/teacher.rb"
require_relative "lib/classroom.rb"


s1 = Student.new("Trey")
s2 = Student.new("Alex")
s3 = Student.new("Hanaa")
s4 = Student.new("Dan")

t1 = Teacher.new("Mrs. Fields")
t2 = Teacher.new("Mr. Wright")
t3 = Teacher.new("Mr. Graves")
t4 = Teacher.new("Ms. Sleek")

c1 = Classroom.new(t1, s1)
c5 = Classroom.new(t1, s4)
c2 = Classroom.new(t2, s1)
c3 = Classroom.new(t3, s1)
c4 = Classroom.new(t4, s1)

t1.add_new_student(s2)
t1.add_new_student(s3)
t2.add_new_student(s2)
t2.add_new_student(s3)
t3.add_new_student(s2)
t4.add_new_student(s2)
t3.add_new_student(s4)


binding.pry
