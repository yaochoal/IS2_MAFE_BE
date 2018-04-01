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
  #ver profesores de un curso id
  def self.get_idteachers(params)
   		self.joins(:teachers).select('courses.id,courses.name as course_name, teachers.id as teacher_id, teachers.name as teacher_name').where(id: params)
  end
  #ver todos los cursos y sus profesores asignados
  def self.get_allteachers
   		self.joins(:teachers).select('courses.id ,courses.name as course_name,teachers.id as teacher_id, teachers.name as teacher_name')
  end
  #ver los temas de apoyo de un curso id
  def self.get_idthemes(params)
   		self.joins(:themes).select('courses.id,courses.name as course_name, themes.id as teacher_id, themes.name as theme_name').where(id: params)
  end
  #ver todos los cursos y sus temas de apoyo
  def self.get_allthemes
   		self.joins(:themes).select('courses.id ,courses.name as course_name,themes.id as teacher_id, themes.name as theme_name')
  end
  #ver las carreras de un curso id
  def self.get_idcareers(params)
   		self.joins(:careers).select('courses.id,courses.name as course_name, careers.id as teacher_id, careers.name as career_name').where(id: params)
  end
  #ver todos los carreras y todos sus cursos
  def self.get_allcareers
   		self.joins(:careers).select('courses.id ,courses.name as course_name,careers.id as teacher_id, careers.name as career_name')
  end
  scope :search, ->(params){where(name: params)}
end
