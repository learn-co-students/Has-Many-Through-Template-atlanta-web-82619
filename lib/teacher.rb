class Teacher

  attr_accessor :name, :age, :field_of_study
  @@all = []

  def initialize(name, field_of_study, age)
    @name = name
    @field_of_study = field_of_study
    @age = age

    @@all << self
  end

  def self.all
    @@all
  end

  def new_class(student, room_number, has_windows)
    Classroom.new(self, student, room_number, has_windows)
  end

end
