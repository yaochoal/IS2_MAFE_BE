# == Schema Information
#
# Table name: teachers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Teacher < ApplicationRecord
  #asosiacion de profesores a materias
  has_many :teacher_has_courses
  has_many :courses, through: :teacher_has_courses
  #asosiacion de profesores a recurso
  has_many :teacher_has_resources
  has_many :resources, through: :teacher_has_resources
  #asosiacion de profesores con comentarios 
  has_many :commentteachers
  #asosiacion de curso con sus calificaciones
  has_many :scoreteachers
  #ver los cursos de apoyo de un profesor id
  def self.get_idcourses(params)
   		self.joins(:courses).select('teachers.id,teachers.name as teacher_name, courses.id as course_id, courses.name as course_name').where(id: params)
  end
  #ver todos los profesores y sus cursos 
  def self.get_allcourses
   		self.joins(:courses).select('teachers.id ,teachers.name as teacher_name,courses.id as course_id, courses.name as course_name')
  end
  scope :search, ->(params){where("name LIKE ?",params)}
end
