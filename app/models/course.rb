# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ApplicationRecord
  has_many :career_has_courses
  has_many :careers, through: :career_has_courses
  has_many :teacher_has_courses
  has_many :teachers, through: :teacher_has_courses
  has_many :course_has_themes
  has_many :themes, through: :course_has_themes
end
