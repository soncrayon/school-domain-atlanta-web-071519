require 'pry'

class School
    
attr_accessor :roster 
    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.has_key?(grade) 
            @roster[grade] << student
        else
            @roster.merge!(grade=>[student])
        end 
    end 

    def grade(grade)
        if @roster.has_key?(grade)
            @roster[grade]
        end 
    end

    def sort
        keys_array = @roster.collect{|k,v| k}
        alphabetized_students = @roster.map{|k,v|v.sort}
        keys_array.zip(alphabetized_students).to_h 
    end

end# code here!