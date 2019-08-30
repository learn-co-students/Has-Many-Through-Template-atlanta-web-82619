class Student

  attr_accessor :name, :gender, :age
  @@all = []

  def initialize(name, gender, age)
    @name = name
    @gender = gender
    @age = age

    @@all << self
  end

  def self.all
    @@all
  end

  def new_class(teacher, room_number, has_windows)
    Classroom.new(self, teacher, room_number, has_windows)
  end

  def classes
    Classroom.all.select do | single_class |
      single_class.student == self
    end
  end

end
