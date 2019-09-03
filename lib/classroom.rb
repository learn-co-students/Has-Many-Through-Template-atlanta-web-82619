class Classroom
    attr_reader :student, :teacher
    @@all = []

    def initialize(teacher, student)
        @teacher = teacher
        @student = student
        @@all << self
    end

    def self.all
        @@all
    end
end
