#class for Model1 goes here
#Feel free to change the name of the class
#Student goes to many classrooms, and has many teachers 
#Student can pick class
class Student
  attr_reader :name
  attr_accessor :grade

  @@all = []
  def initialize(name, grade)
    @name = name
    @grade = grade
    @@all << self
  end

  def new_classroom(location,teacher)
    classroom = Classroom.new(location, teacher, self)
  end

  def classrooms
    Classroom.all.select do |classroom|
      classroom.student == self
    end
  end

  def teachers
    classrooms.map {|classroom| classroom.teacher}
  end

  def subjects
    teachers.map {|teacher| teacher.subject}
  end

  def self.all
    @@all
  end

end
