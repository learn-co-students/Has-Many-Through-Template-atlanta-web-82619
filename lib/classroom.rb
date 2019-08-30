class Classroom

  attr_accessor :student, :teacher, :room_number, :has_windows
  @@all = []

  def initialize(student, teacher, room_number, has_windows)
    @student = student
    @teacher = teacher
    @room_number = room_number
    @has_windows = has_windows

    @@all << self
  end

  def self.all
    @@all
  end

end
