class Note < ActiveRecord::Base
    belongs_to :student

    def student_name=(student_name)
        self.student = Student.find_or_create_by(name: student_name)
    end
    
    def student_name
        student.try(:name)
    end

   
end

