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
  #asosiacion de carreras a materias
  has_many :career_has_courses
  has_many :careers, through: :career_has_courses
  #asosiacion de profesores a materias
  has_many :teacher_has_courses
  has_many :teachers, through: :teacher_has_courses
  #asosiacion de recursos a materias
  has_many :course_has_resources
  has_many :resources, through: :courses_has_resources
  #asosiacion de curso con comentarios 
  has_many :commentcourses
  #asosiacion de curso con sus calificaciones
  has_many :scorecourses 
  #ver profesores de un curso id
  def self.get_idteachers(params)
   		self.joins(:teachers).select('courses.id,courses.name as course_name, teachers.id as teacher_id, teachers.name as teacher_name').where(id: params)
  end
  #ver todos los cursos y sus profesores asignados
  def self.get_allteachers
   		self.joins(:teachers).select('courses.id ,courses.name as course_name,teachers.id as teacher_id, teachers.name as teacher_name')
  end
  #ver las carreras de un curso id
  def self.get_idcareers(params)
   		self.joins(:careers).select('courses.id,courses.name as course_name, careers.id as teacher_id, careers.name as career_name').where(id: params)
  end
  #ver todos los carreras y todos sus cursos
  def self.get_allcareers
   		self.joins(:careers).select('courses.id ,courses.name as course_name,careers.id as teacher_id, careers.name as career_name')
  end
  scope :search, ->(params){where("name LIKE ?",params)}
end
