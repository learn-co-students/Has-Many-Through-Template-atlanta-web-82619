class StudySession
    attr_reader :subject , :student , :teacher
    attr_accessor :status
    @@all = []
    def initialize(subject, student, teacher)
        @subject = subject
        @student = student
        @teacher = teacher
        @status = 'scheduled'
        @@all << self
    end
    def execute_study
        if self.status == 'scheduled'
            @status = 'completed'
        end
    end
    def self.all
        @@all
    end
end