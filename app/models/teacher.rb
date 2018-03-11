class Teacher < ApplicationRecord
  has_many :teacher_has_courses
  has_many :courses, through: :teacher_has_courses
  belongs_to :scoreteacher, required: false
end
