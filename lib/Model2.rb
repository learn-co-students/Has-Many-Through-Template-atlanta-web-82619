class Student
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_study_session(subject, teacher)
        StudySession.new(subject, self, teacher)
    end

    def study_sessions_as_student
        StudySession.all.select {|s| s.student == self}
    end

    def study_sessions_as_teacher
        StudySession.all.select {|s| s.teacher == self}
    end

    def subjects_learned
        self.study_sessions_as_student.map {|s| s.subject}
    end

    def subjects_taught
        self.study_sessions_as_teacher.map {|s| s.subject}
    end

    def teachers
        self.study_sessions_as_student.map {|s| s.teacher}
    end

    def students
        self.study_sessions_as_teacher.map {|s| s.student}
    end

    def students_names
        self.students.map {|s| s.name}
    end

    def teachers_names
        self.teachers.map {|s| s.name}
    end

    def self.all
        @@all
    end
end