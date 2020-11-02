class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        sorted = {}
        @roster.each do |grade, students_array|
            sorted[grade] = students_array.sort
        end
        sorted
    end
end
