#class for Model3 goes here
#Feel free to change the name of the class
#Classroom has many students and is used by many teachers
#Students use one classroom at a time & teachers use one classroom at a time
class Classroom
  attr_accessor :location, :teacher, :student

  @@all = []
   
  def initialize(location, teacher, student)
    @location = location
    @teacher = teacher
    @student = student
    @@all << self
  end

  def self.all
    @@all
  end

end
