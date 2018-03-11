class TeacherHasCourse < ApplicationRecord
  belongs_to :teacher, required: false
  belongs_to :course, required: false
end
