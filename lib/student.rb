class Student
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def join_class(teacher)
        Classroom.new(teacher, self)
    end

    def my_teachers
        Classroom.all.select { |c| c.student == self }.map { |s| s.teacher }
    end
end
