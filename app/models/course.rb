class Course < ApplicationRecord
  has_many :career_has_courses
  has_many :careers, through: :career_has_courses
  has_many :teacher_has_courses
  has_many :teachers, through: :teacher_has_courses
  has_many :course_has_themes
  has_many :themes, through: :course_has_themes
end
