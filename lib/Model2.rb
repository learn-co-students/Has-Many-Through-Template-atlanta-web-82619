#class for Model2 goes here
#Feel free to change the name of the class
#Teacher has many students through classroom
#Teacher uses many classrooms
class Teacher
  attr_reader :name, :subject
  @@all = []
  def initialize(name, subject)
    @name = name
    @subject = subject
    @@all << self
  end

  def new_classroom(location, student)
    classroom = Classroom.new(location, self, student)

  end

  def classrooms
    Classroom.all.select do |classroom|
      classroom.teacher == self
    end
  end

  def students
    classrooms.map do |classroom|
      classroom.student
    end
  end

  def number_of_students
    students.size
  end

  def name_of_students
    students.map {|student| student.name}
  end

  def students_in_grade(grade)
    students.select {|student| student.grade == grade}
  end

end
