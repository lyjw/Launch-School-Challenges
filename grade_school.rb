class School
    attr_accessor :school
    
    def initialize
        @school = {}
    end
    
    def grades
        school.keys 
    end
    
    def check_grade(grade)
        school[grade] = [] if !grades.include?(grade)
    end
    
    def add(name, grade)
        check_grade(grade)
        school[grade] << name
    end
 
    def grade(grade)
        check_grade(grade)
        school[grade]
    end
    
    def sorted_school
        school.each { |_,students| students.sort! }
        school.sort_by { |grade,_| grade }
    end
    
    def to_h
        sorted_school.to_h
    end
end