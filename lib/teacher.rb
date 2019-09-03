class Teacher
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_new_student(student)
        Classroom.new(self, student)
    end

    def students
        classrooms.map { |s| s.student }
    end

    def num_students
        self.students.count
    end
end
